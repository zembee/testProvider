import 'package:flutter/material.dart';
import 'package:flutter_application_4/components/page1.dart';
import 'package:flutter_application_4/components/page2.dart';
import 'package:flutter_application_4/provider/navigator_provider.dart';
import 'package:provider/provider.dart';

import 'provider/test_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<TestProvider>(create: (_) => TestProvider()),
      ChangeNotifierProvider<NavigatorPriovider>(
          create: (_) => NavigatorPriovider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: Home()),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    NavigatorPriovider _navi = Provider.of(context);
    return Column(
      children: [
        Row(
          children: [
            MaterialButton(
              onPressed: () {
                _navi.indexPage = 0;
              },
              child: const Text("Page 1"),
            ),
            MaterialButton(
              onPressed: () {
                _navi.indexPage = 1;
              },
              child: const Text("Page 2"),
            )
          ],
        ),
        Expanded(
          child: Consumer<NavigatorPriovider>(
              builder: (context, value, child) => value.pages[value.indexPage]),
        )
      ],
    );
  }
}
