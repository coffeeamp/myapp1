import 'package:flutter/material.dart';
import 'package:myapp1/model.dart';
import 'package:like_button/like_button.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({super.key, required this.herolist});
  final Herolist herolist;

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {


  bool isLiked = false;
  int likeCount = 0;

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text(widget.herolist.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(widget.herolist.imgPath),
              height: 200,
              width: 200,
              ),
            SizedBox(
              height: 20,
            ),
            Text(
              '역할군 : ' + widget.herolist.role,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            LikeButton(
              size: 30,
              isLiked: isLiked,
              likeCount: likeCount,
            )
          ],
        ),
      ),
    );
  }
}