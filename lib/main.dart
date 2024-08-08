import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/settings_provider.dart';
import 'package:islami/core/widgets/theme/app_theme_data.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:islami/modules/Hadith/hadith_details.dart';
import 'package:islami/modules/Quran/quran_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => settingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<settingsProvider>(context);

    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      locale: Locale(provider.CurrentLanguage),
      theme: App_theme_manager.lightTheme,
      darkTheme: App_theme_manager.darktheme,
      themeMode: provider.CurrentTheme,
      initialRoute: Layout.routeName,
      routes: {
        Layout.routeName: (context) => const Layout(),
        QuranDetails.routeName: (context) => const QuranDetails(),
        HadithDetails.routeName: (context) => const HadithDetails(),
      },
    );
  }
}
