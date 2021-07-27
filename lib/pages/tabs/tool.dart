import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyButton extends StatelessWidget {
  final String _buttonname;
  final Image _image;
  const MyButton(this._buttonname, this._image);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 80,
      child: FlatButton(
          onPressed: () {},
          child: Container(
              child: Column(
            children: [
              Container(
                width: 20,
                child: _image,
              ),
              Text(
                _buttonname,
                style: TextStyle(fontSize: 10),
              ),
            ],
          ))),
    );
  }
}

class ToolPage extends StatefulWidget {
  ToolPage({Key? key}) : super(key: key);

  @override
  _ToolPageState createState() => _ToolPageState();
}

class _ToolPageState extends State<ToolPage> {
  List<Map> imageList = [
    {
      "url":
          "https://i0.hdslb.com/bfs/article/486d34393f39c5f79beee50511b944f22a1d5f9e.jpg@942w_531h_progressive.webp"
    },
    {
      "url":
          "https://i0.hdslb.com/bfs/article/6fb2d349d20e90416b8d65d851a020b8f241899c.jpg@942w_531h_progressive.webp"
    },
    {
      "url":
          "https://i0.hdslb.com/bfs/article/59022d29f35420dfb3aaebf14b22cef5c45698f4.jpg@942w_531h_progressive.webp"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      Positioned(
        top: 60,
        left: 20,
        child: Text(
          '工具箱',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Positioned(
          top: 100,
          left: 30,
          child: Container(
            width: 300,
            height: 150,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  imageList[index]["url"],
                  fit: BoxFit.fill, //图片填充
                );
              },
              autoplay: true, //自动播放
              itemCount: imageList.length,
            ),
          )),
      Positioned(
          top: 270,
          left: 10,
          child: Container(
            width: 360,
            height: 150,
            child: Wrap(
              children: [
                MyButton('学业状况', Image.asset('images/2.0x/0.png')),
                MyButton('历年卷', Image.asset('images/2.0x/-1.png')),
                MyButton('空教室', Image.asset('images/2.0x/-2.png')),
                MyButton('考场查询', Image.asset('images/2.0x/-3.png')),
                MyButton('一键评议', Image.asset('images/2.0x/-4.png')),
                MyButton('图书馆', Image.asset('images/2.0x/-5.png')),
                MyButton('嘉锡讲堂', Image.asset('images/2.0x/-6.png')),
                MyButton('校招日历', Image.asset('images/2.0x/-7.png')),
                MyButton('易班', Image.asset('images/2.0x/-8.png')),
                MyButton('教务通知', Image.asset('images/2.0x/-9.png')),
                MyButton('大物实验', Image.asset('images/2.0x/-10.png')),
                MyButton('智慧餐厅', Image.asset('images/2.0x/-11.png')),
                MyButton('选课', Image.asset('images/2.0x/-12.png')),
                MyButton('更多', Image.asset('images/2.0x/-13.png')),
              ],
            ),
          ))
    ]);
  }
}
