import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  final VoidCallback onPressed;
  final bool favorite;

  FavoriteButton({required this.onPressed, required this.favorite});

  @override
  _LoveButtonState createState() => _LoveButtonState();
}

class _LoveButtonState extends State<FavoriteButton> {
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
            color: widget.favorite ? Colors.grey : Colors.red,
            size: 25.0,
          ),
        ),
      ),
    );
  }
}
