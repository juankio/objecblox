import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderDataTable extends StatefulWidget {
  final void Function(int columnIndex, bool ascending) onSort;
  const OrderDataTable({super.key, required this.onSort});

  @override
  State<OrderDataTable> createState() => _OrderDataTableState();
}

class _OrderDataTableState extends State<OrderDataTable> {
  bool _sortAscending = true;
  int _sortColumIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: DataTable(
            sortColumnIndex: _sortColumIndex,
            sortAscending: _sortAscending,
            columns: [
              DataColumn(label: Text('Number'), onSort: _onDataColumnSort),
              DataColumn(
                label: Text('Customer'),
              ),
              DataColumn(
                  label: Text('Precio'),
                  numeric: true,
                  onSort: _onDataColumnSort),
              DataColumn(
                label: Container(),
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text('Id'),
                ),
                DataCell(Text('Customer Name'), onTap: () {}),
                DataCell(
                  Text('\$PRICE'),
                ),
                DataCell(Icon(Icons.delete), onTap: () {}),
              ]),
            ],
          ),
        ));
  }

  void _onDataColumnSort(int columnIndex, bool ascending) {}
}
