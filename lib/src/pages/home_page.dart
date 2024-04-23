import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_day_to_day/src/controllers/inc_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Provider'),
      ),
      body: Center(child: Consumer<IncController>(

        builder: (__, value, _) => Text(value.value.toString()),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Provider.of<IncController>(context, listen: false).incrementValue(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
