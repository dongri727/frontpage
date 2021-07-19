import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'hiragana.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) => {runApp(MyApp())});
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
        title: Text('さあ　はじめましょう'),
      ),
        body: SafeArea(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children:[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  'https://scontent-nrt1-1.xx.fbcdn.net/v/t1.18169-9/17522554_1096553430451122_1075037664490641253_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=730e14&_nc_ohc=K5TLhKJCQnsAX8PclqL&_nc_ht=scontent-nrt1-1.xx&oh=6c41f92f69514869b5958c7a2e8682d4&oe=60FA94C8',
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                'わたしたちの町',
                style: TextStyle(
                fontSize: 35,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 3
                  ..color = Colors.green
              ),
            ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'ねん',
                          ),
                        ),
                      ),
                    ),
                  Expanded(
                    child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'くみ',
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'ばん',
                        ),
                    ),
                  )
                ],
              ),
            ),
           Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: ElevatedButton(
              child: Text('なまえをかきましょう'),
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Hiragana()
                ),
              );
            },

            ),

            ),
          ],
        ),
      ),
    ),
    );
  }
}
