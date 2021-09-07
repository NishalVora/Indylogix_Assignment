import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WiderImage extends StatelessWidget {
  static const routeName = 'wider-image';

  final String title;
  final String imageURL;
  final String description;

  WiderImage(this.title, this.imageURL, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Image.network(imageURL),
          SizedBox(height: 10),
          // Text(DateTime.now().toString()),
          Text(
            DateFormat("dd-MM-yy HH:mm").format(
              DateTime.now(),
            ),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(description),
        ],
      ),
    );
  }
}
