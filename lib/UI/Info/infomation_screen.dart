import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_android/UI/Home/create_post_screen.dart';
import 'package:social_android/UI/Info/update_info_screen.dart';
import 'package:social_android/UI/Widget/cover_image_widget.dart';
import 'package:social_android/UI/system_color.dart';
import 'package:social_android/UI/Widget/avatar_widget.dart';
import 'package:social_android/UI/Widget/post_widget.dart';

class Infomation extends StatefulWidget {
  const Infomation({super.key});

  @override
  State<Infomation> createState() => _InfomationState();
}

class _InfomationState extends State<Infomation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllcolorApp.backgroundColorContainer,
      body: ListView(
        // scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 230,
            child: Stack(
              children: [
                Container(
                  height: 200,
                  color: Colors.white,
                  child: coverImage(),
                ),
                Positioned(
                  top: 20,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.4),
                      ),
                      child: const Icon(Icons.arrow_back_ios_new,
                          color: Colors.black),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: avatar(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Dương Nghĩa Hiệp',
                style: TextStyle(fontSize: 20, color: AllcolorApp.textColorApp),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreatePost()),
                );
              },
              child: Row(
                children: const [
                  Icon(Icons.add),
                  Text('Thêm bài viết'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(UpdateInfoScreen());
              },
              child: Row(
                children: const [
                  Icon(Icons.edit),
                  Text('Sửa thông tin cá nhân'),
                ],
              ),
            ),
          ]),
          Divider(color: AllcolorApp.textColorApp),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Danh sách hình ảnh',
              style: TextStyle(fontSize: 15, color: AllcolorApp.textColorApp),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.white,
                  child: const Image(
                      image: NetworkImage(
                          'https://scontent.fsgn5-9.fna.fbcdn.net/v/t39.30808-6/246415011_1033191894161348_4848708189501456253_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_ohc=P6u1K_8QazQAX9hIi70&_nc_ht=scontent.fsgn5-9.fna&oh=00_AfDw0W3frhzLFUDUUhP2MDKvG3tt86ZGOh1wJ7Vu-B80-g&oe=64254DEE'),
                      fit: BoxFit.cover),
                ),
                Container(
                  color: Colors.white,
                  child: coverImage(),
                ),
                Container(
                  color: Colors.white,
                  child: const Image(
                      image: NetworkImage(
                          'https://scontent.fsgn5-6.fna.fbcdn.net/v/t39.30808-6/242377898_1014818322665372_3574371671878076241_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_ohc=2SGThkFSIoAAX_rhBHW&_nc_ht=scontent.fsgn5-6.fna&oh=00_AfAgPtD9Ewoi5RXOjp2pihlyPvokJ5xh6eq9hr1Lu6ipYQ&oe=6425AD90'),
                      fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          Divider(color: AllcolorApp.textColorApp),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Danh sách bài viết',
              style: TextStyle(fontSize: 15, color: AllcolorApp.textColorApp),
            ),
          ),
          // ListView.builder(
          //   itemCount: 3,
          //   shrinkWrap: true,
          //   physics: const ScrollPhysics(),
          //   itemBuilder: (BuildContext context, int index) {
          //     return const Padding(
          //       padding: EdgeInsets.symmetric(vertical: 10),
          //       child: PostWidget(),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
