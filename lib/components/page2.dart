import 'package:flutter/material.dart';
import 'package:flutter_application_4/provider/test_provider.dart';
import 'package:provider/provider.dart';

import '../provider/navigator_provider.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    TestProvider _test = Provider.of(context, listen: false);
    NavigatorPriovider _navi = Provider.of(context, listen: false);

    print("pages 2");
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Consumer<TestProvider>(
              builder: (context, value, child) => Text("${value.num}"),
            ),
          ),
          MaterialButton(
            onPressed: () {
              _test.sum();
            },
            child: Text("Add"),
          ),
          MaterialButton(
            onPressed: () {
              _navi.indexPage = 0;
            },
            child: Text("Go to Page 1"),
          )
        ],
      ),
    );
  }
}
