import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:booklyapp/features/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/features/screens/Home/data/repos/home_repo_impl.dart';
import 'package:booklyapp/features/screens/Home/view/homeScreen.dart';
import 'package:booklyapp/features/screens/Home/view/widgets/home_view_body.dart';
import 'package:booklyapp/features/screens/details/view/book_details_view.dart';
import 'package:booklyapp/features/screens/splash/splashScreen.dart';
import 'package:booklyapp/features/screens/splash/widgets/splash_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/screens/Home/data/models/book_model/book_model.dart';
import '../../features/screens/search/search_view.dart';

abstract class AppRouter{

  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
             builder: (context,state) => const SplashScreen(),
        ),
        GoRoute(
          path: kHomeView,
          builder: (context,state) => const HomeScreen(),
        ),
        GoRoute(
          path: kBookDetailsView,
          builder: (context,state) => BlocProvider
            (
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(bookModel: state.extra as BookModel,)),
        ),
        GoRoute(
          path: kSearchView,
          builder: (context,state) => const SearchView(),
        ),
      ]);
}