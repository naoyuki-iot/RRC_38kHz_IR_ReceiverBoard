
//-----グローバル変数-----//
const int HN = 1, LN = 1;  //デバイスNO//送信側に合わせる
const int INpin = A3;   //受信モジュール接続ピン
unsigned long Time;     //時刻を入れる変数
int count_sig = 0;      //信号の合計数を確認する変数
int cut_fin;        //観測を中止するための変数
char Sig_HL[8];       //信号の解析結果を入れる配列
int TXdata = 0;       //同士通信でデータを送るための変数
//----------------------//



//-----関数のプロトタイプ宣言-----//
void TX(int val_data);    //MEGAにデータを送るための関数
void TX_fin();        //送信データをリセットする関数
void Reset_sig();     //受信データをリセットする関数
void observe_data();    //データ部,ストップ部を観測する関数
void analyze();       //2進数の受信データを10進数に変換しMEGAにデータを送信する関数
void SignalCheck();     //信号をシリアルモニターに表示する関数
void treat(int Mode_type);  //受信,解析,初期化を1ループ実行する。また、"データ送信"か"観測結果の表示"に切り替えを行う関数
//----------------------//



//-----セットアップ-----//
void setup(){
  Serial.begin(115200);   //シリアル通信の設定
  pinMode(INpin, INPUT);   //デジタル入力に設定
  pinMode(9,OUTPUT);  //基板の黄LEDに接続されたピン
}
//----------------------//



//-----メインループ-----//
void loop() {

  treat(2);
  //引数に"1"を指定すればMEGAにデータを送信するモードになる
  //引数に"2"を指定すればシリアルモニターに観測結果を表示するモードになる

}
//----------------------//



//-----MEGAにデータを送るための関数-----//
void TX(int val_data) {
  Serial.write('H');        //ヘッダの送信
  Serial.write(lowByte(val_data));  //下位バイトの送信
  Serial.write(highByte(val_data)); //上位バイトの送信
}
//----------------------//



//-----送信データをリセットする関数-----//
void TX_fin(){
  if (TXdata != 1) {      //1(搬送ループの信号)以外を観測した後
    TXdata = 0;       //一度停止を挟む(0の信号は停止)
    TX(TXdata);       //今後信号が来るまで停止を維持する
  }
  else {}           //2(搬送ループの信号)が格納されているときは自律搬送を続けるために何もしない
}
//----------------------//



//-----受信データをリセットする関数-----//
void Reset_sig() {
  Sig_HL[0] = 0;
  Sig_HL[1] = 0;
  Sig_HL[2] = 0;
  Sig_HL[3] = 0;
  Sig_HL[4] = 0;
  Sig_HL[5] = 0;
  Sig_HL[6] = 0;
  Sig_HL[7] = 0;
  count_sig = 0;
}
//----------------------//



//-----データ部,ストップ部を観測する関数-----//
void observe_data(){
  while (1) {
    while (digitalRead(INpin) != HIGH) {//データ部のHIGH部分は読み飛ばす
      Time = micros();        //現在の時刻(us)を得る
      cut_fin = 0;
    }
    while (digitalRead(INpin) != LOW) { //次のHIGHになるまで待つ
      delayMicroseconds(10);
      cut_fin++;
      if (cut_fin >= 250) {   //4ms以上LOWのままなら観測を中断する
        break;          //信号が途絶えたと判断する
      }
      else {}
    }
    Time = micros() - Time;   //LOWの長さを測る
    if (Time >= 1300) {     //ストップビットを受信した場合
      break;          //ループを終了する
    }
    else if (Time >= 850) {   //LOWの長さがPPMでLOW信号の時の処理
      Sig_HL[count_sig] = 0;  //配列に0(LOW)を格納
    }
    else if (Time >= 350) {   //LOWの長さがPPMでHIGH信号の時の処理
      Sig_HL[count_sig] = 1;  //配列に1(HIGH)を格納
    }
    else {      //受信に失敗した時
      break;    //観測を中止し、ループを終了する
    }
    count_sig++;  //信号の数を数える//ここではデバイスNOとデータ部を合わせて8となる
  }
}
//----------------------//



