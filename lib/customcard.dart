import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model.dart';

class CustomCard extends StatefulWidget {
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  var data = CardData('lib/images/wings.jpg', 'Honey Mustard Wings Honey Mustard Wings',
      'Mushroom Pepper Sauce Mushroom Pepper Sauce', '2250');

  _CustomCardState();

  @override
  Widget build(BuildContext context) {
    var refHeight = MediaQuery.of(context).size.height;
    var refWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: 32.00, top: 50.00),
      alignment: Alignment.center,
      height: refHeight * 0.40,
      width: refWidth * 0.27,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage('${data.image}'), fit: BoxFit.cover)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
             decoration: BoxDecoration(
               borderRadius: const BorderRadius.only(
                 bottomRight: Radius.circular(10.0),
                 bottomLeft: Radius.circular(10.0),
                 ),
               color: const Color(0xFFFDD10D),
             ),

              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10.00, top: 10.00),
                      child: Text(
                        '${data.title}',
                        style: GoogleFonts.robotoSlab(
                          textStyle: Theme.of(context).textTheme.display1,
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      )
                      ),
                  Stack(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10.00),
                          alignment: Alignment.topLeft,
                          child: Text(
                            '${data.description}',
                            style: GoogleFonts.robotoSlab(
                              textStyle: Theme.of(context).textTheme.display1,
                              fontSize: 18,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w300,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          )),
                      Container(
                        height: 65,
                        width: 65,
                        margin: EdgeInsets.only(left: 140, top: 30),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        margin: EdgeInsets.only(top: 55.00, left: 10.00),
                        child: Text(
                          'PKR ${data.price}',
                          style: GoogleFonts.robotoSlab(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 22,
                            color: const Color(0xFFE72B34),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
//                  Container(
//                    //color: Colors.black,
//                    height: 63.60,
//                      child: Row(
//                        //mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          Container(
//                            margin: EdgeInsets.only(left: 10.00,bottom: 10),
//                            child: Text(
//                              'PKR ${data.price}',
//                              style: GoogleFonts.robotoSlab(
//                                textStyle: Theme.of(context).textTheme.display1,
//                                fontSize: 22,
//                                color: const Color(0xFFE72B34),
//                                fontWeight: FontWeight.w300,
//                                ),
//                              ),
//                            ),
//                          Container(
//                            margin: EdgeInsets.only(left: 40.00, bottom: 10.00,),
//                            height: 55,
//                            width: 55,
//                            decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(60),
//                                color: const Color(0xFFE32630)),
//                            child: Icon(
//                              Icons.shopping_cart,
//                              color: Colors.white,
//                              size: 30,
//                              ),
//                            )
                ],
              ),
              //    )
              //  ],
              // ),
            ),
          )
        ],
      ),
    );
  }
}
