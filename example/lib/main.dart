import 'package:example/new.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progress HUD',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress HUD'),
      ),
      body: ProgressHUD(
        child: Builder(
          builder: (context) => Center(
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  child: Text('Show for a second'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Name(),
                      ),
                    );
                    // final progress = ProgressHUD.of(context);
                    // progress?.show();
                    // Future.delayed(Duration(seconds: 1), () {
                    //   progress?.dismiss();
                    // });
                  },
                ),
                // ElevatedButton(
                //   child: Text('Show for a second'),
                //   onPressed: () {
                //     final progress = ProgressHUD.of(context);
                //     progress?.show();
                //     Future.delayed(Duration(seconds: 1), () {
                //       progress?.dismiss();
                //     });
                //   },
                // ),
                // ElevatedButton(
                //   child: Text('Show with text'),
                //   onPressed: () {
                //     final progress = ProgressHUD.of(context);
                //     progress?.showWithText('Loading...');
                //     Future.delayed(Duration(seconds: 1), () {
                //       progress?.dismiss();
                //     });
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
