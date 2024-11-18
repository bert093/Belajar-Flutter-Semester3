import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp ({super.key});

  final List<String> imageurl = [
    'images/01e3ecb49096bce798880a6d8ff6e1b0.png',
    'images/fd0e39e66846993bcf93b09fffcc88c1.png',
    'images/fe6cb02966b21f7a995a0db9b87422ab.png'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(26, 26, 29, 1),
        appBar: AppBar(
          title: Text(
            'Finance App',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Column( // dalam konteks tata letak seperti Column, setiap child harus memiliki batasan ruang yang jelas.
          children: [
            Expanded ( // sehingga harus ada expanded
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: GridView.builder( // widget GridView tidak memiliki batasan tinggi (height constraint) 
                //* parameter GridDelegate adalah yang menentukan tata letak dalam widget GridView.builder termasuk kolom dan pengaturan lainnya 
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: imageurl.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        imageurl[index],
                        fit: BoxFit.cover,
                      )
                    );
                  }
                )
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(26, 26, 29, 1),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.house,
                    color: Colors.white,
                  )
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(26, 26, 29, 1),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.solidBookmark,
                    color: Colors.white,
                  )
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(26, 26, 29, 1),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.cartShopping,
                    color: Colors.white,
                  )
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(26, 26, 29, 1),
                  ),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 28,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Ini contoh diluar widget',
              style: TextStyle(color: Colors.white),
            ),
          ],
        )
      ),
    );
  }
}