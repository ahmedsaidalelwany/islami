import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:islami/modules/Hadith/hadith_details.dart';
import 'package:islami/modules/Quran/quran_details.dart';
import 'package:islami/theme/app_theme_data.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      theme: App_theme_manager.lightTheme,
      initialRoute: Layout.routeName,
      routes: {
        Layout.routeName: (context) => const Layout(),
        QuranDetails.routeName: (context) => const QuranDetails(),
        HadithDetails.routeName: (context) => const HadithDetails(),
      },
    );
  }
}
