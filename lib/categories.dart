import 'package:flutter/material.dart';

class Catergories extends StatefulWidget {
  @override
  State<Catergories> createState() => _CatergoriesState();
}

class _CatergoriesState extends State<Catergories> {
  int curretSelectedItem = 0;
  @override
  Widget build(BuildContext context) {
    var items = 10;
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        margin: EdgeInsetsDirectional.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) => Stack(
            children: [
              Container(
                height: 90,
                width: 90,
                margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      curretSelectedItem = index;
                    });
                  },
                  child: Card(
                    color: index == curretSelectedItem
                        ? Colors.black.withOpacity(0.7)
                        : Colors.white,
                    child: Icon(
                      Icons.fastfood,
                      color: index == curretSelectedItem
                          ? Colors.white
                          : Colors.black.withOpacity(0.7),
                    ),
                    elevation: 3,
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
                  width: 90,
                  child: Row(
                    children: [
                      Spacer(),
                      Text("Burgir"),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
