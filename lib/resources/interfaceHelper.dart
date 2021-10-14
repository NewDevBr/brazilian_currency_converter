import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class GuiHelper {
  makeText(String text, int size,
      {bool bold = false, Alignment align = Alignment.center}) {
    return Align(
      alignment: align,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: size.toDouble(),
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  makeSpace(double espace) {
    return Padding(padding: EdgeInsets.only(top: espace));
  }

  makeSotckDataRow(String info, double variation) {
    return Padding(
      padding: EdgeInsets.only(bottom: 22),
      child: Row(
        children: [
          RotatedBox(
            quarterTurns: variation < 0 ? 2 : 0,
            child: Image(
              image: AssetImage("lib/resources/img/up-arrow.png"),
              color: variation < 0 ? Colors.red : Colors.green[300],
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 15)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              makeText(info, 18, bold: true),
              Text(
                'Variation: ' + variation.toString(),
                style: TextStyle(fontSize: 17, color: Colors.white),
                textAlign: TextAlign.left,
              )
            ],
          )
        ],
      ),
    );
  }

  makeConvertedDataRow(String img, String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 22),
      child: Row(
        children: [
          Image(image: AssetImage(img)),
          Padding(padding: EdgeInsets.only(right: 15)),
          makeText(text, 22)
        ],
      ),
    );
  }

  makeBottomNavigatorBarItem(String text, IconData icon) {
    return BottomNavyBarItem(
      title: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
      icon: Icon(icon),
      activeColor: Colors.green[900],
    );
  }

  rotateDeterminer(double value) {
    bool rotate;
    value > 0 ? rotate = false : rotate = true;
    return rotate;
  }

  colorDeterminer(double value) {
    Color colorResult;
    value > 0 ? colorResult = Colors.green[200] : colorResult = Colors.red[600];
    return colorResult;
  }
}
