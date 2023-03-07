import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:booklyapp/core/widgets/custom_loading_indicator.dart';
import 'package:booklyapp/features/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:booklyapp/features/manager/newset_books_cubit/newset_books_state.dart';
import 'package:booklyapp/features/screens/Home/view/widgets/bestSellerListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewSetBooksCubit,NewsetBooksState>(
      builder: (context,state){
        if(state is NewsetBooksSuccess){
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              shrinkWrap: true,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child:  BookListViewItem(bookModel: state.books[index],),
                );
              }
          );
        }else if(state is NewsetBooksFailure){
          return CustomErrorWidget(ErrMessage: state.errMessage);
        }else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
