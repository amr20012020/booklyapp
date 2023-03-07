import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:booklyapp/core/widgets/custom_loading_indicator.dart';
import 'package:booklyapp/features/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/features/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Home/view/widgets/CustomBookImage.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
      builder: (context,state){
        if(state is SimilarBooksSuccess){
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                    ),
                  );
                }
            ),
          );
        }else if(state is SimilarBooksFailure){
          return CustomErrorWidget(ErrMessage: state.errMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
