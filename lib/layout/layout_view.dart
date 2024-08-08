import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/settings_provider.dart';
import 'package:islami/modules/Hadith/hadith_view.dart';
import 'package:islami/modules/Quran/quran_view.dart';
import 'package:islami/modules/Radio/radio_view.dart';
import 'package:islami/modules/Settings/settings_view.dart';
import 'package:islami/modules/Tasbih/tasbih.dart';
import 'package:provider/provider.dart';

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
    var provider = Provider.of<settingsProvider>(context);
    return Stack(
      children: [
        Image(
            image: AssetImage(
              provider.getbackGroundImage(),
            ),
            fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(language.islami, style: theme.textTheme.titleLarge),
            ),
          ),
          body: Screens[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
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
