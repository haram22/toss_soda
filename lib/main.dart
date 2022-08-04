// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toss/theme/colors.dart';
import 'package:toss/theme/text_style.dart';
import 'send.dart';

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

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: home_background,
      appBar: AppBar(
        toolbarHeight: 39,
        leading: Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: Image.asset('assets/toss.png'),
        ),
        leadingWidth: 120,
        backgroundColor: home_background,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Row(children: [
              IconButton(
                  onPressed: () {}, icon: Image.asset('assets/chat.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/notification.png'))
            ]),
          )
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 17),
        child: ListView(children: [
          firstCard(),
          secondCard(),
          thirdCard(),
          lastCard(),
          SizedBox(height: 33),
          Center(
              child: Text("금액 숨기기  |  자산 추가",
                  style: TextStyle(
                      fontFamily: 'Main',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: toast_background))),
          SizedBox(height: 78)
        ]),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    home(),
    home(),
    send(),
    send(),
    send()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff0FFEFEFEF)),
                borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed, //아이템 4개 이상일 때 추가
                unselectedItemColor: bottom_navi_enable,
                elevation: 5,
                currentIndex: _selectedIndex, //현재 선택된 Index
                onTap: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                selectedLabelStyle: appbar(color: Color(0xff343D4C)),
                unselectedLabelStyle: appbar(color: Color(0xff8D949C)),
                iconSize: 20,
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 3.0, top: 10),
                      child: ImageIcon(
                        AssetImage(
                          'assets/home.png',
                        ),
                      ),
                    ),
                    label: '홈',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 3.0, top: 10),
                      child: ImageIcon(
                        AssetImage(
                          'assets/diamond.png',
                        ),
                      ),
                    ),
                    label: '혜택',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 3.0, top: 10),
                      child: ImageIcon(
                        AssetImage(
                          'assets/money.png',
                        ),
                      ),
                    ),
                    label: '송금',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 3.0, top: 10),
                      child: ImageIcon(
                        AssetImage(
                          'assets/stock.png',
                        ),
                      ),
                    ),
                    label: '주식',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 3.0, top: 10),
                      child: ImageIcon(
                        AssetImage(
                          'assets/list.png',
                        ),
                      ),
                    ),
                    label: '전체',
                  ),
                ],
                selectedItemColor: text_primary_bottom_able,
              ),
            )));
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
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => send()));
                },
                icon: Icon(Icons.arrow_forward_ios_outlined, size: 16))
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      // ignore: sort_child_properties_last
      child: ListTile(
          title: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 19, bottom: 18, left: 6),
                      child: Column(
                        children: [
                          Row(
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
                        ],
                      )),
                  banklist(
                      image: 'tossbank',
                      title: '토스뱅크 통장',
                      money: '16,735',
                      isbutton: true,
                      buttonName: '송금'),
                  banklist(
                      image: 'wori',
                      title: '우리뱅크월렛카카오통장\n(저축예금)',
                      money: '74,000',
                      isbutton: true,
                      buttonName: '송금'),
                  banklist(
                      image: 'ibk',
                      title: '보통예금(IBK평생한가족통장)',
                      money: '0',
                      isbutton: true,
                      buttonName: '송금'),
                  banklist(
                      image: 'kakao',
                      title: '입출금 통장',
                      money: '0',
                      isbutton: true,
                      buttonName: '송금'),
                  banklist(
                      image: 'hana',
                      title: '영하나플러스 통장',
                      money: '12,210',
                      isbutton: true,
                      buttonName: '송금'),
                  banklist(
                      image: 'wori',
                      title: '저축  우리청년희망 적금',
                      money: '2,500,000',
                      isbutton: false,
                      buttonName: '송금'),
                  Divider(thickness: 1),
                  banklist(
                      image: 'point',
                      title: '포인트 머니  2개',
                      money: '2,500,000',
                      isbutton: false,
                      buttonName: ''),
                  SizedBox(
                    height: 17,
                  )
                ],
              ))),
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
            title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6.0, top: 19),
              child: Row(
                children: [Text('소비', style: title2()), Spacer()],
              ),
            ),
            SizedBox(height: 16),
            banklist(
                image: 'card',
                title: '이번 달 쓴 금액',
                money: '467,200',
                isbutton: true,
                buttonName: '내역'),
            Padding(
              padding: const EdgeInsets.only(top: 3.0, bottom: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
            banklist(
              image: 'd_9',
              title: '7월 13일 낼 카드값',
              money: '1,200',
              isbutton: false,
              buttonName: '',
            ),
          ],
        )));
  }
}

class banklist extends StatelessWidget {
  final String image;
  final String title;
  final String money;
  final bool isbutton;
  final String buttonName;
  banklist(
      {super.key,
      required this.image,
      required this.title,
      required this.money,
      required this.isbutton,
      required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: ListTile(
          trailing: isbutton
              ? SizedBox(
                  height: 37,
                  width: 57,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: home_background,
                          side: BorderSide(color: Colors.transparent)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => send()));
                      },
                      child: Text(buttonName,
                          style: button1(color: Color(0xff505866)))),
                )
              : null,
          leading: Image.asset('assets/$image.png'),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: Text(title, style: body3(color: Color(0xff505866))),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Text(
              '$money 원',
              style: body1(color: Color(0xff353C49)),
            ),
          ),
        ),
      ),
    );
  }
}

class lastCard extends StatelessWidget {
  const lastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 176,
      width: 127,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              _card(
                title: '안전하게',
                subtitle1: '신용점수s',
                subtitle2: '보기',
                image: 'score',
                height: 43,
              ),
              _card(
                title: '최대 15만원',
                subtitle1: '카드 혜택',
                subtitle2: '받기',
                image: 'purple_card',
                height: 45,
              ),
              _card(
                title: '최근',
                subtitle1: '만보기',
                subtitle2: '',
                image: 'shoe',
                height: 50,
              ),
              _card(
                title: '인기',
                subtitle1: '더보기',
                subtitle2: '',
              )
            ],
          )
        ],
      ),
    );
  }

  Container _card(
      {required String title,
      required String subtitle1,
      required String subtitle2,
      String? image,
      double? height}) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 5),
        child: Container(
          height: 156,
          width: 127,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.only(left: 19, top: 23, bottom: 10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: body3(color: Color(0xff808388))),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(subtitle1, style: body1()),
                  SizedBox(height: 5),
                  Text(subtitle2, style: body1()),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 50),
                      image != null
                          ? Image.asset('assets/$image.png', width: height)
                          : const SizedBox()
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
