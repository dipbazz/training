import 'package:flutter/material.dart';

import 'colors.dart' as color;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 45, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    fontSize: 25,
                    color: color.AppColor.homePageTitle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: color.AppColor.homePageIcons
                ),
                const SizedBox(width: 15),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons
                )
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Text(
                  "Your program",
                  style: TextStyle(
                    fontSize: 15,
                    color: color.AppColor.homePageTitle,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 15,
                    color: color.AppColor.homePageTitle,
                  ),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward,
                  size: 15,
                  color: color.AppColor.homePageIcons
                )
              ],
            ),
            const SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(80),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(10, 10),
                    blurRadius: 20,
                    color: color.AppColor.gradientSecond.withOpacity(0.5),
                  )
                ]
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next workout",
                      style: TextStyle(
                        fontSize: 12,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Leg workout",
                      style: TextStyle(
                        fontSize: 18,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "and Glutes workout",
                      style: TextStyle(
                        fontSize: 18,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    const SizedBox(height: 35),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer, size: 15, color: color.AppColor.homePageContainerTextSmall),
                            const SizedBox(width: 8),
                            Text(
                              "60 min",
                              style: TextStyle(
                                fontSize: 12,
                                color: color.AppColor.homePageContainerTextSmall,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color: color.AppColor.gradientFirst,
                                blurRadius: 8,
                                offset: const Offset(3, 5),
                              )
                            ]
                          ),
                          child: const Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 60,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/card.png"),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          color: color.AppColor.gradientSecond.withOpacity(0.4),
                          offset: const Offset(3, 5),
                        )
                      ]
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(right: 200, bottom: 20),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/figure.png"),
                        // fit: BoxFit.fill,
                      )
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: const EdgeInsets.only(left: 150, top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You are doing great.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.homePageDetail,
                          )
                        ),
                        const SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            text: "Keep it up\n",
                            style: TextStyle(
                              color: color.AppColor.homePagePlanColor,
                              fontSize: 16,
                            ),
                            children: const [
                              TextSpan(
                                text: "stick to your plan"
                              )
                            ]
                          )
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
