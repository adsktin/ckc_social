import 'package:flutter/material.dart';
import 'package:social_android/UI/Widget/avatar_widget.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tạo bài viết'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white, width: 1),
              ),
              child: const Text(
                'Đăng',
                style: TextStyle(),
              ),
            ),
          ),
        ],
      ),
      body: ListView(children: [
        ListTile(
          leading: avatar(),
          title: const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'Dương Nghĩa Hiệp',
              style: TextStyle(color: Colors.black),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(
              right: 200,
            ),
            child: OutlinedButton(
              onPressed: () {},
              child: Row(children: const [
                Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.grey,
                ),
                Text(
                  'Chỉ tôi',
                  style: TextStyle(color: Colors.grey),
                ),
              ]),
            ),
          ),
          // trailing: Icon(Icons.menu),
        ),

        //

        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 10,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Hãy viết cảm nghĩ của bạn!'),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Row(
            children: const [
              Icon(Icons.photo),
              Text('Hình ảnh'),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Row(
            children: const [
              Icon(Icons.camera),
              Text('Video'),
            ],
          ),
        ),
      ]),
    );
  }
}
