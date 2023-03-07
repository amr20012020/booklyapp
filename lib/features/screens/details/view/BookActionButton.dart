import 'package:booklyapp/core/utils/launch_url.dart';
import 'package:booklyapp/core/widgets/custom_button.dart';
import 'package:booklyapp/features/screens/Home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksActionButton extends StatelessWidget {
  const BooksActionButton({Key? key,required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomButton(
          backgroundColor: Colors.white,
          textColor: Colors.black,
          text: "Free",
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12)),
        ),
        ),
        Expanded(child: CustomButton(
          backgroundColor: Color(0xffEF8262),
          textColor: Colors.white,
          text: getText(bookModel),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12)),
          onPressed: () async {
           // launchCustomUrl(context, bookModel.volumeInfo.previewLink);
            Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
            if(await canLaunchUrl(uri)){
              await launchUrl(uri);
            }
          },
        ),
        ),

      ],
    );
  }
}


String getText(BookModel bookModel){
  if(bookModel.volumeInfo.previewLink == null){
    return 'Not Available';
  }else{
    return 'Preview';
  }
}
