import 'package:componentes/Screens/screens.dart';
import 'package:componentes/models/models.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    // Es opcional hacerlo de esta forma, pero igual sirve
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_filled,),
    MenuOption(route: 'listview1', name: 'ListView Tipo 1',  screen: const ListView1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'ListView Tipo 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_rounded),
    MenuOption(route: 'card', name: 'Tarjetas-cards', screen: const CardScreen(), icon: Icons.credit_card),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    
    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
      
    }
    return appRoutes;
  }
  
  // Primera opcion para las rutas
  // static Map<String, Widget Function(BuildContext)> routes ={
  //       'home': (BuildContext context) => const HomeScreen(),
  //       'listview1': (BuildContext context) => const ListView1Screen(),
  //       'listview2': (BuildContext context) => const ListView2Screen(),
  //       'alert': (BuildContext context) => const AlertScreen(),
  //       'card': (BuildContext context) => const CardScreen(),
  // };
}