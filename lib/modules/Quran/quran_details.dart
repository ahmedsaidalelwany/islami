// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/modules/Quran/quran_view.dart';

class QuranDetails extends StatefulWidget {
  const QuranDetails({super.key});

  static const routeName = '/QuranDetails';

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    var data = ModalRoute.of(context)?.settings.arguments as sura_data;

    if (ayas.isEmpty) load_quran_data(data.sura_number);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/home-bk.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('إسلامي'),
          centerTitle: true,
        ),
        body: Container(
          margin:
              const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 60),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color(0xcdf8f8f8),
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("سورة ${data.sura_name}",
                      style: theme.textTheme.bodyMedium),
                  const SizedBox(width: 20),
                  const Icon(Icons.play_circle_fill_rounded),
                ],
              ),
              const Divider(
                thickness: 1.5,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListView.builder(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "{${index + 1}} - ${ayas[index]}",
                        style: theme.textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    itemCount: ayas.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> ayas = [];
  Future<void> load_quran_data(String sura_number) async {
    String content =
        await rootBundle.loadString('assets/files/$sura_number.txt');
    ayas = content.split('\n');
    setState(() {});
  }
}
