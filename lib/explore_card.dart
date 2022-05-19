import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'controller.dart';

List<String> _makale = [
  "Bu efsane Arap edebiyatında 10. yüzyılda çok yaygın bir hale gelmiş, Mecnun'a ait olduğu söylenen şiirlerin arasına nesirler de eklenerek hikaye haline getirilmiştir. Bu konu daha sonra Fars ve Türk edebiyatlarında da işlenmiştir. Bunların arasında en ünlüsü Fuzuli'nin 1535'te yazdığı Leylâ vü Mecnun adlı mesnevisidir.Fuzuli,Leyla ve Mecnun mesnevisini istek üzerine yazmıştır. Kanuni Sultan Sü­leyman Bağdat şehrini ele ge­çirdikten sonra burada toplanan bilim ve sanat adamları, Fu­zuli'den, bu türde bir eser yazmalarını istemişler, bunu bir çeşit sınanma sayan Fuzuli de 1535 yılında eserini tamamlayıp Bağdat valisi Üveys Paşa'ya sunmuştur."
];

class ExploreCard extends StatelessWidget {
  const ExploreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: renk2,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 22,
                      backgroundImage: AssetImage("assets/halil2.jpg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Meryem Demir',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ],
                ),
                ElevatedButton(onPressed: () {}, child: Text('Takip Et'))
              ],
            ),
          ),
          Container(
            height: 280,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                _makale[0],
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: null, icon: Icon(Icons.thumb_up)),
                    IconButton(onPressed: null, icon: Icon(Icons.thumb_down)),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.sms,
                        color: Colors.blue,
                      ),
                      disabledColor: Colors.grey,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                    child: Text(
                      'more',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
