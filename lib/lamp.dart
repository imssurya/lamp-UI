import 'package:flutter/material.dart';

class Lamp extends StatefulWidget {
  const Lamp({Key key}) : super(key: key);

  @override
  _LampState createState() => _LampState();
}

class _LampState extends State<Lamp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 231, 231, 232),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://image.freepik.com/free-photo/white-pillow-bed-decoration-interior-bedroom_74190-11597.jpg'),
              ),
            ),
            height: MediaQuery.of(context).size.height * 3 / 4,
            child: Placeholder(),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              brightness: Brightness.light,
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: <Widget>[
                Container(
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.black,
                  ),
                  width: 70,
                  // height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                )
              ],
              leading: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            left: 0,
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                height: 250,
                width: MediaQuery.of(context).size.width,
                // color: Colors.redAccent,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemExtent: MediaQuery.of(context).size.width * 0.8,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        // child: Placeholder(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
