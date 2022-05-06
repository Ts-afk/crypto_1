import 'dart:convert';
import 'package:crypto_api/model/currency.dart';
import 'package:http/http.dart' as http;

class CryptoApi {
  static final _key ='890af40819bdbb66ad77314447fe56504c3cf35f';

  static Future<List<Currency>> getCurrencies() async {
    final url=
        'https://api.nomics.com/v1/currencies/ticker?key=_key&ids=BTC,ETH,XRP&interval=1d,30d&convert=EUR&platform-currency=ETH&per-page=100&page=1';

    final response = await http.get(Uri.parse(url));
    final body = json.decode(response.body) as List;

    return body.map((item) => Currency.fromJson(item)).toList();
  }
}