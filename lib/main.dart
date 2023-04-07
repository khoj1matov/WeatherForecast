import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/provider/cities_list_provider.dart';
import 'package:weatherforecast/provider/email_send_provider.dart';
import 'package:weatherforecast/provider/image_picker_provider.dart';
import 'package:weatherforecast/provider/search_provider.dart';
import 'package:weatherforecast/routes/routere.dart';
import 'package:weatherforecast/services/get_cities_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetCitiesService.getData();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SearchProvider()),
        ChangeNotifierProvider(create: (_) => EmailSendProvider()),
        ChangeNotifierProvider(create: (_) => ImagePickerProvider()),
        ChangeNotifierProvider(create: (_) => CitiesListProvider()),
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
      initialRoute: '/home',
    );
  }
}
