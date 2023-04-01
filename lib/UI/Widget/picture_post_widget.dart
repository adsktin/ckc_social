import 'package:flutter/material.dart';

Widget picturePost() {
  return Container(
    color: Colors.white,
    child: InkWell(
      onTap: () {},
      child: const Image(
          image: NetworkImage(
              'https://scontent.fsgn5-2.fna.fbcdn.net/v/t39.30808-6/335438657_164650156424374_6890138210752793053_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=e3f864&_nc_ohc=VQ-kxw7IDnsAX_dV6yA&_nc_ht=scontent.fsgn5-2.fna&oh=00_AfC4lWFVblBnqliBZW3NdyGUHdubRqOPUZ2hXDfxen0ucA&oe=642BBB45'),
          fit: BoxFit.fill),
    ),
  );
}
