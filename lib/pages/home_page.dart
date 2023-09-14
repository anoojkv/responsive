// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responcive/base_widget.dart';
import 'package:responcive/pages/widgets/category_card.dart';
import 'package:responcive/pages/widgets/menu_card.dart';
import 'package:responcive/pages/widgets/row_card.dart';
import 'package:responcive/util/responcive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return BaseWidget(builder: (context, sizingInformation) {
    //   return Scaffold(
    //       body: Center(
    //     child: Text(sizingInformation.toString()),
    //   ));
    // });
    return Scaffold(
      body: ResponsiveBuilder(
        mobileBuilder: (BuildContext context, BoxConstraints constraints) {
          return SafeArea(
            child: SingleChildScrollView(
              // padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(left: 15, top: 30),
                            color: Color.fromRGBO(98, 75, 255, 1),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Create Project",
                                  style: TextStyle(
                                      fontSize: 18,
                                      letterSpacing: .5,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 280,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(
                              left: constraints.maxWidth * 0.056,
                              right: constraints.maxWidth * 0.056,
                              top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CategoryCard(
                                    width: constraints.maxWidth * 0.43,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: constraints.maxWidth * 0.056,
                                        bottom: constraints.maxWidth * 0.056),
                                    child: CategoryCard(
                                      width: constraints.maxWidth * 0.43,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CategoryCard(
                                    width: constraints.maxWidth * 0.43,
                                  ),
                                  Container(
                                    // margin: EdgeInsets.only(top: 20, bottom: 20),
                                    child: CategoryCard(
                                      width: constraints.maxWidth * 0.43,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * 0.64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey.shade400)),
                        margin: EdgeInsets.only(left: 45, top: 15),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Text(
                                    "Teams",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10),
                              color: Colors.grey,
                              child: Row(
                                children: [
                                  Container(
                                    width: constraints.maxWidth * 0.25,
                                    height: 20,
                                    // color: Colors.blue,
                                    child: Text("Name"),
                                  ),
                                  Container(
                                    width: constraints.maxWidth * 0.2,
                                    margin:
                                        EdgeInsets.only(left: 10, right: 10),

                                    height: 20,
                                    // color: Colors.green,
                                    child: Text("Role"),
                                  ),
                                  Container(
                                    width: constraints.maxWidth * 0.1,
                                    height: 20,
                                    child: Text("Last Activity"),
                                  )
                                ],
                              ),
                            ),
                            RowCard(
                              constraints: constraints,
                            ),
                            RowCard(
                              constraints: constraints,
                            ),
                            RowCard(
                              constraints: constraints,
                            ),
                            RowCard(
                              constraints: constraints,
                            ),
                            RowCard(
                              constraints: constraints,
                            ),
                            RowCard(
                              constraints: constraints,
                            ),
                            RowCard(
                              constraints: constraints,
                            ),
                            RowCard(
                              constraints: constraints,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        desktopBuilder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            // padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                constraints.maxWidth > 1400
                    ? Container(
                        width: constraints.maxWidth * 0.1,
                        // height: window.screen!.height!.toDouble(),

                        // color: Colors.blueAccent,
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Text(
                                "Dash UI",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              ),
                            ),
                            MenuCard(
                              icon: Icon(Icons.dashboard),
                              name: "About",
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              child: MenuCard(
                                icon: Icon(Icons.personal_injury),
                                name: "Project Activity",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              child: MenuCard(
                                icon: Icon(Icons.read_more),
                                name: "Project Report",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              child: MenuCard(
                                icon: Icon(Icons.personal_injury),
                                name: "Report",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              child: MenuCard(
                                icon: Icon(Icons.personal_injury),
                                name: "Page item",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              child: MenuCard(
                                icon: Icon(Icons.personal_injury),
                                name: "UI ITEM ",
                              ),
                            )
                          ],
                        ),
                      )
                    : SizedBox(),
                Container(
                  width: constraints.maxWidth < 1400
                      ? constraints.maxWidth * 1.0
                      : constraints.maxWidth * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 200,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15, top: 30),
                                  color: Color.fromRGBO(98, 75, 255, 1),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Create Project",
                                        style: TextStyle(
                                            fontSize: 18,
                                            letterSpacing: .5,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 80,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.transparent,
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.only(
                                    left: constraints.maxWidth * 0.08,
                                    right: constraints.maxWidth * 0.08),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CategoryCard(
                                      width: constraints.maxWidth * 0.2,
                                    ),
                                    CategoryCard(
                                      width: constraints.maxWidth * 0.2,
                                    ),
                                    CategoryCard(
                                      width: constraints.maxWidth * 0.2,
                                    ),
                                    CategoryCard(
                                      width: constraints.maxWidth * 0.2,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                            top: constraints.maxHeight * 0.04,
                            left: constraints.maxWidth * 0.01),

                        width: constraints.maxWidth,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.5,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border:
                                      Border.all(color: Colors.grey.shade400)),
                              // margin: EdgeInsets.only(
                              //   left: constraints.maxWidth * 0.10,
                              // ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey))),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Teams",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 15, top: 15, bottom: 15),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(241, 245, 249, 1),
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade400))),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: constraints.maxWidth * 0.18,
                                          height: 20,
                                          // color: Colors.blue,
                                          child: Text("Name"),
                                        ),
                                        Container(
                                          width: constraints.maxWidth * 0.2,
                                          height: 20,
                                          // color: Colors.green,
                                          child: Text("Role"),
                                        ),
                                        Container(
                                          width: constraints.maxWidth * 0.08,
                                          height: 20,
                                          child: Text("Last Activity"),
                                        )
                                      ],
                                    ),
                                  ),
                                  RowCard(
                                    constraints: constraints,
                                  ),
                                  RowCard(
                                    constraints: constraints,
                                  ),
                                  RowCard(
                                    constraints: constraints,
                                  ),
                                  RowCard(
                                    constraints: constraints,
                                  ),
                                  RowCard(
                                    constraints: constraints,
                                  ),
                                  RowCard(
                                    constraints: constraints,
                                  ),
                                  RowCard(
                                    constraints: constraints,
                                  ),
                                  RowCard(
                                    constraints: constraints,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: constraints.maxWidth * 0.34,
                              margin: EdgeInsets.only(
                                  left: constraints.maxWidth * 0.03),
                              height: 550,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                children: [],
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
          );
        },
        tabletBuilder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            // padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 15, top: 30),
                          color: Color.fromRGBO(98, 75, 255, 1),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Create Project",
                                style: TextStyle(
                                    fontSize: 18,
                                    letterSpacing: .5,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 280,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent,
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            left: constraints.maxWidth * 0.080,
                            right: constraints.maxWidth * 0.080,
                            top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CategoryCard(
                                  width: constraints.maxWidth * 0.4,
                                ),
                                CategoryCard(
                                  width: constraints.maxWidth * 0.4,
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CategoryCard(
                                    width: constraints.maxWidth * 0.4,
                                  ),
                                  CategoryCard(
                                    width: constraints.maxWidth * 0.4,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.838,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey.shade400)),
                      margin: EdgeInsets.only(
                          left: constraints.maxWidth * 0.080, top: 15),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Text(
                                  "Teams",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            color: Colors.grey,
                            child: Row(
                              children: [
                                Container(
                                  width: constraints.maxWidth * 0.25,
                                  height: 20,
                                  // color: Colors.blue,
                                  child: Text("Name"),
                                ),
                                Container(
                                  width: constraints.maxWidth * 0.4,
                                  height: 20,
                                  // color: Colors.green,
                                  child: Text("Role"),
                                ),
                                Container(
                                  width: constraints.maxWidth * 0.1,
                                  height: 20,
                                  child: Text("Last Activity"),
                                )
                              ],
                            ),
                          ),
                          RowCard(
                            constraints: constraints,
                            isDesktop: false,
                          ),
                          RowCard(
                            constraints: constraints,
                            isDesktop: false,
                          ),
                          RowCard(
                            constraints: constraints,
                            isDesktop: false,
                          ),
                          RowCard(
                            constraints: constraints,
                            isDesktop: false,
                          ),
                          RowCard(
                            constraints: constraints,
                            isDesktop: false,
                          ),
                          RowCard(
                            constraints: constraints,
                            isDesktop: false,
                          ),
                          RowCard(
                            constraints: constraints,
                            isDesktop: false,
                          ),
                          RowCard(
                            constraints: constraints,
                            isDesktop: false,
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
