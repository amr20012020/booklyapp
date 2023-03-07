import 'package:booklyapp/features/screens/search/view/widgets/search_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const SafeArea(
            child: SearchViewBody()));
  }
}
