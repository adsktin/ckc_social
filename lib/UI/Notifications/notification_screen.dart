import 'package:flutter/material.dart';
import 'package:social_android/UI/system_color.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  void _onButtonShowModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(5),
            child: ListView(
              children: [
                Center(
                  child: Container(
                    width: 15,
                    height: 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      ListTile(
                        leading: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.close),
                        ),
                        title: const Text('Gỡ thông báo'),
                        // subtitle: const Text(
                        //     'Người bị chặn tạm thời sẽ không nhìn thấy bạn.'),
                      ),
                      ListTile(
                        leading: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_off),
                        ),
                        title: const Text('Tắt thông báo'),
                        // subtitle: const Text('Hủy liên kết bạn bè.'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Thông báo',
                style: TextStyle(color: AllcolorApp.textColorApp, fontSize: 20),
              ),
              Icon(
                Icons.search,
                color: AllcolorApp.textColorApp,
              ),
            ],
          ),
        ),

        Divider(
          color: AllcolorApp.textColorApp,
        ),
        // friend item
        ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://scontent.fsgn5-15.fna.fbcdn.net/v/t39.30808-6/334169344_731902551902897_3169934605053241420_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=q9v9iL7nn4MAX-PUkZH&_nc_ht=scontent.fsgn5-15.fna&oh=00_AfA04avcckIYSW-T8pXY_2nFv28TNVTk48fvSsmP7nXuZg&oe=64264B26'),
                ),
                title: RichText(
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.visible,
                  text: TextSpan(
                    text: 'Dương Nghĩa Hiệp ',
                    style: const TextStyle(color: Colors.blue, fontSize: 16),
                    children: [
                      TextSpan(
                          text: ' đã thích bài viết của bạn.',
                          style: TextStyle(color: AllcolorApp.textColorApp)),
                    ],
                  ),
                ),
                subtitle: Row(children: const [
                  Text(
                    '10 phút trước',
                    style: TextStyle(color: Colors.grey),
                  ),
                ]),
                trailing: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: IconButton(
                    onPressed: () {
                      _onButtonShowModalSheet();
                    },
                    icon: const Icon(Icons.more_horiz),
                    color: AllcolorApp.textColorApp,
                  ),
                ),
              );
            }),
      ]),
    );
  }
}
