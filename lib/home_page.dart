import 'package:dss/orde_data_table.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _homeStatepage();
}

class _homeStatepage extends State<Homepage> {
  final faker = Faker();

  @override
  void initState() {
    super.initState();
    SetNewCustomer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('order App'),
        actions: [
          IconButton(
              onPressed: SetNewCustomer, icon: const Icon(Icons.person_add)),
          IconButton(
              onPressed: addFakeOrderForCurrentCustomer,
              icon: const Icon(Icons.attach_money))
        ],
      ),
      body: OrderDataTable(onSort: (columnIndex, ascendig) {}),
    );
  }

  void SetNewCustomer() {
    print('Name: ${faker.person.name()}');
  }

  void addFakeOrderForCurrentCustomer() {
    print('price: ${faker.randomGenerator.integer(500, min: 10)}');
  }
}
