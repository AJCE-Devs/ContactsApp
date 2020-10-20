import 'package:flutter/material.dart';

class ChallengingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Really Challenging Task",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
