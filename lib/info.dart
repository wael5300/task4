import 'package:flutter/material.dart';

class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Massages_Detail'),),
      body: BottomAppBar(),
      
      
    );
  }
}
