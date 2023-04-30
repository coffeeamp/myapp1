import 'package:flutter/material.dart'; // 필수

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '리 리, 세계 유랑자',
      home: Grade(),
    );
  }
}


class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(230, 11, 241, 145),
      appBar: AppBar(
        title: Text('리 리, 세계 유랑자'),
        backgroundColor: Color.fromARGB(171, 0, 185, 71),
        centerTitle: true, // 제목 가운데 정렬
        elevation: 0.0, // 그림자 0.0은 제거
        leading: IconButton(
          icon : Icon(Icons.menu), 
          onPressed: () {
            print('menu button is clicked');
          }, // 앱바 왼쪽에 아이콘 추가
        ),
        actions: [
          IconButton(
          icon : Icon(Icons.shopping_cart), 
          onPressed: () {
            print('shopping cart button is clicked');
          }, // 앱바 왼쪽에 아이콘 추가
        ),
        IconButton(
          icon : Icon(Icons.search), 
          onPressed: () {
            print('Search button is clicked');
          }, // 앱바 왼쪽에 아이콘 추가
        ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 시작점 정렬
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/리리.PNG'),
                radius: 65.0,
              ),
            ),

            Divider( // 구분선
              height: 60.0,
              color: Colors.grey[850],
              thickness: 3.5,
              endIndent: 30.0,
            ),

            Text('Name',
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0,
            ),
            ),

            SizedBox(
              height: 10.0
             ),

            Text('리리 스톰스타우트',
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            SizedBox(
              height: 30.0
             ),

            Text('역할군',
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0
             ),
            Text('지원가',
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            SizedBox(
              height: 30.0
             ),

            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/허브차.webp'),
                  radius: 30,
                ),
                SizedBox(
                  width: 10.0,
                ),
                
                Text('허브차',
                  style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  letterSpacing: 1.0
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 30.0
            ),

            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/운룡.webp'),
                  radius: 30,
                ),
                SizedBox(
                  width: 10.0,
                ),
                
                Text('운룡',
                  style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  letterSpacing: 1.0
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 30.0
            ),

            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/실명의바람.webp'),
                  radius: 30,
                ),
                SizedBox(
                  width: 10.0,
                ),
                
                Text('실명의 바람',
                  style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  letterSpacing: 1.0
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}