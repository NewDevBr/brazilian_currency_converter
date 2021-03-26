import 'package:currency_converter/resources/apiClient.dart';

ApiClient api = ApiClient();

Map model = {"USD": "0", "EUR": "0", "YEN": "0", "poundsArgentine": "0"};

class Calculate {
  Calculate() {
    api.requestDataToServer();
  }
  Map convertedValue = model;
  get stocksValues => api.stocks;

  convert(double valueInReais) {
    if (valueInReais > 0) {
      convertedValue = {
        "USD": (valueInReais / api.dolar).toStringAsPrecision(7),
        "EUR": (valueInReais / api.euro).toStringAsPrecision(7),
        "YEN": (valueInReais / api.yen).toStringAsPrecision(7),
        "poundsArgentine":
            (valueInReais / api.poundsArgentine).toStringAsPrecision(7)
      };
    } else {
      convertedValue = model;
    }
  }

  depositAccountIncome() {}
}
