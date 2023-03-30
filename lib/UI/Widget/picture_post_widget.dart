import 'package:flutter/material.dart';

Widget picture_post() {
  return Container(
    color: Colors.white,
    child: InkWell(
      onTap: () {},
      child: const Image(
          image: NetworkImage(
              'https://scontent.fsgn5-15.fna.fbcdn.net/v/t39.30808-6/334815904_105183509169569_5788851541322347304_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=9267fe&_nc_ohc=sREhPiFd3lgAX8qUgFe&_nc_ht=scontent.fsgn5-15.fna&oh=00_AfCaB_yLWLzu9yO3gDyBC7LAgZkK4CZnzXuYog9NRtK8OQ&oe=64264C6A'),
          fit: BoxFit.fill),
    ),
  );
}
