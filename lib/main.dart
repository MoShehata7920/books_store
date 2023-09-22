import 'package:books_store/app/service_locator.dart';
import 'package:books_store/data/repository/home_repo_impl.dart';
import 'package:books_store/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:books_store/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:books_store/presentation/resources/color_manager.dart';
import 'package:books_store/presentation/screens/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'presentation/resources/routes_manager.dart';

void main() {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: ColorsManager.primaryBackgroundColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splash,
        home: const SplashScreen(),
      ),
    );
  }
}
