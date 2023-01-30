import 'package:flutter/material.dart';

class TextFormFieldd extends StatelessWidget {
  const TextFormFieldd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        fillColor: Color(0xffFFFFFF),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xfff6f7f9))),
        // isDense: true,
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        hintText: 'Search todo',
        hintStyle: TextStyle(fontSize: 12),
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white24),
        ),
      ),
    );
  }
}
