import 'package:example/payment_failed.dart';
import 'package:example/payment_success.dart';
import 'package:icon_bottomsheet/icon_bottom_sheet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
      ),
      home: const MyHomePage(title: 'Icon BottomSheet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showBottomSheet() {
    showModalBottomSheet<int>(
      context: context,
      builder: (context) {
        return const IconBottomSheet(
          iconWidget: Icon(
            Icons.cancel_outlined,
            color: Colors.redAccent,
            size: 100,
          ),
          iconShape: IconShape.circleBottom,
          iconSize: 120,
          iconPadding: 20,
          child: PaymentFailed(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _showBottomSheet,
              child: const Text(
                'Show BottomSheet',
              ),
            )
          ],
        ),
      ),
    );
  }
}
