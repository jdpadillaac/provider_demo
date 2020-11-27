import 'package:flutter/material.dart';
import 'package:flutter_provider/app/presentation/provider/heroes_info.dart';
import 'package:provider/provider.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: Icon(Icons.access_time_outlined),
          backgroundColor: Colors.red,
          onPressed: () {
            heroesInfo.heroe = 'Iron man';
          },
        ),
        SizedBox(height: 10),
        FloatingActionButton(
          child: Icon(Icons.home_outlined),
          backgroundColor: Colors.blue,
          onPressed: () {
            heroesInfo.heroe = 'Capitán america';
          },
        ),
      ],
    );
  }
}
