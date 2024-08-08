import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/modules/Hadith/hadith_view.dart';
import 'package:islami/modules/Quran/quran_view.dart';
import 'package:islami/modules/Radio/radio_view.dart';
import 'package:islami/modules/Settings/settings_view.dart';
import 'package:islami/modules/Tasbih/tasbih.dart';
import 'package:islami/theme/app_theme_data.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  static const routeName = 'layout';

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int selectedIndex = 0;

  // ignore: non_constant_identifier_names
  List<Widget> Screens = [
    const QuranView(),
    const HadithView(),
    const Tasbih(),
    const RadioView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var language = AppLocalizations.of(context)!;
    return Stack(
      children: [
        const Image(
            image: AssetImage('assets/images/home-bk.png'), fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(language.islami, style: theme.textTheme.titleLarge),
            ),
          ),
          body: Screens[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: App_theme_manager.primaryColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(
                () {
                  selectedIndex = index;
                },
              );
            },
            items: [
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage('assets/icons/quran.png'),
                ),
                label: language.quran,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage('assets/icons/hadeth.png'),
                ),
                label: language.hadith,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage('assets/icons/sebha.png'),
                ),
                label: language.tasbih,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.play_arrow),
                label: language.radio,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: language.settings,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
