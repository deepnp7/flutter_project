import 'package:flutter/material.dart';

class Burgirlist extends StatefulWidget {
  @override
  State<Burgirlist> createState() => _BurgirlistState();
}

class _BurgirlistState extends State<Burgirlist> {
  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget baconImage = Container(
      height: 135,
      child: Image.asset("images/burger21.png"),
    );

    Widget chickenImage = Container(
      height: 145,
      child: Image.asset("images/burger22.png"),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: EdgeInsets.only(top: 15),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reverse = index.isEven;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin: EdgeInsets.only(
                    left: 10,
                    right: index == items ? 10 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      //  tO dO nAVIGATOR
                    },
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              "Burgir",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Spacer(),
                                Text(
                                  "Rs. 49",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Spacer(),
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      elevation: 4.5,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 40 : 40,
                  child: GestureDetector(
                    onTap: () {
                      // tO dO nAVIGATOR
                    },
                    child: reverse ? chickenImage : baconImage,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
