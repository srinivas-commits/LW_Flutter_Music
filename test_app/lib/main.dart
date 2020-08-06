import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LW_Music',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

// ignore: camel_case_types
class myOfflineAudio extends StatelessWidget {
  final AudioPlayer = AssetsAudioPlayer();
  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LW Offline Audio',
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              //backgroundColor: Colors.grey,
              color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: 250,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 6,
              ),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/pheonix.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () async {
                  await AudioPlayer.open(
                    Audio("/assets/audios/D_B_R_Carpito.mp3"),
                  );
                },
                child: Text('Play'),
              ),
              RaisedButton(
                onPressed: () {
                  AudioPlayer.pause();
                },
                child: Text('Pause'),
              ),
              RaisedButton(
                onPressed: () {
                  AudioPlayer.stop();
                },
                child: Text('Stop'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class myOnlineAudio extends StatelessWidget {
  final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LW Online Audio',
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              //backgroundColor: Colors.grey,
              color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: 250,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 6,
              ),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/srinivas-commits/flutter/master/imperial.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () async {
                  await assetsAudioPlayer.open(
                    Audio.network(
                        'https://raw.githubusercontent.com/smc181002/media_files/master/imperialmarch.mp3'),
                    showNotification: true,
                  );
                  assetsAudioPlayer.play();
                },
                child: Text('Play'),
              ),
              RaisedButton(
                onPressed: () {
                  assetsAudioPlayer.pause();
                },
                child: Text('Pause'),
              ),
              RaisedButton(
                onPressed: () {
                  assetsAudioPlayer.stop();
                },
                child: Text('Stop'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Myapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LW Music',
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              //backgroundColor: Colors.grey,
              color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(80),
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/srinivas-commits/flutter/master/music.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          RaisedButton(
            color: Colors.black26,
            onPressed: () {
              Navigator.of(context).pushNamed('/offlineAudio');
            },
            child: Text(
              "offline Audio's =>",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.amberAccent),
            ),
          ),
          RaisedButton(
            color: Colors.black26,
            onPressed: () {
              Navigator.of(context).pushNamed('/onlineAudio');
            },
            child: Text(
              "online Audio's =>",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.amberAccent),
            ),
          ),
        ],
      ),
    );
  }
}
