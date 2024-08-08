import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  final List<String> _lang = [
    'English',
    'عربي',
  ];
  final List<String> _theme = [
    'Light',
    'Dark',
  ];
  @override
  Widget build(BuildContext context) {
    var language = AppLocalizations.of(context)!;
    var provider = Provider.of<settingsProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            language.theme,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          CustomDropdown<String>(
            hintText: 'Select Theme',
            items: _theme,
            initialItem:
                provider.CurrentTheme == ThemeMode.dark ? _theme[1] : _theme[0],
            onChanged: (value) {
              if (value == 'Light') {
                provider.changeTheme(ThemeMode.light);
              }
              if (value == 'Dark') {
                provider.changeTheme(ThemeMode.dark);
              }
              log('changing value to: $value');
            },
          ),
          const SizedBox(height: 40),
          Text(
            language.language,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          CustomDropdown<String>(
            hintText: 'Select Language',
            items: _lang,
            initialItem: provider.CurrentLanguage == 'ar' ? _lang[1] : _lang[0],
            onChanged: (value) {
              if (value == 'English') {
                provider.changeLanguage('en');
              }
              if (value == 'عربي') {
                provider.changeLanguage('ar');
              }
              log('changing value to: $value');
            },
          ),
        ],
      ),
    );
  }
}
