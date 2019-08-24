import 'package:flutter/material.dart';

class Meals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals recipes'),
      ),
      body: Center(
        child: Text('Meals recipes for the Category!'),
      ),
    );
  }
}
