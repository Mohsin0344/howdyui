import 'package:flutter/material.dart';
import 'package:howdyui/customcard.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var refHeight = MediaQuery.of(context).size.height;
    var refWidth = MediaQuery.of(context).size.height;
    return new Scaffold(
      //body: CustomCard(),
      body: new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/images/Mask Group 1.png'),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Container(
              height: refHeight * 0.08,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: refHeight * 0.08,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('lib/images/Howdy Logo.png'))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide:
                              new BorderSide(color: Colors.white, width: 1.00)),
                      hintText: 'Search',
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      suffixStyle: const TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Container(
                child: CustomCard(),

              ),

          ],
        ),
      ),
    );
  }
}
