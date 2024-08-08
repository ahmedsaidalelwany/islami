// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:islami/modules/Quran/quran_view.dart';

class SuraTitleW extends StatelessWidget {
  const SuraTitleW({
    super.key,
    required this.ayas_number,
    required this.data,
  });

  final String ayas_number;
  final sura_data data;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            ayas_number,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 40,
          child: VerticalDivider(
            width: 20,
            thickness: 5,
          ),
        ),
        Expanded(
          child: Text(
            data.sura_name,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 40,
          child: VerticalDivider(
            width: 20,
            thickness: 5,
          ),
        ),
        Expanded(
          child: Text(
            data.sura_number,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
