import 'package:currency_converter/resources/apiClient.dart';

ApiClient api = ApiClient();

class Calculate {
  Map convertedValue;

  get stocksValues => api.stocks;

  get getModelEmpty =>
      {"USD": "0.00", "EUR": "0.00", "YEN": "0.00", "poundsArgentine": "0.00"};

  Calculate() {
    api.loadCurrentCurrenciesValues();
    this.convertedValue = getModelEmpty;
  }

  convert(dynamic brazilianCurrencyValue) {
    try {
      brazilianCurrencyValue = double.parse(brazilianCurrencyValue);
      brazilianCurrencyValue > 0
          ? this.convertedValue = {
              "USD": (brazilianCurrencyValue / api.dolar).toStringAsFixed(2),
              "EUR": (brazilianCurrencyValue / api.euro).toStringAsFixed(2),
              "YEN": (brazilianCurrencyValue / api.yen).toStringAsFixed(2),
              "poundsArgentine": (brazilianCurrencyValue / api.poundsArgentine)
                  .toStringAsFixed(2)
            }
          : this.convertedValue = getModelEmpty;
    } on FormatException {
      print('Error trying convert value to double, please type a valid double');
      this.convertedValue = getModelEmpty;
    } on Exception catch (_) {
      this.convertedValue = getModelEmpty;
      print('Default exception was called');
    }
  }
}
