
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
      home: ListViewPage(),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewPage()),);
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

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {


  var titleList = [
    '알렉',
    '아나',
    '안두인',
    '아우리엘',
    '첸',
    '데커드',
    '카라짐',
    '리리',
    '스투코프',
    '화이트메인'
  ];

  var imageList = [
    'image/Alexstrasza.webp',
    'image/Ana.webp',
    'image/Anduin.webp',
    'image/Aurial.webp',
    'image/Chen.webp',
    'image/Deckard.webp',
    'image/karazim.webp',
    'image/Li_Li.webp',
    'image/Stukov.webp',
    'image/Whitemane.webp',
  ];

  var description = [
    '용의 여왕인 알렉스트라자는 티탄들의 힘으로 아제로스의 모든 생명을 수호하는 역할을 맡았습니다. 오랜 시간 동안 그녀는 필멸자들에게 도움을 주었고, 때로는 큰 대가를 치러야 하기도 했습니다. 시공의 폭풍에서도 그녀는 생명을 지키기로 다짐합니다.',
    '오버워치의 창립 멤버이자 세계적으로 손꼽히는 저격수인 아나 아마리는 자신의 능력과 노련함으로 무고한 이들을 지킵니다. 비록 오른쪽 눈을 잃고 한때 자취를 감췄지만 자신의 의무와 책임감을 깨닫고 다시 전투에 합류했습니다.',
    '젊은 나이의 안두인은 신성한 빛의 사제이자, 얼라이언스의 특사로서 평화를 추구했습니다. 아버지 바리안이 불타는 군단 앞에 쓰러지자 안두인은 그 왕관을 물려받아 얼라이언스의 국왕이 되었습니다. 그리고 평화는 반드시 쟁취해 내야 한다는 사실도 배웠습니다. 그곳이 시공의 폭풍일지라도요.',
    '대천사 아우리엘을 통해 희망의 힘이 세상 구석구석으로 흘러들어갑니다. 아우리엘의 꺼지지 않는 빛은 어두운 영혼들까지도 밝게 비춥니다. 삼라만상의 조화를 추구하는 그녀는 중재자이자 조언가이지만 때에 따라서 용감한 전사가 되기도 합니다.',
    '모름지기 양조사는 탐험가이면서 자연을 사랑하고, 때에 따라서 강력한 싸움꾼이 되어야 합니다. 수년 동안 첸 스톰스타우트는 아제로스를 방랑하며 귀한 재료를 수집하고 여러 사람들에게 재밌는 이야기를 들려주었습니다. 그리고 무엇보다도, 아주 맛 좋은 맥주를 만들곤 했죠.',
    '열정적인 학자인 데커드 케인은 지식을 추구하기 위해 평생을 바쳤습니다. 조언가이자 역사가인 그는 성역의 위대한 영웅들을 몇 번이고 도왔죠. 데커드 케인이 이야기를 할 때에는 잠시 그의 말을 들어보는 게 좋을 겁니다.',
    '이브고로드의 수도사들은 신들이 만물에 존재하며, 그 신성한 뜻은 장로들을 통해 펼쳐진다고 믿습니다. 흔들리지 않는 신앙심으로 가득찬 카라짐은 일천하고도 한 명의 신을 받들기 위해 성역의 끝자락은 물론 그 어떤 곳에도 당도할 준비가 되었습니다.',
    '유랑도 셴진 수에서 태어난 리 리 스톰스타우트는 평범한 삶을 살고 있었습니다. 삼촌인 첸의 일지를 읽기 전까지는 말이죠. 일지를 읽은 리 리는 모험과 탐험에 대한 못 말릴 열정으로 언덕골 주변의 여행자들을 성가시게 굴기 시작했습니다.',
    '알렉세이 스투코프는 배신을 당해 살해됐고 저그가 그의 시체를 회수해 부활 후 감염시켰습니다. 감염을 치료했지만 실험체가 되어 다시 감염되었고, 이제 그는 감염을 시공의 폭풍에 퍼트리기로 마음먹습니다.',
    '붉은십자군의 열성적인 종교재판관 샐리 화이트메인은 자신의 투사들을 이끌며 언데드와의 끝없는 전쟁에 나섭니다. 죽음의 역병을 접한 자들은 아무리 저항하더라도 화이트메인이 인도하는 정화의 불길에 사그라들 것입니다.'
  ];

  void showPopup(context, title, image, description){
    showDialog(
      context: context,
      builder: (context){
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(image,
                    width:200,
                    height:200,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(title, style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton.icon(
                   onPressed: (){
                    Navigator.pop(context);
                   },
                   icon: const Icon(Icons.close),
                   label:const Text('닫기'),
                ),
              ],
            ),
          ),
          );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
          style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index){
          return InkWell(
            onTap: () {
              print(titleList[index]);
              showPopup(context, titleList[index], imageList[index], description[index]);
            },
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(imageList[index]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(titleList[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: width,
                          child: Text(
                            description[index],
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ),
                ],
              )
            ),
          );
        },
        ),
    );
  }
}