//-----2進数の受信データを10進数に変換しMEGAにデータを送信する関数-----//
void analyze() {

  if (Sig_HL[0] != HN || Sig_HL[1] != LN) {}  //違うデバイスNOの信号を確認した場合何もしない
  else if (Sig_HL[2] == Sig_HL[5] || Sig_HL[3] == Sig_HL[6] || Sig_HL[4] == Sig_HL[7]) {
    TXdata = 1;                                 //反転部がデータ部の反転になっていない場合
  }                                       //間違ってデータを受信しているので停止扱いにする
  else { //デバイスNOを確認後、反転部が正しく反転している場合
    TXdata = 0;       //一度変数をリセットする
    TXdata += Sig_HL[2];  //000+[2]=00[2]
    TXdata = TXdata << 1; //0[2]0へシフト
    TXdata += Sig_HL[3];  //0[2]0+[3]=0[2][3]
    TXdata = TXdata << 1; //[2][3]0へシフト
    TXdata += Sig_HL[4];  //[2][3]0+[4]=[2][3][4]
    TX(TXdata); //[2][3][4]が10進数に変換されてMEGAに送られる
  }
}
//----------------------//



//-----信号をシリアルモニターに表示する関数-----//
void SignalCheck(){
  char str[100];       //適当に配列を用意
  sprintf(str, " (device.NO)  %d\r-%d\r\n (data)       %d\r-%d\r-%d\r\n (reverse)    %d\r-%d\r-%d\r\n\n"
    , Sig_HL[0], Sig_HL[1], Sig_HL[2], Sig_HL[3], Sig_HL[4], Sig_HL[5], Sig_HL[6], Sig_HL[7]);//信号の表示
  Serial.print(str);
}
//----------------------//



//-----受信,解析,初期化を1ループ実行する。また、"データ送信"か"観測結果の表示"に切り替えを行う関数-----//
void treat(int Mode_type){

  /*****情報の初期化*****/
  if (Mode_type == 1){    //解析結果をMEGAに送る場合に実行
    TX_fin();       //送信データの初期化
  }
  else{}
  Reset_sig();        //受信データの初期化
  Time = 0;         //時刻の初期化
  /********************/

  /*****リーダー部,データ部,ストップ部の観測*****/
  if (digitalRead(INpin) != HIGH) {   //リーダ部のチェックを行う
    Time = micros();          //現在の時刻(us)を得る
    while (digitalRead(INpin) != HIGH); //LOWになるまで待つ
    Time = micros() - Time;       //HIGHの長さを測る
  }
  else {}
  if (Time >= 1800) { //リーダー部0.9ms以上のHIGHにてデータ部を観測し始める
    while (digitalRead(INpin) != LOW) {}//リーダ部のLOW部分を読み飛ばす
    observe_data(); //データ部,ストップ部を観測する関数
    /********************/

    /*****受信データの解析(表示)*****/
    if (count_sig != 8) {}//正しく全てのデータを受信出来ていないとき観測し直す//count_sigは直前の関数内の値
    else { //正しく受信出来たとき
      if (Mode_type == 1){  //引数に1を入れた場合
        analyze();          //解析結果をMEGAに送る関数を実行
        digitalWrite(9,HIGH);
      }
      /********************/

      /*****受信した信号をパソコンで確認する場合*****/
      else if (Mode_type == 2){ //引数に1を入れた場合
        SignalCheck();      //観測結果をシリアルモニターに表示する関数を実行
      }
      else{}
      /********************/
    }
  }
  else {} //リーダー部を観測出来なかった場合 (Time < 900;)
}
//----------------------//



//-----信号の種類-----//

//6通りを使用する
//000// 0_停止
//001// 1_自律搬送
//010// 2_前進
//011// 3_後退
//100// 4_右旋回
//101// 5_左旋回
//110// 6_なし
//111// 7_なし

//----------------------//
