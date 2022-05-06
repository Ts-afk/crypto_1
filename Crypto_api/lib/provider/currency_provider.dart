import 'package:crypto_api/api/crypto_api.dart';
import 'package:crypto_api/model/currency.dart';
import 'package:crypto_api/utils/currency_data_source.dart';
import 'package:flutter/cupertino.dart';

class CurrencyProvider extends ChangeNotifier{
  CurrencyDataSource? currencyDataSource;
  List<Currency> currencies = [];

  CurrencyProvider(){
    loadCurrencies();

  }
  Future loadCurrencies() async{
    final currencies = await CryptoApi.getCurrencies();
    this.currencies= currencies;
    currencyDataSource = CurrencyDataSource(currencies: currencies);

  }
}