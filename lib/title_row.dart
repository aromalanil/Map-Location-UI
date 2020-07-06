import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  final String name, location;
  final double rating;

  TitleRow({this.name, this.location, this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Opacity(
              opacity: .8,
              child: Text(
                location,
                style: TextStyle(fontSize: 14, color: Colors.blueGrey[800]),
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            SizedBox(
              width: 2,
            ),
            Text(rating.toString())
          ],
        )
      ],
    );
  }
}
