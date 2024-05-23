import 'package:flutter/material.dart';
import 'package:flutter_web/app.dart';
import 'package:flutter_web/src/presentation/ui/homepage/components/appbar_component.dart';

import '../../base/bloc_page/base_page_state.dart';
import '../../theme/color_theme.dart';
import '../../widget/touch_effect.dart';
import 'bloc/homepage_bloc.dart';

import 'dart:math' as math;

class NewHomepage extends StatefulWidget {
  const NewHomepage({super.key});

  @override
  State<NewHomepage> createState() => _NewHomepageState();
}

class _NewHomepageState extends BasePageState<NewHomepage, HomePageBloc> {
  List<Color> colors = [
    ThemeColorName.greyColor,
    ThemeColorName.blueColor,
    ThemeColorName.yellowColor,
    ThemeColorName.redColor
  ];

  /// creators and headers
  List<CreatersModel> modelList = List.generate(
      2,
      (index) => CreatersModel(color: [
            ThemeColorName.learnMoreGreen,
            ThemeColorName.blueColor
          ], image: [
            Assets.images.creators.image(width: 24, height: 24),
            Assets.images.holder.image(width: 24, height: 24)
          ], itemsTitle: [
            "Creators",
            "Holders"
          ], itemsDescription: [
            "Creators can gain independence through a decentralised digital currency system that is dependent on growing and engaging with the community and also their star power. They own 10-15% of the total value of the tokens minted.",
            "Holding social tokens allows the individual to gain access to benefits including unreleased content, private communities, direct access to celebrity, early- access to tickets and more as well as the ability to trade with other communities in order to gain access to more creator content with early token. "
          ]));

  List<PreSalesModel> presalesModel = List.generate(
      3,
      (index) => PreSalesModel(
          backgroundImages: [
            Assets.images.oneBackground.image(),
            Assets.images.twoBackground.image(),
            Assets.images.threeBackground.image(),
          ],
          index: index.toString(),
          title: ["Phase One", "Phase Two", "Phase Three"],
          date: "0/04/2021 - 16/04/2021",
          bnb: "1 BNB = 100000 WNTR",
          softcap: "5000 BNB",
          hardcap: "10000 BNB"));

  /// how to buy
  List<String> howtobuyLiast = [
    "First Connect your Metamask or TrustWallet to the Connect Wallet on the Homepage.",
    "Then send minimum of 0.1 BNB or maximum of 10 BNB to the Presale wallet",
    "Then send minimum of 0.1 BNB or maximum of 10 BNB to the Presale wallet"
  ];

