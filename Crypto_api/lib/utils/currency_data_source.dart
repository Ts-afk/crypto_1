import 'package:crypto_api/model/currency.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

enum CurrencyColumn { id, rank, price, oneHChange, oneDChange, marketCap }

class CurrencyDataSource extends DataGridSource {
  late List<DataGridRow> _currencies;

  @override
  List<DataGridRow> get rows => _currencies;

  CurrencyDataSource({required List<Currency> currencies}){
    buildDataGrid(currencies);
  }

  void buildDataGrid(List<Currency> currencies) => _currencies = currencies
      .map<DataGridRow>(
      (currency) => DataGridRow(
        cells: CurrencyColumn.values
            .map(
            (column) => DataGridCell<Currency>(
              columnName: column.toString(),
              value: currency,
            ),
        )
        .toList(),
      ),
  )
  .toList();

  @override
  DataGridRowAdapter buildRow(DataGridRow row) => DataGridRowAdapter(
      cells: row.getCells().map<Widget>((dataGridCell) {
        return Text('hello');
      }).toList());
}
