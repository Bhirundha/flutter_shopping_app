import 'package:amazon/HomePage.dart';
import 'package:amazon/model/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MaterialApp(home: Amazon()));

class Amazon extends StatelessWidget {
  const Amazon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider (create: (context)
    {
      return Cart();
    },
    child: const MaterialApp(home: HomePage()
    ),
    );
  }
}


