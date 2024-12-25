import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sole_mate/common/gaps.dart';
import 'package:sole_mate/constants/font_sizes.dart';
import 'package:sole_mate/constants/gap_sizes.dart';

class HomeTab extends ConsumerStatefulWidget {
  const HomeTab({super.key});

  @override
  ConsumerState<HomeTab> createState() => _CartTabState();
}

class _CartTabState extends ConsumerState<HomeTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: NetworkImage(
              "https://cdn.pixabay.com/photo/2023/08/25/07/37/shoes-8212405_960_720.jpg",
            ),
          ),
        ),
        child: Column(
          children: [
            verticalGap(GapSizes.biggestGap),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: GapSizes.smallGap),
              child: Row(children: [
                ClipOval(
                  child: Container(
                      width: 63,
                      height: 63,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://cdn.pixabay.com/photo/2024/01/29/20/40/cat-8540772_960_720.jpg")),
                ),
                horizontalGap(GapSizes.smallGap),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rishi Boris",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: FontSizes.biggestFont),
                    ),
                    Text(
                      "Premium",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: FontSizes.bigFont),
                    )
                  ],
                ),
                const Spacer(),
                TextButton.icon(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.white,
                      ),
                      iconColor: MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.bagShopping),
                  label: const Text(
                    "02",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ]),
            ),
            verticalGap(size.height * 0.15),
            Container(
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: GapSizes.smallGap),
                child: const Text(
                  "The Ultimate Collection",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
            verticalGap(GapSizes.smallestGap),
            Container(
              alignment: Alignment.centerLeft,
              padding:
                  const EdgeInsets.symmetric(horizontal: GapSizes.smallGap),
              child: const Text(
                "Step into style",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            verticalGap(GapSizes.smallestGap),
            Expanded(
              child: Container(
                // height: size.height * 02,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: size.height * 0.3,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                    ),
                    Positioned(
                        child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (_, index) {
                              return Card(
                                margin: EdgeInsets.symmetric(horizontal: GapSizes.smallGap),
                                child: Container(
                                  width: size.width * 0.7,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: size.width * 0.45,
                                        child: Image.network(
                                            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/69da1e90-63d1-47d2-9372-4f6fb23f9eda/NIKE+AIR+FORCE+1+JEWEL.png"),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }))
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
