import 'package:eggs/blocs/app.bloc.dart';
import 'package:eggs/pages/splash.page.dart';
import 'package:eggs/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppBloc>.value(
          value: AppBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Perfect Eggs',
        theme: appTheme(),
        home: SplashPage(),
      ),
    );
  }
}
