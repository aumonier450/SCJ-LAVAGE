import 'package:flutter/material.dart';

class scan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _scane();
  }
}

class _scane extends State<scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historique'),
        backgroundColor: Color(0xFFC7192E),
      ),
      body: Center(
        child: Text('Historique des réservations'),
      ),
    );
  }
}
