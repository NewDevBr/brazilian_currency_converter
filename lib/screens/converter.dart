import 'package:currency_converter/resources/calculate.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/resources/interfaceHelper.dart';

class Converter extends StatefulWidget {
  @override
  _Converter createState() => _Converter();
}

class _Converter extends State<Converter> {
  Calculate calculate = Calculate();
  GuiHelper guiHelper = GuiHelper();
  TextEditingController realValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              guiHelper.makeSpace(25),
              guiHelper.makeText("Welcome!", 50,
                  bold: true, align: Alignment.topLeft),
              guiHelper.makeText("Convert currency easily", 24,
                  align: Alignment.topLeft),
              guiHelper.makeSpace(85),
              Form(
                child: Theme(
                  data: ThemeData(splashColor: Colors.transparent),
                  child: TextFormField(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    onChanged: (value) {
                      setState(() => calculate.convert(value));
                    },
                    controller: realValue,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    maxLength: 8,
                    decoration: InputDecoration(
                      filled: true,
                      counterText: "r",
                      fillColor: Colors.white,
                      hintText: "R\$ Value",
                      contentPadding:
                          EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),
              ),
              guiHelper.makeSpace(30),
              guiHelper.makeConvertedDataRow("lib/resources/img/America.jpg",
                  "Dolar: " + calculate.convertedValue["USD"]),
              guiHelper.makeConvertedDataRow(
                "lib/resources/img/EuropeanUnion.png",
                "Euro: " + calculate.convertedValue["EUR"],
              ),
              guiHelper.makeConvertedDataRow("lib/resources/img/Japan.jpg",
                  "Yen: " + calculate.convertedValue["YEN"]),
              guiHelper.makeConvertedDataRow("lib/resources/img/Argentina.jpg",
                  "Pesos: " + calculate.convertedValue["poundsArgentine"]),
            ],
          ),
        ),
      ],
    );
  }
}
