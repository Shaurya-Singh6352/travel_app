import 'package:flutter/material.dart';
import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key); // ✅ Ensure key is passed to the super class
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: press,
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(40, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              "See More",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
