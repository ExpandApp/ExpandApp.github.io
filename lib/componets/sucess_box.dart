import 'package:flutter/material.dart';
import 'package:linkexp/constants/constants.dart';

class SucessBox extends StatelessWidget {
  SucessBox({this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    if (message == null) return Container();
    return Container(
      color: Constants.greenAirbnb,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Text(
              message.toString(),
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
