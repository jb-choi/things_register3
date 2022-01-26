import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int currentIndex = 0;
  final screens = [
    const Center(child: Text('홈', style: TextStyle(fontSize:60))),
    const Center(child: Text('물건등록', style: TextStyle(fontSize:60))),
    const Center(child: Text('물건리스트', style: TextStyle(fontSize:60))),
    const Center(child: Text('마이페이지', style: TextStyle(fontSize:60))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ㅇㅇㅇ'),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type : BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white ,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: '물건등록',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: '물건리스트',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '마이페이지',
          ),
        ],
      ),
    );
  }
}
