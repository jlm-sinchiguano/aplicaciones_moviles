import 'package:componentes/Screens/screens.dart';
import 'package:componentes/router/app_routes.dart';
import 'package:componentes/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menuOption = AppRoutes.menuOption;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            leading: Icon(menuOption[i].icon, color: AppTheme.primary),
            title: Text(menuOption[i].name),
            onTap: () {
              // final route = MaterialPageRoute(
              //     builder: (context) => const ListView1Screen());

              //pushReplacement: dirige a otra pagina pero no permite regresar. Validos para logins
              // Navigator.push(context, route);
              
              Navigator.pushNamed(context, menuOption[i].route); 
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOption.length,
        )
    );
  }
}
