import 'package:flutter/material.dart';
import 'tabs/home.dart';
import 'tabs/tool.dart';
import '../../main.dart';

class BlankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'there is nothing!',
      style: TextStyle(fontSize: 100),
    );
  }
}

class Buffer extends StatefulWidget {
  Buffer({Key? key}) : super(key: key);

  @override
  _BufferState createState() => _BufferState();
}

class _BufferState extends State<Buffer> {
  var _pagelist = [
    BlankPage(),
    ToolPage(),
    HomePage(),
  ];
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(252, 252, 252, 252),
        body: this._pagelist[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: (int index) {
            setState(() {
              _currentindex = index;
              print(_currentindex);
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.web_outlined,
                  color: Colors.blue,
                ),
                title: Text('课程')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: Colors.blue,
                ),
                title: Text('工具箱')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.blue,
                ),
                title: Text('我的')),
          ],
        ),
      ),
    );
  }
}
