import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unminable/pages/home_page/home_page.dart';
import 'package:unminable/themes/app_themes.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (BuildContext context) =>
          AppTheme.getTheme(themeMode: ThemeMode.light),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppTheme>(
      builder: (BuildContext context, apptheme, Widget? child) {
        return MaterialApp(
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme,
          themeMode: apptheme.themeMode,
          routes: {
            '/': (context) => HomePage(),
          },
        );
      },
    );
  }
}
