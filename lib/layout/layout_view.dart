import 'package:flutter/material.dart';
import 'package:islami/modules/Hadith/hadith_view.dart';
import 'package:islami/modules/Quran/quran_view.dart';
import 'package:islami/modules/Radio/radio_view.dart';
import 'package:islami/modules/Settings/settings_view.dart';
import 'package:islami/modules/Tasbeeh/tasbeeh_view.dart';
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
    var theme = Theme.of(context);
    return Stack(
      children: [
        const Image(
            image: AssetImage('assets/images/home-bk.png'), fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('إسلامي', style: theme.textTheme.titleLarge),
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
                label: 'قرآن',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/hadeth.png'),
                ),
                label: 'حديث',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/sebha.png'),
                ),
                label: 'تسبيح',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/radio.png'),
                ),
                label: 'إذاعة',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'إعدادات',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
