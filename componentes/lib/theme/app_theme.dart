import 'package:componentes/Screens/screens.dart';

class AppTheme {
  static const Color primary = Colors.deepPurpleAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: Colors.indigo,

      //AppBar theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      //tema mas oscuro
      //scaffoldBackgroundColor: Colors.black

      //TextButton Theme
      textButtonTheme:
          TextButtonThemeData(
            style: TextButton.styleFrom(primary: primary)
          ),

      //FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, 
          elevation: 0
      ),

      //ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      )
  );
}
