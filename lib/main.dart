import 'package:flutter/material.dart'; // 필수
import 'package:myapp1/onboarding.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: '리 리, 세계 유랑자',
      home: OnBoardingPage(),
    );
  }
}

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Main screen',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to the onboarding page'),
            ),
          ]),
      )
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
        actions: [
          IconButton(
          icon : Icon(Icons.shopping_cart), 
          onPressed: () {
            print('shopping cart button is clicked');
          }, // 앱바 왼쪽에 아이콘 추가
        ),
        IconButton(
          icon : Icon(Icons.reviews), 
          onPressed: () {
            print('Search button is clicked');
          }, // 앱바 왼쪽에 아이콘 추가
        ),
        ],
      ),
      drawer: Drawer(
        child:ListView(
          padding: EdgeInsets.zero, // 리스트뷰에 패딩을 주지 않음
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/히오스.webp'),
                backgroundColor: Color.fromARGB(171, 0, 185, 71),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/히오스.webp'),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/히오스.webp'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: Text('히오스'),
              accountEmail: Text('idiot@naver.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Color.fromARGB(171, 0, 185, 71),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[800],),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
              color: Colors.grey[800],),
              title: Text('setting'),
              onTap: () {
                print('setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
              color: Colors.grey[800],),
              title: Text('question_answer'),
              onTap: () {
                print('question_answer is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],// 리스트뷰에 들어갈 자식'들' 이라 child'ren'
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 70.0, 0.0, 0.0),
        child: Column( // 자식 위젯들을 세로로 배치
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 시작점 정렬
          children: [
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 2, 240, 129)),
                ),
                child: Text('리리 스톰스타우트',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    )
                  ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()),);
                },
              ),
            ),
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
                  backgroundImage: AssetImage('assets/빠른발.webp'),
                  radius: 30,
                ),
                SizedBox(
                  width: 10.0,
                ),
                
                Text('빠른발',
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('리리야 힘들구나..'),
            duration: Duration(seconds: 5),
            action: SnackBarAction(
              label: '좋아요 취소',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()),); 
                },
              ),
            )
          );
        },
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('히오스 프로필'),
      ),
      body: Center(
        child: Text('좋아요가 추가되었습니다',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('히오스 프로필'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('좋아요를 취소 하겠습니까?',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.redAccent,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('좋아요가 취소되었습니다'),
                  duration: Duration(seconds: 5),
                  )
                );
              },
              child: Text('취소'),
            ),
          ],
        ),
      ),
    );
  }
}
