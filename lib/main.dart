import 'package:flutter/material.dart';

void main() {
  //시작영역
  //runApp에서 MyApp클래스를 실행하도록 main 에서 호출하고 있다.
  runApp(MyApp());
}

//MyApp이 StatelessWidget클래스를 상속받고있다.
class MyApp extends StatelessWidget {
  //화면이 변경될 소지가 없는 위젯 StatelessWidget
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
      home: HelloPage("두둥"),
    );
  }
}

/*
* 기본적인 앱 구조는 StatelessWidget 아래, Scaffold에 appBar에 body...형태가 기본이다.
*
* 상태를 가지는 앱을 만들고자 할때는 statefulwidget로 가줘야 한다.
* stful을 입력하고 엔터를 누른다.
* */

/*
* 항상 이런 2개가 셋트로 .
* 이 2개의 셋트가 하나의 화면이라고 생각하자...???
* 상태를 가질수 있고ㅡ, ui가 변경될수 있는 StatefulWidget
* */
class HelloPage extends StatefulWidget {
  final String title;

  //외부에서 받아서 할당해 줄 생성자 선언으로 초기화
  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  //언더바는 private 변수의미.
  String _message = "버튼 누르기 전이다.";

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          /*onPressed: () => print("잘 눌리나?"),*/
          onPressed: _changeMessage,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(_message, style: TextStyle(fontSize: 30)),
                Text('$_counter', style: TextStyle(fontSize: 30)),
              ],
            )
        //Text(_message, style: TextStyle(fontSize: 30))
        )


    );
  }

  void _changeMessage() {
    setState(() {
      _message = '버튼 누르고 바뀜.';
      _counter++;
    });
  }
}
