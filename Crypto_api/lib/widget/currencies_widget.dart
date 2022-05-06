import 'package:crypto_api/utils/currency_data_source.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CurrenciesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SfDataGrid(
      columns: buildGridColumns(),
      source: CurrencyDataSource,
    );
  }

  List<GridColumns> buildGridColumns() => <GridColumn>[
    GridTextColumn(
      columnName:CurrencyColumn.id.toString(),
      label: buildLabel('ID'),
    ),
    GridTextColumn(
      columnName:CurrencyColumn.rank.toString(),
      label: buildLabel('Rank'),
    ),
    GridTextColumn(
      columnName:CurrencyColumn.price.toString(),
      label: buildLabel('Price'),
    ),
    GridTextColumn(
      columnName:CurrencyColumn.oneHChange.toString(),
      label: buildLabel('Last 1H'),
    ),
    GridTextColumn(
      columnName:CurrencyColumn.oneDChange.toString(),
      label: buildLabel('Last 1D'),
    ),
    GridTextColumn(
      columnName:CurrencyColumn.marketCap.toString(),
      label: buildLabel('Market Cap'),
    ),
  ];
  Widget buildLabel(String text) => Text(
    text,
  );
}