import 'package:flutter/material.dart';
import 'package:rs2xiaomi/home_bottom_navigation.dart';
class Rotas extends StatelessWidget {
  const Rotas({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rivelino S.C app',theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(), 
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
  }),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 81, 9, 144),
          foregroundColor: Color.fromARGB(228, 203, 254, 255),
          toolbarHeight: 50,
        ),
        
        scaffoldBackgroundColor: const Color(0xFF671281),/* plano de fundo */
        textTheme: const TextTheme(
          bodyMedium: TextStyle( /* texto padrão */
            color: Color.fromARGB(255, 251, 255, 255),
            fontSize: 20,
            fontWeight: FontWeight.w400,
             
          ),
        ),
      ),
    home: const HomeBottomNavigation(),  debugShowCheckedModeBanner: false,
    );
  }
}