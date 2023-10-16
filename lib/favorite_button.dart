import 'package:flutter/material.dart';

class LoveButton extends StatefulWidget {
  final VoidCallback onPressed;
  final bool isLoved;

  LoveButton({required this.onPressed, required this.isLoved});

  @override
  _LoveButtonState createState() => _LoveButtonState();
}

class _LoveButtonState extends State<LoveButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Center(
          child: Icon(
            Icons.favorite,
            color: widget.isLoved ? Colors.grey : Colors.red,
            size: 25.0,
          ),
        ),
      ),
    );
  }
}
