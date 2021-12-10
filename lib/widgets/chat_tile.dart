import 'package:flutter/material.dart';
import 'package:learn_flutter/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.unread,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final String lastMessage;
  final String time;
  final bool unread;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Row(
        children: [
          Image(
            image: AssetImage(imageUrl),
            height: 55,
            width: 55,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: titleTextStyle),
              Text(
                lastMessage,
                style: unread
                    ? subTitleTextStyle.copyWith(color: blackColor)
                    : subTitleTextStyle,
              ),
            ],
          ),
          const Spacer(),
          Text(time, style: subTitleTextStyle),
        ],
      ),
    );
  }
}
