// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/modules/Quran/Widgets/sura_title_w.dart';
import 'package:islami/modules/Quran/quran_details.dart';

class QuranView extends StatefulWidget {
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<int> versesNumber = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    5,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    6,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var language = AppLocalizations.of(context)!;
    return Column(
      children: [
        Image.asset('assets/images/quran_header.png', scale: 3.5),
        const Divider(
          thickness: 5,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                language.num_versre,
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
                language.sura_name,
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
                language.sura_num,
                style: theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const Divider(
          height: 20,
          thickness: 5,
        ),
        Expanded(
          child: SizedBox(
            child: ListView.builder(
              itemCount: suraNames.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    QuranDetails.routeName,
                    arguments: sura_data(
                      sura_number: (index + 1).toString(),
                      sura_name: suraNames[index],
                    ),
                  );
                },
                child: SuraTitleW(
                  data: sura_data(
                    sura_number: (index + 1).toString(),
                    sura_name: suraNames[index],
                  ),
                  ayas_number: versesNumber[index].toString(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class sura_data {
  final String sura_number;
  final String sura_name;

  sura_data({required this.sura_number, required this.sura_name});
}
