import 'package:flutter/material.dart';
import 'package:islami/modules/splash/Hadith/hadith_view.dart';
import 'package:islami/modules/splash/Quran/quran_view.dart';
import 'package:islami/modules/splash/Radio/radio_view.dart';
import 'package:islami/modules/splash/Settings/settings_view.dart';
import 'package:islami/modules/splash/Tasbeeh/tasbeeh_view.dart';
import 'package:islami/theme/app_theme_data.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  static const routeName = 'layout';

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int selectedIndex = 0;

  List<Widget> Screens = [
    const QuranView(),
    const HadithView(),
    const TasbeehView(),
    const RadioView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          const Image(
              image: AssetImage('assets/images/home-bk.png'),
              fit: BoxFit.cover),
          Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text('إسلامي'),
              ),
            ),
            body: Screens[selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: App_theme_manager.primaryColor,
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/quran.png'),
                  ),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/hadeth.png'),
                  ),
                  label: 'Hadith',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/sebha.png'),
                  ),
                  label: 'Tasbeeh',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/radio.png'),
                  ),
                  label: 'Radio',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
