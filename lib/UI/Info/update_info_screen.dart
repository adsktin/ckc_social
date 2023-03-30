import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_android/UI/Widget/avatar_widget.dart';

class UpdateInfoScreen extends GetView {
  const UpdateInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text('Thông tin cá nhân'),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Ảnh đại diện'),
              TextButton(
                onPressed: () {},
                child: const Text('Thay đổi'),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: avatar(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Ảnh bìa'),
              TextButton(
                onPressed: () {},
                child: const Text('Thay đổi'),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(
              image: NetworkImage(
                  'https://scontent.fsgn5-6.fna.fbcdn.net/v/t39.30808-6/311585127_1278617969618738_1498823731831631935_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_ohc=xPs_O64fGGkAX-X6eyt&_nc_ht=scontent.fsgn5-6.fna&oh=00_AfCZfsgUe-AoEdWfJxKPDx5j3CD8Fkaxeguyhmm_kFn5Cw&oe=6429BB04'),
              fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Giới thiệu'),
              TextButton(
                onPressed: () {},
                child: const Text('Thay đổi'),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(5),
          child: Text(
              // overflow: TextOverflow.visible,
              textAlign: TextAlign.justify,
              'Phần giới thiệu. Phần giới thiệu. Phần giới thiệu. Phần giới thiệu. Phần giới thiệu. Phần giới thiệu. Phần giới thiệu'),
        ),
      ]),
    );
  }
}
