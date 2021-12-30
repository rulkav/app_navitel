import 'package:app_navitel/widgets/detail_page/datail_page_widget.dart';
import 'package:app_navitel/widgets/login/auth.dart';
import 'package:app_navitel/widgets/main_screen/main_screen_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.green),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // backgroundColor: Colors.green,
          selectedItemColor: Colors.green[900],
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
        ),

        // primarySwatch: Colors.green,
      ),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
        '/main_screen/map_details': (context) {
          final argument = ModalRoute.of(context)?.settings.arguments;
          print('first $argument');
          if (argument is int) {
            return MapDetailWidget(
              mapId: argument as int,
            );
          } else {
            return MapDetailWidget(
              mapId: 0,
            );
          }
        }
        ///////////////////////
        //   int id = 0;
        //   String name = '';
        //   if (argument is int) {
        //     id = argument as int;
        //   } else if (argument is String) {
        //     name = argument as String;
        //   }
        //   print('$argument $id $name');
        //   return MapDetailWidget(
        //     mapId: id,
        //     name: name,
        //   );
        // },
        // '/support': (context) => SupportWidget(),
      },
      initialRoute: '/auth',
      // onGenerateRoute: (RouteSettings setting) {
      //   return MaterialPageRoute<void>(builder: (context) {
      //     return Scaffold(
      //       body: Center(
      //         child: Text('Произошла ошибка навигации'),
      //       ),
      //     );
      //   });
      // },

      //   home: AuthWidget(),
    );
  }
}
