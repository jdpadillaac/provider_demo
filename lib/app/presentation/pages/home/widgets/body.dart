import 'package:flutter/material.dart';
import 'package:flutter_provider/app/presentation/provider/heroes_info.dart';
import 'package:provider/provider.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final heroesInfo = Provider.of<HeroesInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer<HeroesInfo>(
          builder: (context, value, child) {
            return Text(
              value.heroe,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
              ),
            );
          },
        ),
      ],
    );
  }
}
