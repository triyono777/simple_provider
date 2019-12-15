import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/aplikasi_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AplicationColor>(
        create: (context) => AplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            title: Consumer<AplicationColor>(
              builder: (context, aplicationColor, _) => Text(
                'Provider state manajemen',
                style: TextStyle(color: aplicationColor.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<AplicationColor>(
                  builder: (context, aplicationColor, _) => AnimatedContainer(
                    margin: EdgeInsets.all(5),
                    duration: Duration(microseconds: 500),
                    width: 100,
                    height: 100,
                    color: aplicationColor.color,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(margin: EdgeInsets.all(5), child: Text('biru')),
                    Consumer<AplicationColor>(
                      builder: (context, aplicationColor, _) => Switch(
                        value: aplicationColor.isMerah,
                        onChanged: (newValue) {
                          aplicationColor.isMerah = newValue;
                        },
                      ),
                    ),
                    Container(margin: EdgeInsets.all(5), child: Text('merah')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
