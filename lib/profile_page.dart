import 'package:flutter/material.dart';
import 'package:makale_diyari/controller.dart';

import 'explore_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: renk1,
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.red),
        ),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.edit,
                color: Colors.red,
              ))
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: 60,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 150,
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/halil2.jpg"),
                          fit: BoxFit.cover),
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                      )),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    color: renk2,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 10,
                  child: ClipRRect(
                      clipBehavior: Clip.antiAlias,
                      child: SizedBox(
                          width: 110,
                          height: 110,
                          child: Image.asset("assets/halil2.jpg")),
                      borderRadius: BorderRadius.circular(25)),
                ),
                Positioned(
                  bottom: 50,
                  left: 150,
                  child: Text(
                    'Meryem Demir',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 10,
                  child: Text(
                    'meryem@gmail.com',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ]),
            ),
            Center(
              child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return ExploreCard();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
