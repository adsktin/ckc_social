import 'package:flutter/material.dart';
import 'package:social_android/UI/Friends/list_friends.dart';
import 'package:social_android/UI/system_color.dart';

class Friend extends StatefulWidget {
  const Friend({super.key});

  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AllcolorApp.backgroundColorContainer,
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListFriends(),
                ),
              );
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Danh sách bạn bè',
                    style: TextStyle(
                        color: AllcolorApp.textColorApp, fontSize: 20),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AllcolorApp.textColorApp,
                  ),
                ]),
          ),
        ),
        Divider(
          color: AllcolorApp.textColorApp,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Lời mời kết bạn',
            style: TextStyle(color: AllcolorApp.textColorApp, fontSize: 20),
          ),
        ),
// friend item
        ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                'https://scontent.fsgn5-15.fna.fbcdn.net/v/t39.30808-6/334169344_731902551902897_3169934605053241420_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=q9v9iL7nn4MAX-PUkZH&_nc_ht=scontent.fsgn5-15.fna&oh=00_AfA04avcckIYSW-T8pXY_2nFv28TNVTk48fvSsmP7nXuZg&oe=64264B26'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 15),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Dương Nghĩa Hiệp',
                                  style: TextStyle(
                                      color: AllcolorApp.textColorApp,
                                      fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Text(
                                          "Xác nhận",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey),
                                  onPressed: () {},
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30),
                                    child: Text(
                                      "Hủy",
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ));
            }),
      ]),
    );
  }
}
