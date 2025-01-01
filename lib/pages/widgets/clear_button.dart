import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  final void Function()? onTap;

  const ClearButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        padding: EdgeInsets.all(24.0),
        decoration: BoxDecoration(
            color: Colors.blue[100], borderRadius: BorderRadius.circular(10.0)),
        child: Text(
          "Clear board",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 24.0),
        ),
      ),
    );
  }
}
