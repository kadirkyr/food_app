import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_choose/products/language/constants.dart';
import 'package:food_choose/views/food_choose/food_chose.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CustomDemo(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textSelectionTheme: const TextSelectionThemeData(
            cursorColor: ProjectColors.secondColor, selectionColor: ProjectColors.secondColor),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ProjectColors.secondColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ProjectColors.secondColor),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            hintStyle: TextStyle(fontSize: 24),
            labelStyle: TextStyle(color: ProjectColors.secondColor, fontSize: 24),
            suffixIconColor: ProjectColors.secondColor),
        listTileTheme: const ListTileThemeData(titleTextStyle: TextStyle(fontSize: 20)),
        scaffoldBackgroundColor: ProjectColors.bgColor,
        textTheme: const TextTheme(
            headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: Sizes.size35),
            headlineSmall: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: Sizes.size25)),
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          color: Colors.transparent,
          toolbarHeight: Sizes.size75,
          titleTextStyle: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
          elevation: 0,
        ),
        cardTheme: const CardTheme(elevation: 0, color: Colors.transparent),
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: ProjectColors.secondColor),
      ),
    );
  }
}
