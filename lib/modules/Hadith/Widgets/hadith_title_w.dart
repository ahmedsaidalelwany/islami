// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:islami/modules/Hadith/hadith_view.dart';

class HadithTitleW extends StatelessWidget {
  const HadithTitleW({Key? key, required this.data}) : super(key: key);

  final hadith_data data;

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as hadith_data;
    return Column(
      children: [
        Text(
          '${data.hadithName} ${data.hadithNumber}',
        ),
        const Divider(
          thickness: 1.5,
        ),
      ],
    );
  }
}
