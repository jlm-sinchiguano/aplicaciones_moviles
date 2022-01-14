import 'package:componentes/Screens/screens.dart';
import 'package:componentes/router/app_routes.dart';
import 'package:componentes/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      theme: AppTheme.lightTheme

      //onGenerateRoute: Sirve para cuando una ruta no existe se puedan hacer pruebas por consola (rutas dinamicas)
      // onGenerateRoute: (settings) {
      //   print(settings);

      //   return MaterialPageRoute(
      //     builder: (context) => const ListView2Screen()
      //   );
      // },
    );
  }
}
