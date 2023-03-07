import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/screens/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/screens/Home/view/widgets/BookRating.dart';
import 'package:booklyapp/features/screens/Home/view/widgets/featuredListView.dart';
import 'package:booklyapp/features/screens/details/view/similar_books_ListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BookActionButton.dart';
import 'BookDetailsSection.dart';
import '../../Home/view/widgets/CustomBookImage.dart';
import 'book_details_appBar.dart';
import 'book_details_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key,required this.bookModel}) : super(key: key);


  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(bookModel: bookModel,),
                const SizedBox(
                  height: 37,
                ),
                BooksActionButton(bookModel: bookModel,),
                const SizedBox(
                  height: 49,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}




