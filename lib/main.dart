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
            "sssas",
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
          child: Column(
            children: [firstCard()],
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
    return Column(
      children: [
        Card(
          child: ListTile(title: Text('토스뱅크', style: title2())),
        ),
        Card(
          child: ListTile(title: Text('자산', style: title2())),
        ),
      ],
    );
  }
}
