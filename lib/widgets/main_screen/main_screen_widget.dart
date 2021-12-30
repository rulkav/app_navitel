import 'package:app_navitel/widgets/apps/apps.dart';
import 'package:app_navitel/widgets/support/support.dart';
import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedIndex = 0;

  void _onSelectItem(int index) {
    setState(() {});
    if (index == _selectedIndex) return;
    _selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.center,
            child: Text('Navitel.ru', textAlign: TextAlign.center)),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Center(
            child: Text(
              'Устройства',
            ),
          ),
          MapApps(),
          // Text(
          //   'Для бизнеса',
          // ),
          // Text('Карты'),
          SupportWidget(),
        ],
      ),
      // ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        onTap: _onSelectItem,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.device_unknown),
            label: 'Устройства',
            backgroundColor: Colors.green,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.apps),
          //   label: 'Приложения',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.business),
          //   label: 'Для бизнеса',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Карты',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support),
            label: 'Техподдержка',
          ),
        ],
      ),
    );
  }
}
