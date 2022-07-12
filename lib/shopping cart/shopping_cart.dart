import 'package:flutter/material.dart';
import 'package:flutter_app/fruitmk/Product_fruit.dart';

class Shoppingcart extends StatefulWidget {
  const Shoppingcart({Key? key}) : super(key: key);

  @override
  State<Shoppingcart> createState() => _ShoppingcartState();
}

class _ShoppingcartState extends State<Shoppingcart> {
  String dropdownValue = ' 440001  Nagpur ,Maharashtra';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Product produc;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(105, 160, 58, 1),
        title: Transform(
            transform: Matrix4.translationValues(-22, 0, 0),
            child: Text(
              "Shopping Cart",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.080,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
                child: Container(
                  //color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/ic_GPS.png"),
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                        //elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        underline: Container(
                          height: 1,
                          color: Colors.white24,
                        ),
                        // gach duoi
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          ' 440001  Nagpur ,Maharashtra',
                          '21/2201 Indo,Magagasca',
                          '23/2201 1C Myanquata,Mariadow',
                          '18 Nam Dinh, VietNam '
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 15),
                            ),
                          );
                        }).toList(),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Changes Address",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(112, 137, 240, 1)),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: size.height * 0.039,
              width: double.infinity,
              color: Color.fromRGBO(230, 230, 230, 1),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Vegetables",
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(57, 57, 57, 1)),
                    )),
              ),
            ),
            Container(
              //width: double.infinity,
              color: Colors.amber,
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/images/ic_dautay.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    height: 100,
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Brocoli",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "RS 40 Saved",
                                  style: TextStyle(
                                      color: Color.fromRGBO(118, 158, 73, 1),
                                      fontSize: 13),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Icon(
                                  Icons.delete_rounded,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: '\$8.99',
                            style: new TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
