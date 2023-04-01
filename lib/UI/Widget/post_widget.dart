import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:get/get.dart';
import 'package:social_android/Controllers/post_controller.dart';
import 'package:social_android/Models/post_model.dart';
import 'package:social_android/UI/Home/commentbox_screen.dart';
import 'package:social_android/UI/Widget/picture_post_widget.dart';
import 'package:social_android/UI/Widget/video_widget.dart';
import 'package:social_android/UI/Widget/avatar_widget.dart';

class PostWidget extends StatefulWidget {
  // final PostController postController = Get.put(PostController());

  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
//
  @override
  void initState() {
    super.initState();
    PostController.fetchPostModel();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (PostController.isLoading.value) {
        return ListView.builder(
          itemCount: PostController.postmodel.length,
          // physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: avatar(),
                      title: const Text(
                        'Dương Nghĩa Hiệp',
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Row(children: [
                        const Text(
                          '  7 giờ trước',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Icon(
                          Icons.public,
                          color: Colors.grey,
                        ),
                      ]),
                      trailing: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: IconButton(
                          onPressed: () {
                            // _onButtonShowModalSheet();
                          },
                          icon: const Icon(Icons.more_horiz),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 3),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Stack(
                          children: [
                            // RichText(
                            //   textAlign: TextAlign.start,
                            //   overflow: postController.seemore.value
                            //       ? TextOverflow.ellipsis
                            //       : TextOverflow.visible,
                            //   text: TextSpan(
                            //     // text: postController.textContentPost,
                            //     style: const TextStyle(color: Colors.black),
                            //     // children: [
                            //     //   TextSpan(
                            //     //     text: "|",
                            //     //     style: TextStyle(
                            //     //         color: Colors.blue, fontStyle: FontStyle.normal),
                            //     //   ),
                            //     // ],
                            //   ),
                            // ),
                            Align(
                              alignment: Alignment.topRight,
                              child: InkWell(
                                onTap: () {
                                  // postController.seemore.value =
                                  // !postController.seemore.value;
                                },
                                child: Container(
                                  color: Colors.grey,
                                  child: Text(
                                    // postController.seemore.value
                                    //     ? "Xem thêm"
                                    //     :
                                    "",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    picturePost(),
                    // const VideoPost(),
                    const SizedBox(height: 5),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                child: const Icon(
                                  Icons.thumb_up,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ),
                              const Text('10'),
                            ],
                          ),
                          const Text('10 bình luận  10 lượt chia sẻ'),
                        ]),
                    const Divider(color: Colors.grey),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              PostController.like.value =
                                  !PostController.like.value;
                            },
                            child: Row(children: [
                              Icon(
                                FontAwesome5.thumbs_up,
                                // color: postController.like.value
                                //     ? Colors.grey
                                //     : Colors.blue,
                              ),
                              Text(
                                ' Thích',
                                style: TextStyle(
                                    // color: postController.like.value
                                    //     ? Colors.grey
                                    //     : Colors.blue
                                    ),
                              ),
                            ]),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(const CommentBoxScreen());
                            },
                            child: Row(children: const [
                              Icon(
                                FontAwesome5.comment,
                                color: Colors.grey,
                              ),
                              Text(
                                ' Bình luận',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(children: const [
                              Icon(
                                FontAwesome5.share_square,
                                color: Colors.grey,
                              ),
                              Text(
                                ' Chia sẻ',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ]),
                          ),
                        ]),
                  ],
                ),
              ),
            );
          },
        );
      } else {
        return CircularProgressIndicator();
      }
    });
  }
}
// void _onButtonShowModalSheet() {
//   showModalBottomSheet(
//       context: context,
//       builder: (context) {
//         return Container(
//           color: Colors.blue,
//           padding: const EdgeInsets.all(5),
//           child: ListView(
//             children: [
//               Center(
//                 child: Container(
//                   width: 15,
//                   height: 4,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(40),
//                       color: Colors.white),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.white),
//                 child: Column(
//                   children: [
//                     ListTile(
//                       leading: IconButton(
//                         onPressed: () {},
//                         icon: const Icon(Icons.notifications_off),
//                       ),
//                       title: const Text('Tắt thông báo'),
//                       subtitle:
//                           const Text('Bạn không quan tâm bài viết này.'),
//                     ),
//                     ListTile(
//                       leading: IconButton(
//                         onPressed: () {},
//                         icon: const Icon(Icons.do_disturb_on),
//                       ),
//                       title: const Text('Ẩn bài viết'),
//                       subtitle:
//                           const Text('Bạn sẽ không nhìn thấy bài viết này.'),
//                     ),
//                     ListTile(
//                       leading: IconButton(
//                         onPressed: () {},
//                         icon: const Icon(Icons.bookmark),
//                       ),
//                       title: const Text('Lưu bài viết'),
//                       subtitle: const Text('Thêm vào danh mục.'),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       });
// }
