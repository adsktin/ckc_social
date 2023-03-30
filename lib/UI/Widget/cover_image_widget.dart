import 'package:flutter/material.dart';

Widget coverImage() {
  return Image(
      image: NetworkImage(
          'https://scontent.fsgn5-6.fna.fbcdn.net/v/t39.30808-6/311585127_1278617969618738_1498823731831631935_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_ohc=xPs_O64fGGkAX-X6eyt&_nc_ht=scontent.fsgn5-6.fna&oh=00_AfCZfsgUe-AoEdWfJxKPDx5j3CD8Fkaxeguyhmm_kFn5Cw&oe=6429BB04'),
      fit: BoxFit.cover);
}
