import 'package:flutter/material.dart';

class LoadingContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: buildContainer(),
          subtitle: buildContainer(),
        ),
        Divider(
          height: 1.0,
        ),
      ],
    );
  }

  Widget buildContainer() {
    return Container(
      color: Colors.grey[300],
      height: 20.0,
      width: 150.0,
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
    );
  }
}
