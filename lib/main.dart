import 'package:flutter/material.dart';
import 'package:learn_flutter/style.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget option(int index, String title, String subTitle, String pricing) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
                color: selectedIndex == index ? Colors.white : Colors.white10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectedIndex == index
                      ? const Icon(
                          Icons.radio_button_checked,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.radio_button_unchecked,
                          color: Colors.white,
                        ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: planTextStyle,
                      ),
                      Text(
                        subTitle,
                        style: descTextStyle,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    pricing,
                    style: priceTextStyle,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 32, right: 32, bottom: 20),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/img/image1.png',
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 70),
              child: Row(
                children: [
                  Text(
                    'Upgrade to',
                    style: titleTextStyle,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Pro',
                    style: blueTitleTextStyle,
                  )
                ],
              ),
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              textAlign: TextAlign.center,
              style: subTitleTextStyle,
            )
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff170947),
        body: SingleChildScrollView(
          child: Column(children: [
            header(),
            option(0, 'Monthly', 'Good for starting up', '\$20'),
            option(1, 'Quarterly', 'Focusing on building', '\$55'),
            option(2, 'Yearly', 'Steady Company', '\$220'),
          ]),
        ),
      ),
    );
  }
}
