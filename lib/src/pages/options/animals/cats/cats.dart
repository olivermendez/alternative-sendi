import 'package:flutter/material.dart';
import 'package:my_app/models/commodities.dart';
import 'package:my_app/models/token.dart';

class CatPage extends StatelessWidget {
  final Commodity seleted;
  final String subCommoditySeleted;
  final Token token;
  const CatPage(
      {required this.seleted,
      required this.subCommoditySeleted,
      required this.token,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}