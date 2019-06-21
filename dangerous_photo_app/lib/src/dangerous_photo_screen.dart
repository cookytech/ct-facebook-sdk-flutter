import 'package:flutter/material.dart';

class DangerousPhotoScreen extends StatelessWidget {
  final String imageUrl = 'https://i.ibb.co/HB9vNpb/VK.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 400,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 400,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Here is the Photo!!',
          style: Theme.of(context).textTheme.display1,
        ),
      ],
    );
  }
}
