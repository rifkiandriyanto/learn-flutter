import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: const Color(0xff1D1E3C),
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? const Color(0xffFE998D)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: const AssetImage('assets/img/background.png'),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                // NOTE: NAVIGATION
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                        image: AssetImage('assets/img/logo.png'),
                        width: 72,
                        height: 40,
                      ),
                      Row(
                        children: [
                          navItem(
                            title: 'Guides',
                            index: 0,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Pricing',
                            index: 1,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Team',
                            index: 2,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Stories',
                            index: 3,
                          ),
                        ],
                      ),
                      const Image(
                        image: AssetImage('assets/img/btn.png'),
                        width: 163,
                        height: 53,
                      ),
                    ],
                  ),
                ),

                // NOTE: CONTENT
                const SizedBox(
                  height: 76,
                ),
                const Image(
                  image: AssetImage('assets/img/conten_image.png'),
                  width: 550,
                ),

                // NOTE: FOOTER
                const SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('assets/img/icon_down.png'),
                      width: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Scroll to Learn More',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
