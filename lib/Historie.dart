import 'package:flutter/material.dart';

class historie extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _historie();
  }
}

class _historie extends State<historie> {
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
