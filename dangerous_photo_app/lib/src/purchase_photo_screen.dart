import 'package:flutter/material.dart';

class PurchasePhotoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Icon(
            Icons.warning,
            size: 200,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Buy the Dangerous Photo'),
        ),
      ],
    );
    ;
  }
}
