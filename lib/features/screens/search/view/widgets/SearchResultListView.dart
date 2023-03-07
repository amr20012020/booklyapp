import 'package:flutter/cupertino.dart';

import '../../../Home/data/models/book_model/book_model.dart';
import '../../../Home/view/widgets/bestSellerListView.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);
  
   @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context,index){
          return  const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.0),
            //child:  BookListViewItem(bookModel: bookModel.volumeInfo,),
            child: Text("data"),
          );
        }
    );
  }
}