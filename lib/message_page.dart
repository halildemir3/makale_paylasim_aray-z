import 'package:flutter/material.dart';
import 'package:makale_diyari/controller.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: renk1,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 34,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/halil2.jpg"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Meryem Demir",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )),
                Positioned(
                  bottom: 100,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: TextField(
                            style: const TextStyle(
                              height: 1,
                              fontSize: 20,
                            ),
                            maxLines: 1,
                            scrollPadding:
                                const EdgeInsets.only(bottom: 0, left: 2),
                            cursorHeight: 35,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(6),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              fillColor: Colors.white,
                              enabled: true,
                              hintText: "makale veye kişi",
                            ),
                            cursorColor: Colors.red,
                            showCursor: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
