import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';

class AvatarPH extends StatelessWidget {
  final IconData? icon;
  final String? image;
  const AvatarPH({super.key, this.icon, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(32),
        image: image!=null
          ? DecorationImage(image: NetworkImage(image!)): null
      ),
      child: image==null
        ? Icon(icon ?? AntIcons.userOutlined, color: Colors.black, size: 34)
        : null,
    );
  }
}