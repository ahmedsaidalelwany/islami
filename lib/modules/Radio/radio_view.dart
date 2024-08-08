import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  @override
  Widget build(BuildContext context) {
    var language = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Image.asset(
            'assets/images/Radio.png',
            scale: 1,
          ),
        ),
        Text(
          language.radio_name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(
                Icons.play_arrow,
                color: Color(0xffb7935f),
              ),
              iconSize: 50,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.stop, color: Color(0xffb7935f)),
              iconSize: 50,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
