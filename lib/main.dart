// ignore_for_file: prefer_const_constructors, unnecessary_const, prefer_const_literals_to_create_immutables
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
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        color: home_background);
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
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff0FFEFEFEF)),
                borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  type: BottomNavigationBarType.fixed,
                  unselectedItemColor: bottom_navi_enable,
                  elevation: 5,
                  currentIndex: _selectedIndex,
                  onTap: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  selectedLabelStyle: appbar(color: Color(0xff343D4C)),
                  unselectedLabelStyle: appbar(color: Color(0xff8D949C)),
                  iconSize: 20,
                  items: [
                    const BottomNavigationBarItem(
                      icon: const Padding(
                        padding: const EdgeInsets.only(bottom: 3.0, top: 10),
                        child: const ImageIcon(AssetImage('assets/home.png')),
                      ),
                      label: '???',
                    ),
                    const BottomNavigationBarItem(
                      icon: const Padding(
                        padding: const EdgeInsets.only(bottom: 3.0, top: 10),
                        child: const ImageIcon(const AssetImage(
                          'assets/diamond.png',
                        )),
                      ),
                      label: '??????',
                    ),
                    const BottomNavigationBarItem(
                      icon: const Padding(
                        padding: const EdgeInsets.only(bottom: 3.0, top: 10),
                        child:
                            // Icon(
                            //   Icons.card_membership_outlined,
                            // ),
                            const ImageIcon(
                          const AssetImage('assets/Group14.png'),
                        ),
                      ),
                      label: '??????',
                    ),
                    const BottomNavigationBarItem(
                      icon: const Padding(
                        padding: const EdgeInsets.only(bottom: 3.0, top: 10),
                        child: const ImageIcon(
                          const AssetImage('assets/stock.png'),
                        ),
                      ),
                      label: '??????',
                    ),
                    const BottomNavigationBarItem(
                        icon: const Padding(
                          padding: const EdgeInsets.only(bottom: 3.0, top: 10),
                          child: const ImageIcon(
                            const AssetImage('assets/list.png'),
                          ),
                        ),
                        label: '??????'),
                  ],
                  selectedItemColor: text_primary_bottom_able),
            )));
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
              padding: const EdgeInsets.only(left: 13.0, top: 5),
              child: Image.asset('assets/toss.png')),
          leadingWidth: 120,
          backgroundColor: home_background,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 13.0, top: 5),
              child: Row(children: [
                Transform.scale(
                    scale: 1.5,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/chat.png'))),
                Transform.scale(
                    scale: 1.5,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/notification.png')))
              ]),
            )
          ],
          elevation: 0),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 17),
        child: ListView(children: [
          const firstCard(),
          const SizedBox(height: 5),
          const secondCard(),
          const SizedBox(height: 5),
          const thirdCard(),
          const lastCard(),
          const SizedBox(height: 33),
          const Center(
              child: const Text("?????? ?????????  |  ?????? ??????",
                  style: const TextStyle(
                      fontFamily: 'Main',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: toast_background))),
          const SizedBox(height: 78)
        ]),
      ),
    );
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
            Text('????????????', style: title2()),
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
                              Text('??????', style: title2()),
                              Spacer(),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios_outlined,
                                      size: 16))
                            ],
                          ),
                        ],
                      )),
                  banklist(
                      image: 'tossbank',
                      title: '???????????? ??????',
                      money: '16,735',
                      isbutton: true,
                      buttonName: '??????'),
                  banklist(
                      image: 'wori',
                      title: '?????????????????????????????????\n(????????????)',
                      money: '74,000',
                      isbutton: true,
                      buttonName: '??????'),
                  banklist(
                      image: 'ibk',
                      title: '????????????(IBK?????????????????????)',
                      money: '0',
                      isbutton: true,
                      buttonName: '??????'),
                  banklist(
                      image: 'kakao',
                      title: '????????? ??????',
                      money: '0',
                      isbutton: true,
                      buttonName: '??????'),
                  banklist(
                      image: 'hana',
                      title: '?????????????????? ??????',
                      money: '12,210',
                      isbutton: true,
                      buttonName: '??????'),
                  banklist(
                      image: 'wori',
                      title: '??????  ?????????????????? ??????',
                      money: '2,500,000',
                      isbutton: false,
                      buttonName: '??????'),
                  Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Divider(thickness: 1)),
                  banklist(
                      image: 'point',
                      title: '????????? ??????  2???',
                      money: '2,500,000',
                      isbutton: false,
                      buttonName: ''),
                  SizedBox(height: 17)
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
                child: Row(children: [Text('??????', style: title2()), Spacer()])),
            SizedBox(height: 16),
            Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: banklist(
                    image: 'card',
                    title: '?????? ??? ??? ??????',
                    money: '467,200',
                    isbutton: true,
                    buttonName: '??????')),
            Padding(
                padding: const EdgeInsets.only(top: 3.0, bottom: 10, left: 5),
                child: Divider(thickness: 1)),
            Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: banklist(
                    image: 'd_9',
                    title: '7??? 13??? ??? ?????????',
                    money: '1,200',
                    isbutton: false,
                    buttonName: ''))
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
      padding: const EdgeInsets.only(left: 0, right: 0, bottom: 12.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: ListTile(
          contentPadding: EdgeInsets.only(left: 3.0, right: 2.0),
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
                          style: button1(color: Color(0xff505866)))))
              : null,
          leading: Image.asset('assets/$image.png'),
          title: Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: Text(title, style: body3(color: Color(0xff505866)))),
          subtitle: Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Text('$money ???', style: body1(color: Color(0xff353C49)))),
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
                  title: '????????????',
                  subtitle1: '????????????s',
                  subtitle2: '??????',
                  image: 'score',
                  height: 43),
              _card(
                  title: '?????? 15??????',
                  subtitle1: '?????? ??????',
                  subtitle2: '??????',
                  image: 'purple_card',
                  height: 44),
              _card(
                  title: '??????',
                  subtitle1: '?????????',
                  subtitle2: '',
                  image: 'shoe',
                  height: 50),
              _card(title: '??????', subtitle1: '?????????', subtitle2: '')
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
                  Padding(padding: EdgeInsets.only(top: 7)),
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
