import 'package:candle/constant/color.dart';
import 'package:candle/widget/text_field_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/text_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? value = 0;

  String get calculate => ((value??0) * 2).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.secondary,
      appBar: AppBar(
        title: const Text('candle'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
                color: CustomColor.containerColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: CustomColor.secondary)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFieldTitle(
                    title: 'test candle',
                    onChange: (value) {
                      try {
                        setState(() {
                          this.value = int.tryParse(value);
                        });
                      } catch (e) {
                        this.value = 0;
                        print(e);
                      }
                    }),
                TextFieldTitle(
                    title: 'test candle',
                    onChange: (value) {
                      print('value:: $value');
                    }),
                TextFieldTitle(
                    title: 'test candle',
                    onChange: (value) {
                      print('value:: $value');
                    }),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
                color: CustomColor.containerColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: CustomColor.secondary)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextTitle(title: 'test candle', value: calculate),
                TextTitle(title: 'test candle', value: calculate),
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
