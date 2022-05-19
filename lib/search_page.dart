import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TextField(
              style: TextStyle(
                height: 1,
                fontSize: 20,
              ),
              maxLines: 1,
              scrollPadding: EdgeInsets.only(bottom: 0, left: 2),
              cursorHeight: 35,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.all(6),
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                fillColor: Colors.white,
                enabled: true,
                hintText: "makale veye kişi",
              ),
              cursorColor: Colors.red,
              showCursor: false,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
    );
  }
}