  Widget dynamicBody() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 173),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin:
                                const EdgeInsets.only(top: 230.0, bottom: 10),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              ThemeColorName.firstgradientColor,
                              ThemeColorName.secondgradientColor
                            ])),
                            child: Text(
                              "At Tokners we are",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                            )),
                        Text(
                          'Reimagining social media through the power of the blockchain.',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: ThemeColorName.whiteColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 48,
                                  ),
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: Text(
                            'We are creating social media 3.0 with influencers, celebrities and creators being able to launch their own digital currency by simply creating a profile with media content posted as Non fungible Tokens that can be owned and traded on the Tknrs network',
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: ThemeColorName.subTextColor
                                      .withOpacity(.60),
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  fontSize: 16,
                                ),
                          ),
                        ),
                        TouchEffect(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.only(top: 40.0),
                            decoration: BoxDecoration(
                              color: ThemeColorName.learnMoreGreen,
                              borderRadius: BorderRadius.circular(52),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(34, 167, 93,
                                      0.25), // Adjust opacity as needed
                                  offset: Offset(0, 15),
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(30, 16, 30, 16),
                              child: Text(
                                "Learn More",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: ThemeColorName.whiteColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                      flex: 2,
                      child: Assets.images.backgroundImageTokens.image(
                        fit: BoxFit.fitHeight,
                      ))
                ],
              ),
            ),

            /// creators and holders
            Container(
              margin: const EdgeInsets.only(left: 173, top: 50),
              child: Row(
                children: List.generate(
                  2,
                  (index) => Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: 40.0, top: index == 1 ? 100 : 0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: ThemeColorName.createrColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: modelList[index].color[index],
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: modelList[index].image[index],
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 20.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "For ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 36,
                                                color:
                                                    ThemeColorName.whiteColor,
                                              ),
                                        ),
                                        TextSpan(
                                          text: modelList[index]
                                              .itemsTitle[index]
                                              .toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 36,
                                                  color: modelList[index]
                                                      .color[index],
                                                  height: 2.4
                                                  // ThemeColorName
                                                  //     .learnMoreGreen
                                                  //     .withOpacity(.5),
                                                  ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Container(
                                height: 150,
                                margin: const EdgeInsets.only(top: 20.0),
                                child: Text(
                                  modelList[index].itemsDescription[index],
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: ThemeColorName.whiteColor
                                            .withOpacity(.50),
                                      ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 6.0),
                                      child: Text(
                                        "Learn More",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                color: modelList[index]
                                                    .color[index]),
                                      ),
                                    ),
                                    Assets.images.arrowRightIc.image(
                                        width: 16,
                                        height: 16,
                                        color: modelList[index].color[index])
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            /// images
            Row(
              children: [
                Assets.images.curveImage.image(
                    width: MediaQuery.of(context).size.width / 2, height: 800),
                Assets.images.content.image(
                    width: MediaQuery.of(context).size.width / 2, height: 800)
              ],
            ),

            middleBody(),

            // presales
            Stack(
              alignment: Alignment.center,
              children: [
                Assets.images.imageBackground.image(),
                presalesWidget(context)
              ],
            ),
            howtobuyWidget()
          ],
        ),
      ),
    );
  }

  bool isExpanded = false;

  /// middle content
  Widget middleBody() {
    return Container(
      padding: const EdgeInsets.only(top: 100, left: 173, right: 173),
      child: Row(
        children: [
          buildLeftColumn(context),
          const SizedBox(width: 16), // Adding space between columns
          Expanded(
            flex: 2,
            child: Assets.images.holdingphone.image(),
          ),
        ],
      ),
    );
  }

  Widget buildLeftColumn(BuildContext context) {
    return SizedBox(
      width: 544,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildLogoRow(),
          const SizedBox(height: 20),
          buildLimitedText(
            "Cryptocurrency adoption is at less than 1% of the global world population with some countries and entities actively fighting against its mass adoption and the smartest developers and nerds holding the fort.\n",
            ThemeColorName.whiteColor.withOpacity(.6),
            FontWeight.w700,
          ),
          const SizedBox(height: 10),
          buildLimitedText(
            "Bitcoin was the first, and it has since grown to thousands of tokens launched all aiming to fix one problem or the other with some quite simply FOMOing the moment. Our goal is to bring mass adoption to the cryptocurrency space by dumbing it down. How far down? So down that even a celebrity can explain it in simple words to their followers and have them download an app, buy into the social currency of their favourite person and watch their investment as is with other crypto currency project.\n",
            ThemeColorName.whiteColor.withOpacity(.6),
            FontWeight.w400,
          ),
          const SizedBox(height: 10),
          buildLimitedText(
            "We are trying to do to this space what investment apps did for the nonexistent retail investors. We are gamefying digital currency, bringing in popular faces instead of hard to understand projects to make it the norm and inadvertently being the gateway drug for a lot of people to finally give this space a real look.\n",
            ThemeColorName.whiteColor.withOpacity(.6),
            FontWeight.w400,
          ),
          isExpanded
              ? Column(
                  children: [
                    buildText(
                      "A new digital economy is coming. People would be just as powerful as countries and creators would be paid beyond the peanuts that conventional social media platforms can offer",
                      ThemeColorName.greyTextColor,
                      FontWeight.w700,
                    ),
                    buildText(
                      "There would be new markets and advertisers with little to offer would not find home there. Like Kanye said, ",
                      ThemeColorName.greyTextColor,
                      FontWeight.w400,
                    ),
                    const SizedBox(height: 10),
                    buildQuotationRow(),
                    buildText(
                      "Well, Kanye didn't exactly say that, but it sounds like something we hope he would say.",
                      ThemeColorName.whiteColor.withOpacity(.6),
                      FontWeight.w400,
                    ),
                    const SizedBox(height: 10),
                    buildText(
                      "Currency is digital, it has been that way for a while now, but this time there would be no dead presidents on the money, there would people like you on the money, and you would own it because it would make the most sense in the world.",
                      ThemeColorName.whiteColor.withOpacity(.6),
                      FontWeight.w400,
                    ),
                  ],
                )
              : Container(),
          const SizedBox(height: 20),
          buildReadMoreButton(),
        ],
      ),
    );
  }

  Widget buildLogoRow() {
    return Row(
      children: [
        Assets.images.logo.image(),
        const SizedBox(width: 24),
        Text(
          "Tokner is coming",
          style: TextStyle(
            fontFamily: 'Century Gothic',
            color: ThemeColorName.whiteColor,
            fontWeight: FontWeight.w700,
            fontSize: 48,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget buildText(String text, Color color, FontWeight fontWeight) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Century Gothic',
        color: color,
        fontWeight: fontWeight,
        height: 1.5,
        fontSize: 16,
      ),
    );
  }

  Widget buildQuotationRow() {
    return Row(
      children: [
        Assets.images.quotation.image(),
        const SizedBox(width: 10),
        Flexible(
          child: Text(
            "Personalities would become the new currency, and services would be built on top of them",
            style: TextStyle(
              fontFamily: 'Century Gothic',
              height: 1.5,
              color: ThemeColorName.greyTextColor,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            maxLines: 2,
          ),
        ),
      ],
    );
  }

  Widget buildLimitedText(
    String text,
    Color color,
    FontWeight fontWeight,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: buildText(
        isExpanded ? text : _truncateText(text, 3),
        color,
        fontWeight,
      ),
    );
  }

  String _truncateText(String text, int maxLines) {
    return text.split('\n').take(maxLines).join('\n');
  }

  Widget buildReadMoreButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        width: 147,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(52),
          border: Border.all(
            color: ThemeColorName.learnMoreGreen,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            isExpanded ? "Read Less" : "Read More",
            style: TextStyle(
              fontFamily: 'Century Gothic',
              color: ThemeColorName.whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
  // Widget buildReadMoreButton() {
  //   return GestureDetector(
  //     onTap: () {
  //       // Handle the read more action
  //     },
  //     child: Container(
  //       width: 147,
  //       height: 48,
  //       decoration: BoxDecoration(
  //         color: Colors.transparent,
  //         borderRadius: BorderRadius.circular(52),
  //         border: Border.all(
  //           color: ThemeColorName.learnMoreGreen,
  //           width: 2,
  //         ),
  //       ),
  //       child: Center(
  //         child: Text(
  //           "Read More",
  //           style: TextStyle(
  //             fontFamily: 'Century Gothic',
  //             color: ThemeColorName.whiteColor,
  //             fontWeight: FontWeight.w700,
  //             fontSize: 14,
  //           ),
  //           textAlign: TextAlign.center,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  /// pre sales widget
  Widget presalesWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 250),
          child: Text("Presale Details",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: ThemeColorName.whiteColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 48,
                  )),
        ),
        Container(
            margin: const EdgeInsets.only(left: 73, right: 73, top: 20),
            child: Row(
              children: List.generate(
                presalesModel.length,
                (presalesindex) => Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: presalesindex == 1 ? 60.0 : 0.0, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(38.0),
                        child: SingleChildScrollView(
                          physics: const NeverScrollableScrollPhysics(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  presalesModel[presalesindex]
                                      .backgroundImages[presalesindex],
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Assets.images.ellipse.image(
                                              color: colors[presalesindex]),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                15, 20, 15, 20),
                                            child: Text(
                                              "0${presalesindex + 1}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                    color: ThemeColorName
                                                        .textColor,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 26,
                                                  ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                          presalesModel[presalesindex]
                                              .title[presalesindex],
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 32,
                                              )),
                                      Text(presalesModel[presalesindex].date,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                  color: ThemeColorName
                                                      .presaleColor
                                                      .withOpacity(.80))),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 70,
                              ),
                              Text(presalesModel[presalesindex].bnb,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: ThemeColorName.presaleColor
                                            .withOpacity(.80),
                                        fontSize: 20,
                                      )),

                              const SizedBox(
                                height: 20.0,
                              ),
                              // SOFTCAP
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Soft cap: ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: ThemeColorName.presaleColor,
                                            fontSize: 16,
                                          ),
                                    ),
                                    TextSpan(
                                        text: presalesModel[presalesindex]
                                            .softcap,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                              fontWeight: FontWeight.w700,
                                              color:
                                                  ThemeColorName.presaleColor,
                                              fontSize: 16,
                                            )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Hard cap: ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: ThemeColorName.presaleColor,
                                            fontSize: 16,
                                          ),
                                    ),
                                    TextSpan(
                                        text: presalesModel[presalesindex]
                                            .hardcap,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                              fontWeight: FontWeight.w700,
                                              color:
                                                  ThemeColorName.presaleColor,
                                              fontSize: 16,
                                            )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
            //  SizedBox(
            //   height: 585,
            //   child: ListView.separated(
            //       shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (context, presalesindex) =>     separatorBuilder: ((context, index) => const SizedBox(
            //             width: 20.0,
            //           )),
            //       itemCount: presalesModel.length),
            // ),

            ),
      ],
    );
  }

  Widget howtobuyWidget() {
    return Column(
      children: [
        /// how to buy
        Container(
          margin: const EdgeInsets.only(top: 160, bottom: 50),
          child: Center(
            child: Text(
              "How to buy",
              style: TextStyle(
                fontFamily: 'Century Gothic',
                color: ThemeColorName.whiteColor,
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        // Stack(
        //   children: [
        //     // Positioned(
        //     //     top: MediaQuery.of(context).size.height * 0.27,
        //     //     left: MediaQuery.of(context).size.width * 0.4,
        //     //     child: Container(
        //     //       decoration: const BoxDecoration(
        //     //         color: Color(0xFF0F1320), // #0F1320 color
        //     //         shape: BoxShape
        //     //             .circle, // This will make the container circular
        //     //       ),
        //     //       child: Assets.images.chevronRight.image(color: colors[0]),
        //     //     )),
        //   ],
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            howtobuyLiast.length,
            (howtobuyindex) => Padding(
              padding: EdgeInsets.only(
                  top: howtobuyindex == 1 ? 60 : 0, right: 20.0),
              child: Container(
                  // margin:
                  //     const EdgeInsets.only(left: 73, right: 73, top: 20),
                  child: Container(
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: ThemeColorName.createrColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "0${howtobuyindex + 1}",
                        style: TextStyle(
                          fontFamily: 'Century Gothic',
                          color: ThemeColorName.whiteColor.withOpacity(.30),
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 50),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          howtobuyLiast[howtobuyindex].toString(),
                          textAlign: TextAlign.center,
                          maxLines: 4,
                          style: TextStyle(
                            fontFamily: 'Century Gothic',
                            color: ThemeColorName.whiteColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),

              // SizedBox(
              //   height: 270,
              //   child: ListView.separated(
              //       shrinkWrap: true,
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: ((context, howtobuyindex) =>    separatorBuilder: ((context, howtobuyindex) =>
              //           SizedBox(
              //             width: 20.0,
              //           )),
              //       itemCount: howtobuyLiast.length),
              // ),
            ),
          ),
        ),
      ],
    );
  }

  Widget footerWidget() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 100),
        )
      ],
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColorName.backgroundColor,
      appBar: MobileAppBarComponent(),
      body: dynamicBody(),
    );
  }
}

class CreatersModel {
  List<Color> color;
  List<Image> image;
  List<String> itemsTitle;
  List<String> itemsDescription;
  CreatersModel(
      {required this.color,
      required this.image,
      required this.itemsTitle,
      required this.itemsDescription});
}

class PreSalesModel {
  List<Image> backgroundImages;
  String index;
  List<String> title;
  String date;
  String bnb;
  String softcap;
  String hardcap;
  PreSalesModel({
    required this.backgroundImages,
    required this.index,
    required this.title,
    required this.date,
    required this.bnb,
    required this.softcap,
    required this.hardcap,
  });
}
