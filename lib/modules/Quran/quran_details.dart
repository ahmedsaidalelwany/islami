import 'package:flutter/material.dart';

class QuranDetails extends StatelessWidget {
  const QuranDetails({super.key});

  static const routeName = '/QuranDetails';

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
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
                  Text("سورة الفاتحة", style: theme.textTheme.bodyMedium),
                  const SizedBox(width: 15),
                  const Icon(Icons.play_circle_fill_rounded),
                ],
              ),
              const Divider(
                thickness: 1.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
