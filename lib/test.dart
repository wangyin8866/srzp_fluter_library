import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TestPage1 extends StatefulWidget {
  TestPage1({Key key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage1> {

  static const _channel = const MethodChannel('flutter.io/test');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter页面'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            _channel.invokeMethod('pop');
          },
        ),
      ),
      body: Center(
        child: Text('我就试试11111111111'),
      ),
    );
  }
}

class TestPage2 extends StatelessWidget {
  const TestPage2({Key key}) : super(key: key);

  static const _channel = const MethodChannel('flutter.io/test');

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Flutter页面'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            _channel.invokeMethod('pop');
          },
        ),
      ),
      body: Center(
        child: Text('我再试试22222222222'),
      ),
    );
  }
}