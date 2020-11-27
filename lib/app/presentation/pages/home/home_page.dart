import 'package:flutter/material.dart';
import 'package:flutter_provider/app/presentation/pages/home/widgets/body.dart';
import 'package:flutter_provider/app/presentation/pages/home/widgets/super_action_button.dart';
import 'package:flutter_provider/app/presentation/provider/heroes_info.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static String routeName = 'home';
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(heroesInfo.heroe),
      ),
      body: Center(child: HomePageBody()),
      floatingActionButton: CustomActionButton(),
    );
  }
}
