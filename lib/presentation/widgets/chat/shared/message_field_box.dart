import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              // ignore: prefer_const_constructors
              borderSide: BorderSide(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(35)),
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: () {},
          )),
    );
  }
}
