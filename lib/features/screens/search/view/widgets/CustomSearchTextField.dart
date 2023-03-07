import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: "Search",
        suffixIcon:  IconButton(
          onPressed: () {  },
          icon: const Opacity(
              opacity: .8,
              child: Icon(Icons.search,size: 22,)),
        ),

      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder(){
  return OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(12),
  );
}