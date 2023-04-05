import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/provider/add_cities_list_provider.dart';
import 'package:weatherforecast/provider/get_data_provider.dart';
import 'package:weatherforecast/provider/search_provider.dart';
import 'package:weatherforecast/routes/routere.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SearchProvider()),
        ChangeNotifierProvider(create: (_) => GetDataProvider()),
        ChangeNotifierProvider(create: (_) => AddCitiesListProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      onGenerateRoute: MyRoutes.instance.onGenerateRoute,
      initialRoute: '/support',
    );
  }
}
