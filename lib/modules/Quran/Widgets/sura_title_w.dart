import 'package:flutter/material.dart';

class SuraTitleW extends StatelessWidget {
  const SuraTitleW(
      {super.key,
      required this.sura_number,
      required this.sura_name,
      required this.ayas_number});

  final String sura_number;
  final String sura_name;
  final String ayas_number;

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
            sura_name,
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
            sura_number,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
