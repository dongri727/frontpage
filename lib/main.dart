import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hiragana.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) => {runApp(MyApp())});
}

class MyApp extends StatelessWidget {
  var titleText = 'myapp';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home(titleText: titleText),
    );
  }
}
class Home extends StatelessWidget{
  final String titleText;

  const Home({required this.titleText});

  @override
  Widget build(BuildContext context){

    return Scaffold(

        appBar: AppBar(
        title: Text('さあ　はじめましょう'),
      ),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
              color: Colors.lightGreen[200],
            ),
          ),
             Expanded(
               flex: 2,
                 child: Container(
                   color: Colors.yellow[100],
                   child: Column(
                 children:[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        'ふらったー小学校',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(150, 10, 150, 0),
                      child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment(0, 0),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: '       ねん',
                                ),
                              ),
                            ),
                          ),
                        Expanded(
                          child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: '       くみ',
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: '       ばん',
                              ),
                          ),
                        )
                      ],
                    ),
                  ),
                     Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
             ),),
               Expanded(
                flex: 1,
                 child: Container(
                    color: Colors.lightGreen[200],
            ),),
          ],
        ),
    );
  }
}
