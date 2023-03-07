import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: (){
              GoRouter.of(context).push(AppRouter.kHomeView);
            }, icon: const Icon(Icons.close)),
        IconButton(
            onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined)),
      ],

    );
  }
}