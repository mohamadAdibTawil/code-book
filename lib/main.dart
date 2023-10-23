import 'package:code_book/contants.dart';
import 'package:code_book/core/utils/simple_bloc_observer.dart';
import 'package:code_book/home/data/repos_data/home_repo_impl.dart';
import 'package:code_book/home/domain/entities/book_entity.dart';
import 'package:code_book/home/domain/use_cases/fetch_newst_books_use_case.dart';
import 'package:code_book/home/domain/use_cases/fetch_popular_books_use_case.dart';
import 'package:code_book/home/presentation/manger/FetchNewestBooksCubit/fetch_newest_books_cubit.dart';
import 'package:code_book/home/presentation/manger/popular_books_cubit/cubit/popular_books_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'core/utils/app_router.dart';
import 'package:code_book/core/utils/functions/setup_service_locator.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kPopularBox);
  await Hive.openBox<BookEntity>(kNewestBox);

  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return PopularBooksCubit(
              FetchPopualrBooksUseCase(getIt.get<HomeRepoImpl>()))
            ..fetchPopualrBooks();
        }),
         BlocProvider(create: (context) {
          return FetchNewestBooksCubit(
              FetchNewestBooksUseCase(getIt.get<HomeRepoImpl>()))
            ..fetchNewestBooks();
        })
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Code Book',
        theme: ThemeData.dark().copyWith(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBlackColor,
          textTheme: const TextTheme().apply(
            fontFamily: kFontGTSectraFineRegular,
            displayColor: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
