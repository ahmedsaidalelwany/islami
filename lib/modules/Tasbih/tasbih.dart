import 'package:flutter/material.dart';

class Tasbih extends StatefulWidget {
  const Tasbih({Key? key}) : super(key: key);
  static const routeName = 'tasbih';

  @override
  State<Tasbih> createState() => _TasbihState();
}

class _TasbihState extends State<Tasbih> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 80, bottom: 20),
                height: 400,
                child: Image.asset('assets/images/sebha.png', scale: .01),
              ),
              Container(
                margin: const EdgeInsets.only(top: 120),
                child: Text(
                  "0",
                  style: theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(top: 5),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "لا إله إلا الله و حده لا شريك له \n له الملك و له الحمد  \nو هو على كل شيء قدير",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Container(
            width: 60,
            height: 60,
            margin: const EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
