import 'package:flutter/material.dart';
import 'package:makale_diyari/controller.dart';

import 'explore_card.dart';

int? abc;

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: renk1,
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.message))],
        backgroundColor: Colors.transparent,
        title: Text(
          'Explore',
          style: TextStyle(color: Colors.red, fontSize: 28),
        ),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return ExploreCard();
            }),
      ),
    );
  }
}
