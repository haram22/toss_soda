import 'package:flutter/material.dart';
import 'package:toss/theme/text_style.dart';

class send extends StatefulWidget {
  const send({super.key});

  @override
  State<send> createState() => _sendState();
}

class _sendState extends State<send> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: ListView(
          shrinkWrap: true,
          children: [
            Text("어디로 돈을 보낼까요?", style: title1(color: Color(0xff1A1E27))),
            SizedBox(height: 60),
            send_grid(),
            SizedBox(height: 35),
            Text("증권사 선택", style: body3(color: Color(0xff4F5965))),
            SizedBox(height: 16),
            stock_grid()
          ],
        ),
      ),
    );
  }
}

class send_grid extends StatelessWidget {
  List<String> grids = [
    'nh',
    'kb',
    'kakaobank',
    'shinhan',
    'wori_send',
    'ibk_send',
    'hana_send',
    'new',
    'dgb',
    'bnk',
    'kbank'
  ];
  List<String> names = [
    'NH농협',
    'KB국민',
    '카카오뱅크',
    '신한',
    '우리',
    'IBK기업',
    '하나',
    '새마을',
    '대구',
    '부산',
    '케이뱅크'
  ];
  send_grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 375,
      width: 325,
      child: SizedBox(
          child: GridView.count(
              physics: new NeverScrollableScrollPhysics(),
              childAspectRatio: 1.24,
              crossAxisCount: 3,
              mainAxisSpacing: 9,
              crossAxisSpacing: 8,
              children: List.generate(11, (index) {
                return Container(
                  height: 17,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      color: Color(0xffFAFAFA)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset('assets/${grids[index]}.png',
                              height: 36)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.0, top: 2),
                        child: Text(
                          names[index],
                          style: body3(),
                        ),
                      ),
                    ],
                  ),
                );
              }))),
    );
  }
}

class stock_grid extends StatelessWidget {
  List<String> grid = [
    'nh',
    'han',
    'shinhan',
    'hana',
    'k',
    'mirae',
    'kb',
    'kakaopay',
    'instead',
  ];
  List<String> name = [
    'NH투자',
    '한국투자',
    '신한금융투자',
    '하나금융',
    '키움',
    '미래에셋',
    'KB국민',
    '카카오페이증권',
    '대신'
  ];
  stock_grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 375,
      width: 325,
      child: SizedBox(
          child: GridView.count(
              physics: new NeverScrollableScrollPhysics(),
              childAspectRatio: 1.24,
              crossAxisCount: 3,
              mainAxisSpacing: 9,
              crossAxisSpacing: 8,
              shrinkWrap: true,
              children: List.generate(9, (index) {
                return Container(
                  height: 17,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      color: Color(0xffFAFAFA)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset('assets/${grid[index]}.png',
                              height: 36)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.0, top: 2),
                        child: Text(
                          name[index],
                          style: body3(),
                        ),
                      ),
                    ],
                  ),
                );
              }))),
    );
  }
}
