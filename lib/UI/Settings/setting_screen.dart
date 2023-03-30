import 'package:flutter/material.dart';
import 'package:social_android/UI/Info/infomation_screen.dart';
import 'package:social_android/UI/system_color.dart';
import 'package:social_android/UI/Widget/avatar_widget.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Infomation()),
              );
            },
            child: ListTile(
              leading: avatar(),
              title: Text(
                'Dương Nghĩa Hiệp',
                style: TextStyle(color: AllcolorApp.textColorApp),
              ),
              subtitle: Row(children: const [
                Text(
                  'Vào trang thông tin cá nhân',
                  style: TextStyle(color: Colors.grey),
                ),
              ]),
              // trailing: Padding(
              //   padding: const EdgeInsets.only(bottom: 20),
              //   child: IconButton(
              //     onPressed: () {
              //       _onButtonShowModalSheet();
              //     },
              //     icon: const Icon(Icons.more_horiz),
              //     color: Colors.white,
              //   ),
              // ),
            ),
          ),
          Divider(
            color: AllcolorApp.textColorApp,
          ),
          TextButton(
            style: TextButton.styleFrom(
              // backgroundColor: Colors.grey,
              foregroundColor: Colors.white,
              // padding: EdgeInsets.all(8),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:
                          Icon(Icons.settings, color: Colors.black, size: 30),
                    )),
                const SizedBox(width: 15),
                Text(
                  'Cài đặt ứng dụng',
                  style:
                      TextStyle(color: AllcolorApp.textColorApp, fontSize: 20),
                ),
              ],
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              // backgroundColor: Colors.grey,
              foregroundColor: Colors.white,
              // padding: EdgeInsets.all(8),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.info_outline,
                          color: Colors.black, size: 30),
                    )),
                const SizedBox(width: 15),
                Text(
                  'Giới thiệu',
                  style:
                      TextStyle(color: AllcolorApp.textColorApp, fontSize: 20),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black,
              // padding: EdgeInsets.all(8),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.logout, color: Colors.black, size: 30),
                    )),
                const SizedBox(width: 15),
                Text(
                  'Đăng Xuất',
                  style:
                      TextStyle(color: AllcolorApp.textColorApp, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
