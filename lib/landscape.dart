import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:responsive/colors.dart' as color;

class HomePageLandscape extends StatefulWidget {
  const HomePageLandscape({Key? key}) : super(key: key);

  @override
  _HomePageLandscapeState createState() => _HomePageLandscapeState();
}

class _HomePageLandscapeState extends State<HomePageLandscape> {
  List info = [];
  void _initData() {
    DefaultAssetBundle.of(context).loadString('json/info.json').then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget _landscapeMode() {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Lorem ipsum',
                  style: TextStyle(
                      fontSize: 30,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                    size: 20, color: color.AppColor.homePageIcons),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                const SizedBox(
                  width: 15,
                ),
                Icon(Icons.arrow_forward_ios,
                    size: 20, color: color.AppColor.homePageIcons),
              ],
            ),
            Row(
              children: [
                Text(
                  "Lorem ipsum",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: color.AppColor.homePageSubtitle),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  "Lorem",
                  style: TextStyle(
                      fontSize: 20, color: color.AppColor.homePageDetail),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward,
                    size: 20, color: color.AppColor.homePageIcons),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: (MediaQuery.of(context).size.width) / 2,
                          height: 200,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  color.AppColor.gradientFirst.withOpacity(0.8),
                                  color.AppColor.gradientSecond
                                      .withOpacity(0.9),
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(80)),
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(5, 10),
                                    blurRadius: 20,
                                    color: color.AppColor.gradientSecond
                                        .withOpacity(0.2))
                              ]),
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: 20,
                              top: 25,
                              right: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lorem ipsum',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: color
                                        .AppColor.homePageContainerTextSmall,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Lorem ipsum',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: color
                                        .AppColor.homePageContainerTextSmall,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Lorem ipsum dolor',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: color
                                        .AppColor.homePageContainerTextSmall,
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.timer,
                                            size: 20,
                                            color: color.AppColor
                                                .homePageContainerTextSmall),
                                        const SizedBox(width: 10),
                                        Text(
                                          'Num Lorem',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: color.AppColor
                                                .homePageContainerTextSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: Container()),
                                    const Icon(Icons.play_circle_fill,
                                        color: Colors.white, size: 60)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: (MediaQuery.of(context).size.height) / 4,
                          width: (MediaQuery.of(context).size.width) / 2,
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(top: 10),
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage("assets/card.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 40,
                                        offset: const Offset(8, 10),
                                        color: color.AppColor.gradientSecond,
                                      )
                                    ]),
                              ),
                              Container(
                                width: double.maxFinite,
                                height: 100,
                                margin:
                                    const EdgeInsets.only(left: 150, top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Vivamus vehicula ut est",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: color.AppColor.homePageDetail),
                                    ),
                                    const SizedBox(height: 5),
                                    RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color
                                                  .AppColor.homePagePlanColor),
                                          children: const [
                                            TextSpan(
                                              text:
                                                  "Mauris sagittis neque id erat tincidunt, vitae",
                                            )
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 296,
                      width: MediaQuery.of(context).size.width / 2.7,
                      child: Column(
                        children: [
                          Text(
                            "Quisque neque neque",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: color.AppColor.homePageTitle),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: info.length.toDouble() ~/ 2,
                                itemBuilder: (_, i) {
                                  int a = 2 * i;
                                  int b = 2 * i + 1;
                                  return Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 10),
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.blueAccent,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage(info[i]['img'])),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(5, 5),
                                                  color: color
                                                      .AppColor.gradientSecond
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              info[a]['title'],
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        width: 100,
                                        height: 100,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 10),
                                        decoration: BoxDecoration(
                                            color: Colors.blueAccent,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage(info[b]['img'])),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(5, 5),
                                                  color: color
                                                      .AppColor.gradientSecond
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              info[b]['title'],
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _landscapeMode(),
    );
  }
}
