import 'package:flutter/material.dart';
import 'package:youtube_player_app/component/custom_youtube.dart';
import 'package:youtube_player_app/model/video_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key); // Added a semicolon here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomYotubePlayer(
        videoModel: VideoModel(
          id: '3Ck42C2ZCb8', // 임시 동영상 ID
          title: '다트 언어 기본기 익히기'
            // 임시 제목
        ),
      ),
    );
  }
}











