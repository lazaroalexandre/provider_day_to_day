import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_day_to_day/src/controllers/inc_controller.dart';
import 'package:provider_day_to_day/src/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ChangeNotifierProvider(
          child: const HomePage(),
          create: (_) => IncController(),
        ));
  }
}
