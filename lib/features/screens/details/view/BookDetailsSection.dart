import 'package:booklyapp/features/screens/Home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/utils/styles.dart';
import '../../Home/view/widgets/BookRating.dart';
import '../../Home/view/widgets/CustomBookImage.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key,required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.textStyle14,
        ),
        const SizedBox(
          height: 18,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
      ],
    );
  }
}