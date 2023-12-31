import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import '../../core/colors/colors.dart';
import '../../core/constants/constant.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index, required this.imageUrl});
  final int index;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  )),
            ),
          ],
        ),
        Positioned(
          left: 20,
          bottom: -15,
          child: BorderedText(
            strokeWidth: 5.0,
            strokeColor: kWhiteColor,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                fontSize: 75,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                decorationColor: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
