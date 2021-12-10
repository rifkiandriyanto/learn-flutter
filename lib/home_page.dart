import 'package:flutter/material.dart';
import 'package:learn_flutter/theme.dart';
import 'package:learn_flutter/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Image(
                  image: AssetImage('assets/img/profile.png'),
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Fiza Innaramecca',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                const SizedBox(height: 5),
                const Text(
                  'CEO Fiza Corporation',
                  style: TextStyle(fontSize: 16, color: lightGreyColor),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      // const SizedBox(
                      //   height: 16,
                      // ),
                      const ChatTile(
                        imageUrl: 'assets/img/friend1.png',
                        name: 'Siska J.',
                        lastMessage: 'I saw it clearly and mig...',
                        time: 'Now',
                        unread: true,
                      ),
                      const ChatTile(
                        imageUrl: 'assets/img/friend2.png',
                        name: 'Joshua F.',
                        lastMessage: 'Hey, how are you? Ca...',
                        time: '12:30',
                        unread: false,
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      const ChatTile(
                        imageUrl: 'assets/img/group1.png',
                        name: 'Jakarta Fair',
                        lastMessage: 'Why does everyone ca...',
                        time: '11:30',
                        unread: true,
                      ),
                      const ChatTile(
                        imageUrl: 'assets/img/group3.png',
                        name: 'Android',
                        lastMessage: 'Here here we can go...',
                        time: '13:30',
                        unread: false,
                      ),

                      const ChatTile(
                        imageUrl: 'assets/img/group2.png',
                        name: 'Bentley',
                        lastMessage: 'The car which does not...',
                        time: '13:30',
                        unread: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
