import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'CustomAppBar.dart';
import 'CustomBookImage.dart';
import 'SellerListView.dart';
import 'bestSellerListView.dart';
import 'featuredListView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              Padding(
                padding: EdgeInsets.only(top: 50.0, left: 10),
                child: Text(
                  'Best Seller',
                  style: Styles.titleMedium,
                ),
              ),
            ],
          ),
        ),
       const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: BestSellerListView(),
          ),
        ),

      ],
    );
  }
}
