import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Tasbih extends StatefulWidget {
  const Tasbih({Key? key}) : super(key: key);
  static const routeName = 'tasbih';

  @override
  State<Tasbih> createState() => _TasbihState();
}

class _TasbihState extends State<Tasbih> with SingleTickerProviderStateMixin {
  int counter = 0;
  int specialPhraseCounter = 0;
  List<String> tasbih = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
    "لا إله إلا الله و حده لا شريك له \n له الملك و له الحمد  \nو هو على كل شيء قدير",
  ];
  int index = 0;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _rotateImage() {
    if (_controller.isAnimating) return;
    _controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var language = AppLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              RotationTransition(
                turns: _animation,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 400,
                  child: Image.asset('assets/images/sebha.png', scale: .01),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Text(
                  "${language.tasbih}\n$counter",
                  style: theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "${tasbih[index]}",
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
              onPressed: () {
                setState(
                  () {
                    counter++;
                    if (counter % 33 == 0 && counter != 99) {
                      index = (index + 1) % (tasbih.length - 1);
                    }
                    if (counter == 99) {
                      index = tasbih.length - 1;
                      specialPhraseCounter++;
                    }
                    if (counter == 100) {
                      counter = 0;
                      index = 0;
                    }
                  },
                );
                _rotateImage();
              },
            ),
          )
        ],
      ),
    );
  }
}