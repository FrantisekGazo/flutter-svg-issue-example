import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SVG Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final icon = 'assets/icons/ic_arrow_next.svg';
    return Scaffold(
      appBar: AppBar(
        title: Text('SVG Demo'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, i) => ListTile(
          leading: SvgPicture.asset(
            icon,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
