import 'package:flutter/material.dart';
import 'package:youtube_player_app/model/video_model.dart';


// 유튜브 재생기를 사용하기 위해서 패키지 불러옴
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// 유튜브 동영상 재생기가 될 위젯 만들기
class CustomYoutubePlayer extends StatefulWidget {
  final VideoModel videoModel;

  const CustomYoutubePlayer({
    required this.videoModel,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomYoutubePlayer> createState() => _CustomYoutubePlayerState();
}

class _CustomYoutubePlayerState extends State<CustomYoutubePlayer> {
 YoutubePlayerController? controller;

  @override
  void initState() {
    super.initState();

    controller = YoutubePlayerController( // 컨트롤러 선언
        initialVideoId: widget.videoModel.id, // 처음 실행할 동영상의 ID
        flags: YoutubePlayerFlags(
          autoPlay: false, // 자동 실행 사용하지 않기
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        YoutubePlayer( // 유튜브 재생기 렌더링
          controller: controller!,
          showVideoProgressIndicator: true,
        ),
        const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            widget.videoModel.title, // 동영상 제목
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();

    controller!.dispose(); // State 폐기 시 컨드롤러 같이 폐기
  }
}

