import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void button() {
    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cards',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
              margin: EdgeInsets.only(top: 40),
                child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(24),
                      alignment: Alignment.topCenter,
                      child: Text('Wallet',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40))),
                  Container(child: IconButton(
                    icon: Icon(Icons.add_circle),
                    onPressed: button,
                    iconSize: 35,
                  ),
                    margin: EdgeInsets.only(left: 170))
                ],
              ),
              Expanded(
                  child: Stack(
                      // alignment: Alignment.bottomCenter,
                      children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 5.0,
                      height: 245.0,
                      width: 382.0,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child:
                            Image.asset('assets/apple.png', fit: BoxFit.cover),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        elevation: 20.0,
                      ),
                    ),
                    Positioned(
                      top: 55.0,
                      left: 5.0,
                      height: 220.0,
                      width: 382.0,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset('assets/boa.jpg', fit: BoxFit.cover),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        color: Colors.blue,
                        elevation: 20.0,
                      ),
                    ),
                    Positioned(
                      height: 250.0,
                      width: 382.0,
                      top: 115.0,
                      left: 5.0,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child:
                            Image.asset('assets/visa.jpg', fit: BoxFit.cover),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        color: Colors.green,
                        elevation: 20.0,
                      ),
                    )
                  ]))
            ]))));
  }
}
