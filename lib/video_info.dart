import 'package:flutter/material.dart';
import 'colors.dart' as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.AppColor.gradientFirst.withOpacity(0.9),
              color.AppColor.gradientSecond
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 45, left: 25, right: 25),
              width: MediaQuery.of(context).size.width,
              height: 230,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: color.AppColor.secondPageIconColor,
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: color.AppColor.secondPageIconColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "Leg workout",
                    style: TextStyle(
                      fontSize: 18,
                      color: color.AppColor.secondPageTitleColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "and Glutes workout",
                    style: TextStyle(
                      fontSize: 18,
                      color: color.AppColor.secondPageTitleColor,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              color.AppColor.secondPageContainerGradient1stColor,
                              color.AppColor.secondPageContainerGradient2ndColor
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: color.AppColor.secondPageIconColor
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "68 min",
                              style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageIconColor
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 230,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              color.AppColor.secondPageContainerGradient1stColor,
                              color.AppColor.secondPageContainerGradient2ndColor
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.handyman_outlined,
                              size: 20,
                              color: color.AppColor.secondPageIconColor
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Resistent band, kettlebell",
                              style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageIconColor
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Text(
                          "Circuit 1: Legs Toning",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.circuitsColor
                          ),
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 20,
                          child:
                            Row(
                              children: [
                                Icon(
                                  Icons.sync_alt_outlined,
                                  size: 20,
                                  color: color.AppColor.secondPageIconColor
                                )
                              ],
                            ),
                        )
                      ]
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
