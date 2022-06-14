import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widget/app_buttons.dart';
import 'package:flutter_cubit/widget/app_large_text.dart';
import 'package:flutter_cubit/widget/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  @override
  Widget build(BuildContext context) {
    var iconButton = IconButton(
      onPressed: () {},
      icon: Icon(Icons.anchor),
    );
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("img/mountain.jpeg"),
                            fit: BoxFit.cover)),
                  )),
              Positioned(
                  left: 20,
                  top: 50,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                      ),
                    ],
                  )),
              Positioned(
                  top: 320,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 20, top: 30, right: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                                text: "Yosemite",
                                color: Colors.black.withOpacity(0.8)),
                            AppLargeText(
                                text: "\$ 250", color: AppColors.mainColor)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.mainColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            AppText(
                              text: "USA, California",
                              color: AppColors.textColor1,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                  5,
                                  (index) => Icon(
                                        Icons.star,
                                        color: index < gottenStars
                                            ? AppColors.starColor
                                            : AppColors.textColor1,
                                      )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AppText(
                              text: "4.0",
                              color: AppColors.textColor2,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppLargeText(
                          text: "People",
                          color: Colors.black.withOpacity(0.8),
                          size: 20,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AppText(
                          text: "Number of people in your group",
                          color: AppColors.mainTextColor,
                        ),
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => AppButtons(
                                  size: 50,
                                  color: Colors.black,
                                  backgroundColor: AppColors.buttonBackground,
                                  borderColor: AppColors.buttonBackground)),
                        )
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}