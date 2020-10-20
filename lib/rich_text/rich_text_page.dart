import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RichTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ["hi", "hello", "bye"]
              .map(
                (e) => RichText(
                  text: TextSpan(text: e, children: [
                    TextSpan(
                      text: "Nirmal",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
