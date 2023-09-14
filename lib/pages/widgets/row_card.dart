import 'package:flutter/material.dart';

class RowCard extends StatelessWidget {
  final BoxConstraints? constraints;
  final bool isDesktop;
  const RowCard({super.key, this.constraints, this.isDesktop = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 13, bottom: 15),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: isDesktop
                ? constraints!.maxWidth * 0.18
                : constraints!.maxWidth * 0.25,
            // height: 20,
            // color: Colors.blue,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(52)),
                  child: Image.network(
                    "https://dash-ui-admin-template.vercel.app/images/avatar/avatar-2.jpg",
                    height: 50,
                    width: 50,
                  ),
                ),
                Container(
                  width: isDesktop
                      ? constraints!.maxWidth * 0.12
                      : constraints!.maxWidth * 0.1,
                  margin: EdgeInsets.only(left: constraints!.maxWidth * 0.005),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "anoojkvarghese",
                        style: TextStyle(fontSize: isDesktop ? 15 : 12),
                      ),
                      Text(
                        "anoojkvarghese@gmail.com",
                        style: TextStyle(fontSize: isDesktop ? 15 : 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: isDesktop
                ? constraints!.maxWidth * 0.2
                : constraints!.maxWidth * 0.4,
            // margin: EdgeInsets.only(left: 10, right: 10),
            // height: 20,
            // color: Colors.green,
            child: Text(
              "Flutter Developer",
              style: TextStyle(fontSize: isDesktop ? 15 : 12),
            ),
          ),
          Container(
            width: constraints!.maxWidth * 0.08,
            // height: 20,
            child: Text(
              "3 May 2023",
              style: TextStyle(fontSize: isDesktop ? 15 : 12),
            ),
          )
        ],
      ),
    );
  }
}
