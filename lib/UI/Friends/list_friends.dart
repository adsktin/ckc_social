import 'package:flutter/material.dart';
import 'package:social_android/UI/system_color.dart';

class ListFriends extends StatefulWidget {
  const ListFriends({super.key});

  @override
  State<ListFriends> createState() => _ListFriendsState();
}

class _ListFriendsState extends State<ListFriends> {
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
                          icon: const Icon(Icons.person_off),
                        ),
                        title: const Text('Chặn bạn bè'),
                        subtitle: const Text(
                            'Người bị chặn tạm thời sẽ không nhìn thấy bạn.'),
                      ),
                      ListTile(
                        leading: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.person_remove),
                        ),
                        title: const Text('Hủy kết bạn'),
                        subtitle: const Text('Hủy liên kết bạn bè.'),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Danh sách bạn bè'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tìm kiếm',
                  style:
                      TextStyle(color: AllcolorApp.textColorApp, fontSize: 20),
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
              itemCount: 5,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://scontent.fsgn5-15.fna.fbcdn.net/v/t39.30808-6/334169344_731902551902897_3169934605053241420_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=q9v9iL7nn4MAX-PUkZH&_nc_ht=scontent.fsgn5-15.fna&oh=00_AfA04avcckIYSW-T8pXY_2nFv28TNVTk48fvSsmP7nXuZg&oe=64264B26'),
                  ),
                  title: Text(
                    'Dương Nghĩa Hiệp',
                    style: TextStyle(color: AllcolorApp.textColorApp),
                  ),
                  subtitle: Row(children: const [
                    Text(
                      'Kết bạn từ tháng 1 năm 2022',
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
      ),
    );
  }
}
