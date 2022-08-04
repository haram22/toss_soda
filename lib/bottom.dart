import 'package:flutter/material.dart';
import 'theme/colors.dart';
import 'theme/text_style.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed, //아이템 4개 이상일 때 추가
        unselectedItemColor: bottom_navi_enable,
        elevation: 5,
        //currentIndex: _selectedIndex, //현재 선택된 Index
        // onTap: (int index) {
        //   setState(() {
        //     _selectedIndex = index;
        //   });
        // },
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
    );
  }
}
