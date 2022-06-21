import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubits_state.dart';
import 'package:flutter_cubit/pages/homes_page.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';

import '../pages/detail_page.dart';
import 'app_cubits.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is WelcomeState) {
          return WelcomePage();
        }
        if (state is DetailState) {
          return DetailPage();
        }
        if (state is LoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is LoadedState) {
          return HomePage();
        } else {
          return Container();
        }
      }),
    );
  }
}
