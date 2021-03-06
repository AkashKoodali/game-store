import 'package:covid_app/bloc/game_data_bloc.dart';

import 'package:covid_app/repo/games_repo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routes/coustom_router.gr.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp( BlocProvider<GameDataBloc>(
    create: (context) => GameDataBloc(GamesRepo()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final _appRouter= AppRouter();
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Game Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      routerDelegate:_appRouter.delegate() ,
      routeInformationParser:_appRouter.defaultRouteParser() ,
    );
  }
}
