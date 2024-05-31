import 'package:flutter/material.dart';
import 'package:ticket_app/src/screens/home/index.dart';
import 'package:ticket_app/src/widgets/wrappers/common_wrapper.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void _setCurrentIndex(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomeScreen(),
    ];

    List<BottomNavigationBarItem> bottomNavigationBarItems = const [
      BottomNavigationBarItem(
        icon: Icon(Icons.airplanemode_active_rounded),
        label: 'Авиабилеты',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.hotel_rounded),
        label: 'Отели',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.location_on),
        label: 'Короче',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications),
        label: 'Подписки',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_rounded),
        label: 'Профиль',
      ),
    ];

    return CommonWrapper(
      withSafeArea: true,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Divider(height: 1.0, color: Color(0xFF1D1E20)),
          BottomNavigationBar(
            selectedItemColor: const Color(0xFF2261BC),
            type: BottomNavigationBarType.fixed,
            unselectedFontSize: 10.0,
            selectedFontSize: 10.0,
            unselectedItemColor: Colors.white54,
            onTap: _setCurrentIndex,
            currentIndex: _currentIndex,
            items: bottomNavigationBarItems,
          ),
        ],
      ),
      child: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
    );
  }
}
