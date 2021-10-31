import 'package:flutter/material.dart';
import 'package:my_app/models/commodities.dart';

class HouseHoldGoodsPage extends StatelessWidget {
  final Commodity seleted;
  final String item;
  const HouseHoldGoodsPage(
      {required this.seleted, required this.item, Key? key, String? label})
      : super(key: key);

  static const String routeName = 'houseitems';

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Moving: " + item,
          style: TextStyle(fontSize: 17),
        ),
        backgroundColor: Colors.black87,
        centerTitle: false,
      ),
    );
  }
}
