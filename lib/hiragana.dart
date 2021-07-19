import 'package:flutter/material.dart';
import 'package:frontpage/model/hiragana_model.dart';
import 'package:provider/provider.dart';

class Hiragana extends StatelessWidget {
  final items = [
    'よ',
    'や',
    'ら',
    'ま',
    'ば',
    'ぱ',
    'は',
    'な',
    'だ',
    'た',
    'ざ',
    'さ',
    'が',
    'か',
    'あ',
    'ょ',
    'ゃ',
    'り',
    'み',
    'び',
    'ぴ',
    'ひ',
    'に',
    'ぢ',
    'ち',
    'じ',
    'し',
    'ぎ',
    'き',
    'い',
    '　',
    'ゆ',
    'る',
    'む',
    'ぶ',
    'ぷ',
    'ふ',
    'ぬ',
    'づ',
    'つ',
    'ず',
    'す',
    'ぐ',
    'く',
    'う',
    '　',
    'ゅ',
    'れ',
    'め',
    'べ',
    'ぺ',
    'へ',
    'ね',
    'で',
    'て',
    'ぜ',
    'せ',
    'げ',
    'け',
    'え',
    'ん',
    'わ',
    'ろ',
    'も',
    'ぼ',
    'ぽ',
    'ほ',
    'の',
    'ど',
    'と',
    'ぞ',
    'そ',
    'ご',
    'こ',
    'お'
  ];
  @override
  Widget build(BuildContext context) {
    final title = 'なまえをかきましょう';
    String inputText = '';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ChangeNotifierProvider<HiraganaModel>(
          create: (_) => HiraganaModel(),
          child: Consumer<HiraganaModel>(builder: (_, model, __) {
            return Column(
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 15,
                    children: List.generate(75, (index) {
                      return Center(
                        child: TextButton(
                          onPressed: () {
                            model.appendText('${items[index]}');
                          },
                          child: Text('${items[index]}'),
                        ),
                      );
                    }),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      model.resetText();
                    },
                    child: Icon(Icons.delete)),
                Text(
                  model.getText(),
                  style: TextStyle(fontSize: 24, color: Colors.indigo),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
