// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toss/theme/colors.dart';
import 'package:toss/theme/text_style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toss',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomePage(),
      color: home_background,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: home_background,
        appBar: AppBar(
          title: Text(
            "sssasds",
            style: TextStyle(color: Colors.black),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Image.asset('assets/toss.png'),
          ),
          backgroundColor: home_background,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 13.0),
              child: Row(children: [
                IconButton(
                    onPressed: () {}, icon: Image.asset('assets/chat.png')),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/notification.png')),
              ]),
            )
          ],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 13),
          child: ListView(
            children: [firstCard(), secondCard(), thirdCard()],
          ),
        ));
  }
}

class firstCard extends StatefulWidget {
  const firstCard({super.key});

  @override
  State<firstCard> createState() => _firstCardState();
}

class _firstCardState extends State<firstCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: ListTile(
          title: Padding(
        padding: const EdgeInsets.only(left: 6.0, top: 19, bottom: 18),
        child: Row(
          children: [
            Text('토스뱅크', style: title2()),
            Spacer(),
            IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                ))
          ],
        ),
      )),
    );
  }
}

class secondCard extends StatefulWidget {
  const secondCard({super.key});

  @override
  State<secondCard> createState() => _secondCardState();
}

class _secondCardState extends State<secondCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      // ignore: sort_child_properties_last
      child: ListTile(
          title: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 19, bottom: 18, left: 6),
                    child: Row(
                      children: [
                        Text('자산', style: title2()),
                        Spacer(),
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 16,
                            ))
                      ],
                    ),
                  ),
                  banklist(
                      image: 'tossbank',
                      title: '토스뱅크 통장',
                      money: '16,735',
                      isbutton: true),
                  banklist(
                      image: 'wori',
                      title: '우리뱅크월렛카카오통장\n(저축예금)',
                      money: '74,000',
                      isbutton: true),
                  banklist(
                      image: 'ibk',
                      title: '토스뱅크 통장',
                      money: '16,735',
                      isbutton: true),
                  banklist(
                      image: 'kakao',
                      title: '토스뱅크 통장',
                      money: '16,735',
                      isbutton: true),
                  banklist(
                      image: 'hana',
                      title: '토스뱅크 통장',
                      money: '16,735',
                      isbutton: true),
                  banklist(
                      image: 'wori',
                      title: '토스뱅크 통장',
                      money: '16,735',
                      isbutton: false),
                  Divider(thickness: 1),
                  banklist(
                      image: 'point',
                      title: '포인트 머니 2개',
                      money: '2,500,000',
                      isbutton: false),
                  SizedBox(
                    height: 20,
                  )
                ],
              ))),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    );
  }
}

class thirdCard extends StatefulWidget {
  const thirdCard({super.key});

  @override
  State<thirdCard> createState() => _thirdCardState();
}

class _thirdCardState extends State<thirdCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: ListTile(
          title: Padding(
              padding: const EdgeInsets.only(left: 6.0, top: 19, bottom: 18),
              child: Column(
                children: [
                  Row(
                    children: [Text('소비', style: title2()), Spacer()],
                  ),
                  SizedBox(height: 16),
                  banklist(
                      image: 'card',
                      title: '이번 달 쓴 금액',
                      money: '467,200',
                      isbutton: true),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  banklist(
                      image: 'd_9',
                      title: '7월 13일 낼 카드값',
                      money: '1,200',
                      isbutton: false),
                ],
              ))),
    );
  }
}

class banklist extends StatelessWidget {
  final String image;
  final String title;
  final String money;
  final bool isbutton;
  const banklist(
      {super.key,
      required this.image,
      required this.title,
      required this.money,
      required this.isbutton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: ListTile(
        trailing: isbutton
            ? OutlinedButton(
                onPressed: () {},
                child: Text("송금", style: button1(color: Color(0xff505866))))
            : null,
        leading: Expanded(flex: 3, child: Image.asset('assets/$image.png')),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: Text('$title', style: body3(color: Color(0xff505866))),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: Text(
            '${money} 원',
            style: body1(color: Color(0xff353C49)),
          ),
        ),
      ),
    );
  }
}
