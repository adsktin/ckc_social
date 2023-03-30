import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

/// Stateful widget to fetch and then display video content.
class VideoPost extends StatefulWidget {
  const VideoPost({super.key});

  @override
  State<VideoPost> createState() => _VideoPostState();
}

final videoPlayerController = VideoPlayerController.network(
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

class _VideoPostState extends State<VideoPost> {
  late ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        allowFullScreen: true,
        allowPlaybackSpeedChanging: true,
        aspectRatio: 16 / 9,
        autoInitialize: true,
        autoPlay: true,
        looping: false,
        errorBuilder: ((context, errorMessage) {
          return Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose() {
    _chewieController.videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
