import 'package:currency_converter/resources/calculate.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/resources/interfaceHelper.dart';

class Stocks extends StatefulWidget {
  @override
  _Stocks createState() => _Stocks();
}

class _Stocks extends State<Stocks> {
  GuiHelper guiHelper = GuiHelper();
  Calculate c = Calculate();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              guiHelper.makeSpace(25),
              guiHelper.makeText("Stock Exchange", 50,
                  bold: true, align: Alignment.topLeft),
              guiHelper.makeText(
                  "See the main changes in the stock exchanges", 22,
                  align: Alignment.topLeft),
              guiHelper.makeSpace(85),
              guiHelper.makeSotckDataRow(c.stocksValues["IBOVESPA"]["name"],
                  c.stocksValues["IBOVESPA"]["variation"]),
              guiHelper.makeSotckDataRow(c.stocksValues["NASDAQ"]["name"],
                  c.stocksValues["NASDAQ"]["variation"]),
              guiHelper.makeSotckDataRow(c.stocksValues["CAC"]["name"],
                  c.stocksValues["CAC"]["variation"]),
              guiHelper.makeSotckDataRow(c.stocksValues["NIKKEI"]["name"],
                  c.stocksValues["NIKKEI"]["variation"]),
              guiHelper.makeSpace(30),
            ],
          ),
        ),
      ],
    );
  }
}
