import 'package:youtube_player_app/const/api.dart';
import 'package:dio/dio.dart';
import 'package:youtube_player_app/model/video_model.dart';

class YoutubeRepository {
  static Future<List<VideoModel>> getVideos() async{
    final resp = await Dio().get( // 1. GET 메서드 보내기
      YOUTUBE_API_BASE_URL, // 요청을 보낼 URL
      queryParameters: { // 요청을 포함할 쿼리 변수들
        'channelID' : CF_CHANNEL_ID,
        'maxResults' : 50,
        'key' : API_KEY,
        'part' : 'snippet',
        'order' : 'data',
      },
    );

    final ListWithData = resp.data['items'].where(
          (item) =>
      item?['id']?['videoID'] != null && item?['snippet']?['title'] != null,
    ); // videoID 와 title 이 null 이 아닌 값들만 필터링 하는 과정

    return ListWithData
        .map<VideoModel>(
          (item) => VideoModel(
        id: item['id']['videoID'],
        title: item['snippet']['title'],
      ),
    )
        .toList(); // 필터링된 값들을 기반으로 VideoModel 생성
  }
}