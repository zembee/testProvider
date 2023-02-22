import 'package:flutter/material.dart';
import 'package:flutter_application_4/components/page2.dart';
import 'package:flutter_application_4/provider/test_provider.dart';
import 'package:provider/provider.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    TestProvider _test = Provider.of(context, listen: false);
    print("pages1 ");
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      color: Colors.red,
      child: Column(
        children: [
          Consumer<TestProvider>(builder: (context, value, child) {
            return Text(
              "${value.num}",
              style: const TextStyle(fontSize: 40),
            );
          }),
          MaterialButton(
            onPressed: () {
              _test.num = _test.num + 1;
            },
            color: Colors.amber,
            child: const Text("Addnumber"),
          ),
        ],
      ),
    );
  }
}
