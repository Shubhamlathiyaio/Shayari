import 'dart:html';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shayari/Data.dart';

class forth extends StatefulWidget {
  List a;
  int index;

  forth(this.a, this.index);

  @override
  State<forth> createState() => _forthState();
}

List<Color> co = [Colors.pink, Colors.pink];
List<Color> coo = [Colors.pink, Colors.pink];
int? R;

random() {
  do {
    R = Random().nextInt(4);
  } while (R == 0 || R == 1);
  coo = d.co;
  coo.shuffle();
  coo = coo.sublist(0, R);
  return coo;
}

class _forthState extends State<forth> {
  @override
  Widget build(BuildContext context) {
    double size = (MediaQuery.of(context).size.height) -
        (MediaQuery.of(context).padding.top) -
        (kToolbarHeight) -
        10;
    List<Color> gradi = random();
    return Scaffold(
      appBar: AppBar(title: Text("${d.title[widget.index]}")),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Container(
            decoration: BoxDecoration(gradient: LinearGradient(colors: co)),
            width: double.infinity,
            height: size - 300,
            child: Center(child: Text("data", style: TextStyle(fontSize: 36))),
          )),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Expanded(
            child: Container(
                color: Colors.brown,
                width: double.infinity,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: size,
                                    child: GridView.builder(
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2),
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                            onTap: () {
                                              co = [
                                                d.co[index],
                                                d.co[index + 1]
                                              ];
                                              Navigator.pop(context);
                                              setState(() {});
                                            },
                                            child: Container(
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                      colors: [
                                                    d.co[index],
                                                    d.co[index + 1]
                                                  ])),
                                            ));
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                                height: 40,
                                width: 40,
                                padding: EdgeInsets.all(2),
                                color: Colors.white,
                                child:
                                    Image.asset("Assets/Images/Icon/lens.jpg")),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                              onTap: () {
                                co = gradi;
                                gradi = random();
                                setState(() {});
                              },
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: gradi))))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: size,
                                    child: GridView.builder(
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 5),
                                      itemCount: d.co.length,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                            onTap: () {
                                              co = [d.co[index], d.co[index]];
                                              Navigator.pop(context);
                                              setState(() {});
                                            },
                                            child: Container(
                                              color: d.co[index],
                                              margin: EdgeInsets.all(10),
                                            ));
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                                height: 30,
                                width: 150,
                                color: Colors.red,
                                child: Center(child: Text("Background"))),
                          ),
                          Container(
                              height: 30,
                              width: 150,
                              color: Colors.red,
                              child: Center(child: Text("Text Color"))),
                          Container(
                              height: 30,
                              width: 150,
                              color: Colors.red,
                              child: Center(child: Text("Share"))),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 30,
                              width: 150,
                              color: Colors.red,
                              child: Center(child: Text("Font"))),
                          Container(
                              height: 30,
                              width: 150,
                              color: Colors.red,
                              child: Center(child: Text("Emoji"))),
                          Container(
                              height: 30,
                              width: 150,
                              color: Colors.red,
                              child: Center(child: Text("Text Size"))),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )),
          )),
        ],
      ),
    );
  }
}
