import 'package:flutter/material.dart';

void main() {
  //시작영역
  //runApp에서 MyApp클래스를 실행하도록 main 에서 호출하고 있다.
  runApp(MyApp());
}

//MyApp이 StatelessWidget클래스를 상속받고있다.
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //안드로이드의 Material 디자인을 받음.
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          //스캐폴드는 앱바를 가지고 있음.
          appBar: AppBar(
            title: Text("헬로웅"),
          ),
          body: Text("헬로월드ㅋ", style: TextStyle(fontSize: 30))),
    );
  }
}
