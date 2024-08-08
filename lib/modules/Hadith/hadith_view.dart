// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/modules/Hadith/hadith_details.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

List<String> hadithNames = [
  'الحديث الأول',
  'الحديث الثاني',
  'الحديث الثالث',
  'الحديث الرابع',
  'الحديث الخامس',
  'الحديث السادس',
  'الحديث السابع',
  'الحديث الثامن',
  'الحديث التاسع',
  'الحديث العاشر',
  'الحديث الحادي عشر',
  'الحديث الثاني عشر',
  'الحديث الثالث عشر',
  'الحديث الرابع عشر',
  'الحديث الخامس عشر',
  'الحديث السادس عشر',
  'الحديث السابع عشر',
  'الحديث الثامن عشر',
  'الحديث التاسع عشر',
  'الحديث العشرون',
  'الحديث الحادي والعشرون',
  'الحديث الثاني والعشرون',
  'الحديث الثالث والعشرون',
  'الحديث الرابع والعشرون',
  'الحديث الخامس والعشرون',
  'الحديث السادس والعشرون',
  'الحديث السابع والعشرون',
  'الحديث الثامن والعشرون',
  'الحديث التاسع والعشرون',
  'الحديث الثلاثون',
  'الحديث الحادي والثلاثون',
  'الحديث الثاني والثلاثون',
  'الحديث الثالث والثلاثون',
  'الحديث الرابع والثلاثون',
  'الحديث الخامس والثلاثون',
  'الحديث السادس والثلاثون',
  'الحديث السابع والثلاثون',
  'الحديث الثامن والثلاثون',
  'الحديث التاسع والثلاثون',
  'الحديث الأربعون',
  'الحديث الحادي والأربعون',
  'الحديث الثاني والأربعون',
  'الحديث الثالث والأربعون',
  'الحديث الرابع والأربعون',
  'الحديث الخامس والأربعون',
  'الحديث السادس والأربعون',
  'الحديث السابع والأربعون',
  'الحديث الثامن والأربعون',
  'الحديث التاسع والأربعون',
  'الحديث الخمسون',
];

class _HadithViewState extends State<HadithView> {
  @override
  Widget build(BuildContext context) {
    var language = AppLocalizations.of(context)!;
    return Column(
      children: [
        Image.asset(
          'assets/images/hadith_header.png',
          scale: 3.5,
        ),
        const Divider(
          thickness: 5,
        ),
        Text(
          language.hadiths,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        const Divider(
          thickness: 5,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: hadithNames.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    HadithDetails.routeName,
                    arguments: hadith_data(
                      hadithName: hadithNames[index],
                      hadithNumber: (index + 1).toString(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${hadithNames[index]} ${index + 1} ',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class hadith_data {
  final String hadithName;

  final String hadithNumber;

  hadith_data({required this.hadithName, required this.hadithNumber});
}
