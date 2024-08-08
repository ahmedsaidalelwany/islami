// ignore_for_file: use_super_parameters, library_private_types_in_public_api, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/settings_provider.dart';
import 'package:islami/modules/Hadith/hadith_view.dart';
import 'package:provider/provider.dart';

class HadithDetails extends StatefulWidget {
  const HadithDetails({Key? key}) : super(key: key);

  static const routeName = '/HadithDetails';

  @override
  _HadithDetailsState createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    var data = ModalRoute.of(context)?.settings.arguments as hadith_data;

    if (hadith_details.isEmpty) load_hadith_data(data.hadithNumber);
    var provider = Provider.of<settingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            provider.getbackGroundImage(),
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('إسلامي'),
            centerTitle: true,
          ),
          body: Container(
              margin: const EdgeInsets.only(
                  top: 20, left: 10, right: 10, bottom: 60),
              decoration: const BoxDecoration(
                color: Color(0x2af8f8f8),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    '${data.hadithName} ${data.hadithNumber}',
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
                            hadith_details[index],
                            style: theme.textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        itemCount: hadith_details.length,
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }

  List<String> hadith_details = [];

  Future<void> load_hadith_data(String hadithNumber) async {
    String content =
        await rootBundle.loadString("assets/files/hadeth/$hadithNumber.txt");
    hadith_details = content.split('\n');
    setState(() {});
  }
}
