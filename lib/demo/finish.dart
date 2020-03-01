import 'package:burntreatmentdevice/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'VDSrXzaxjco',
  //flags:YoutubePlayerFlags(autoPlay: true, ),
);

class Finish extends MaterialPageRoute<Null> {
  Finish() : super(builder: (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text("Демо - Этапы использования"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/burn-logo.jpg'),
              fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: <Widget>[
            Text('ВИДЕО', style: demoStyle),
            YoutubePlayer(
              controller: _controller,
              liveUIColor: Colors.amber,
            ),
            Text('САЙТ', style: demoStyle),
            Text('https://sites.google.com/view/burntreatmentdevice/home                                       ', style: demoStyle),
            SizedBox(height: 20.0,),
            Text('КОНТАКТЫ', style: demoStyle),
            Text('email: juhnowski@gmail.com                                                     ', style: demoStyle),
            FlatButton.icon(
                color: Colors.white70,
                onPressed: () => Navigator.popUntil(context, (Route<dynamic> route) => route.isFirst),
                icon: Icon(Icons.navigate_next),
                label: Text('НА ГЛАВНУЮ')
            ),
          ],
        ),
      ),
    );
  });
}