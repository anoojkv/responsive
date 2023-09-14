import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final double width;
  const CategoryCard({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: width,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: Colors.grey.shade300)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Projects",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "128",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              ),
              Text("2 Completed"),
            ],
          )
        ],
      ),
    );
  }
}
