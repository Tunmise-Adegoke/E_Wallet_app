import 'package:flutter/material.dart';

class TextfieldContainer extends StatelessWidget {
  TextfieldContainer({
    Key? key,
  }) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(40),
        ),
        child: TextField(
          controller: _controller,
          textAlign: TextAlign.center,
          showCursor: false,
          style: const TextStyle(fontSize: 40),
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
