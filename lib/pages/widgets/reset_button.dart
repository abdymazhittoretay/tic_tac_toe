import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
          color: Colors.blue[100], borderRadius: BorderRadius.circular(10.0)),
      child: Text(
        "Reset game",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 24.0),
      ),
    );
  }
}
