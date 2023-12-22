import 'package:flutter/material.dart';
import 'package:youtube_player_app/model/video_model.dart';


// 유튜브 재생기를 사용하기 위해서 패키지 불러옴
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// 유튜브 동영상 재생기가 될 위젯 만들기
class CustomYotubePlayer extends StatefulWidget {
  final VideoModel videoModel;

  const CustomYotubePlayer({
    required this.videoModel,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomYotubePlayer> createState() => _CustomYoutubePlayerState();
}

class _CustomYoutubePlayerState extends State<CustomYotubePlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(); // 임시로 기본 컨테이너 반환
  }
}
