import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar Demo'),
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.call),
                ),
                Tab(
                  icon: Icon(Icons.drafts),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Center(
                  child: Text("Call"),
                ),
                Center(
                  child: Text('Draft'),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
