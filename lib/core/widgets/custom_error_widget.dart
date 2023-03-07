import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, required this.ErrMessage})
      : super(key: key);

  final String ErrMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      ErrMessage,
      style: Styles.textStyle16,
      textAlign: TextAlign.center,
    ));
  }
}
