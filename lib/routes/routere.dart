import 'package:flutter/material.dart';
import 'package:weatherforecast/screens/drawer/about/about_sreen.dart';
import 'package:weatherforecast/screens/drawer/cities/cities_sreen.dart';
import 'package:weatherforecast/screens/drawer/rateus/rate_us_screen.dart';
import 'package:weatherforecast/screens/drawer/share/share_screen.dart';
import 'package:weatherforecast/screens/drawer/support/support_screen.dart';
import 'package:weatherforecast/screens/home/home_screen.dart';
import 'package:weatherforecast/screens/search/search_screen.dart';

class MyRoutes {
  static final MyRoutes _instace = MyRoutes.init();
  static MyRoutes get instance => _instace;
  MyRoutes.init();

  Route? onGenerateRoute(RouteSettings s) {
    // ignore: unused_local_variable
    var args = s.arguments;

    switch (s.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/search':
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case '/cities':
        return MaterialPageRoute(builder: (_) => const CitiesScreen());
      case '/about':
        return MaterialPageRoute(builder: (_) =>  AboutScreen());
      case '/rate us':
        return MaterialPageRoute(builder: (_) => const RateUsScreen());
      case '/support':
        return MaterialPageRoute(builder: (_) =>  SupportScreen());
      case '/share':
        return MaterialPageRoute(builder: (_) => const ShareScreen());
    }
    return null;
  }
}
