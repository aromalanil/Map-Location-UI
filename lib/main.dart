import 'package:flutter/material.dart';
import 'package:learn/icon_list.dart';
import 'package:learn/title_row.dart';

void main() => runApp(MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    ));

class MyHome extends StatelessWidget {
  const MyHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
      children: [
        Container(
          height: _size.height * 0.35,
          child: Image.asset('assets/cover.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              TitleRow(location: 'Coulobi, Canada',name:'Fiordland Conservancy Niare',rating:4.6),
              IconList(),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(fontSize: 14),)
            ],
          ),
        )
      ],
        ),
      ),
    );
  }
}
