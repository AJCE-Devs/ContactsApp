import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Center(
            child: Text('Add Contact'),
          ),
          backgroundColor: Colors.grey[700],
        ),
        body: Addcontact()),
  ));
}

class Addcontact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/shamil.jpg'),
              )),
        ),
        SizedBox(
          height: 100,
          width: 200,
          child: Divider(
            color: Colors.black,
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter Name',
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Enter Number',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            //null
          },
          child: Text('Submit'),
        ),
      ]),
    );
  }
}
