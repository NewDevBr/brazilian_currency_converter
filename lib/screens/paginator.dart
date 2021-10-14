import 'package:currency_converter/screens/converter.dart';
import 'package:currency_converter/resources/interfaceHelper.dart';
import 'package:currency_converter/screens/information.dart';
import 'package:currency_converter/screens/stocks.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Paginator extends StatefulWidget {
  @override
  _Paginator createState() => _Paginator();
}

class _Paginator extends State<Paginator> {
  final List<Widget> pageList = [
    Converter(),
    Stocks(),
    Information(),
  ];
  int _index = 0;
  GuiHelper guiHelper = GuiHelper();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: pageList[_index],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _index,
        showElevation: true,
        onItemSelected: (index) => setState(() => _index = index),
        items: <BottomNavyBarItem>[
          guiHelper.makeBottomNavigatorBarItem(
              "Converter", Icons.monetization_on),
          guiHelper.makeBottomNavigatorBarItem("Stocks", Icons.show_chart),
          guiHelper.makeBottomNavigatorBarItem("Info", Icons.info)
        ],
      ),
    );
  }
}
