import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:booklyapp/features/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/features/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:booklyapp/features/screens/Home/data/repos/home_repo_impl.dart';
import 'package:booklyapp/features/screens/splash/widgets/splash_view_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/app_router.dart';
import 'features/screens/splash/splashScreen.dart';

void main() {
  setUpServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(
                    getIt.get<HomeRepoImpl>(),
                )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewSetBooksCubit(
                getIt.get<HomeRepoImpl>(),
              )..fetchNewSetBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
