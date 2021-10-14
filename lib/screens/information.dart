import 'package:currency_converter/resources/interfaceHelper.dart';
import 'package:currency_converter/resources/textInformation/info.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  @override
  _Information createState() => _Information();
}

class _Information extends State<Information> {
  GuiHelper guiHelper = GuiHelper();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              guiHelper.makeSpace(25),
              guiHelper.makeText("Info & Terms", 50,
                  bold: true, align: Alignment.topLeft),
              guiHelper.makeText("How can you see data?", 24,
                  align: Alignment.topLeft),
              guiHelper.makeSpace(85),
              guiHelper.makeText("API: http://api.hgbrasil.com/finance", 18,
                  bold: true),
              guiHelper.makeSpace(20),
              Text(
                text,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
