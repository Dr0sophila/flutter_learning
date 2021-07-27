import 'package:flutter/material.dart';
import 'pages/tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SignInPage(),
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            left: 20,
            top: 70,
            child: Container(
              child: Text("本科生登录",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              color: Colors.transparent,
            ),
          ),
          Positioned(
            left: 29,
            top: 120,
            child: Text(
              "综合性最强的福大校内APP",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 70,
            child: Text("登录即代表同意用户协议和隐私政策"),
          ),
          Positioned(top: 200, left: 30, child: SignIn()),
          Positioned(
            bottom: 300,
            left: 250,
            child: Container(
              width: 40,
              child: Image.asset('images/2.0x/2.png'),
            ),
          ),
          Positioned(
            bottom: 300,
            left: 30,
            child: Container(
                width: 170,
                child: TextField(
                  decoration: InputDecoration(hintText: '请输入验证码'),
                )),
          ),
          Positioned(
            bottom: 230,
            left: 30,
            child: FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Buffer()));
              },
              child: Text(
                '                                   登录                                   ',
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            ),
          ),
          Positioned(
            bottom: 190,
            left: 40,
            child: Text("研究生登录"),
          ),
          Positioned(
            bottom: 190,
            left: 270,
            child: Text("游客登录"),
          ),
        ],
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: '账号',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: '密码',
            ),
          ),
        ],
      ),
    );
  }
}
