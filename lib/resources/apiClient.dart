import 'package:http/http.dart' as http;
import 'dart:convert';

const _apiLink = "https://api.hgbrasil.com/finance?format=json";

class ApiClient {
  var _data;

  get data => _data;
  get dolar => _data["results"]["currencies"]["USD"]["buy"];
  get euro => _data["results"]["currencies"]["EUR"]["buy"];
  get poundsArgentine => _data["results"]["currencies"]["ARS"]["buy"];
  get yen => _data["results"]["currencies"]["JPY"]["buy"];
  get stocks => _data["results"]["stocks"];

  requestDataToServer() async {
    if (_data == null) {
      _data = await http.get(Uri.parse(_apiLink));
      _data = json.decode(data.body);
    }
  }
}
