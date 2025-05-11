import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:testapp/Historie.dart';
import 'package:testapp/Home.dart';
import 'package:testapp/Scan.dart';

class nav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _nav();
  }
}

class _nav extends State<nav> {
  final items = [
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.qr_code_scanner,
      size: 30,
    ),
    Icon(
      Icons.history,
      size: 30,
    ),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: getSelecteWidget(index: index),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectIndex) {
          setState(() {
            index = selectIndex;
          });
        },
        animationDuration: const Duration(milliseconds: 400),
      ),
    );
  }

  Widget getSelecteWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        return Home();
        break;

      case 1:
        return scan();
        break;

      case 2:
        return historie();
        break;

      default:
        return Home();
        break;
    }
  }
}
