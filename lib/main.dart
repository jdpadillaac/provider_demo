import 'package:flutter/material.dart';
import 'package:flutter_provider/app/presentation/pages/home/home_page.dart';
import 'package:flutter_provider/app/presentation/utils/routes.dart';
import 'package:provider/provider.dart';

import 'app/presentation/provider/heroes_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => HeroesInfo(),
  //     child: MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       title: 'Provider demo',
  //       initialRoute: HomePage.routeName,
  //       routes: appRoutes,
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HeroesInfo()),
      ],
      // create: (context) => HeroesInfo(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider demo',
        initialRoute: HomePage.routeName,
        routes: appRoutes,
      ),
    );
  }
}
