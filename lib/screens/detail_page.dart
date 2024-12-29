import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sole_mate/common/gaps.dart';
import 'package:sole_mate/constants/colors.dart';
import 'package:sole_mate/constants/font_sizes.dart';
import 'package:sole_mate/constants/gap_sizes.dart';
import 'package:sole_mate/data/shoe_data.dart';

import '../repository/selected_index_repo.dart';

class DetailScreen extends ConsumerStatefulWidget {
  const DetailScreen({super.key});

  @override
  ConsumerState<DetailScreen> createState() => _CartTabState();
}

class _CartTabState extends ConsumerState<DetailScreen> {
  final iconList = [
    FontAwesomeIcons.solidStar,
    FontAwesomeIcons.layerGroup,
    FontAwesomeIcons.shieldHalved,
    FontAwesomeIcons.sliders
  ];

  final descText = ["4.6/5", "Comfort", "Durable", "Adaptive"];

  @override
  Widget build(BuildContext context) {
    final selectedIndex_ = ref.watch(selectedIndex);
    TextTheme textTheme = Theme.of(context).textTheme;
    final shoeList = ShoesList.shoesList[selectedIndex_];
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        width: size.width * 0.75,
        child: FloatingActionButton.extended(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          label: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Add to cart",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: FontSizes.mediumFont),
              ),
              horizontalGap(100),
              Text(
                shoeList.price,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: FontSizes.mediumFont),
              )
            ],
          ),
          backgroundColor: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_rounded),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(AppColors.secondaryColor),
          ),
        ),
        title: const Text("Product Details"),
        actions: [
          IconButton(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black38),
                  borderRadius: BorderRadius.circular(100)),
            )),
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.ellipsisVertical, size: 20),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: "tag$selectedIndex_",
              child: Image.network(shoeList.image),
            ),
            Container(
              width: double.maxFinite,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  shoeList.sizeList.length,
                  (index) => Container(
                    width: 70,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: GapSizes.smallestGap,
                        vertical: GapSizes.smallestGap),
                    margin: const EdgeInsets.symmetric(
                        horizontal: GapSizes.smallerGap),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black38, // Border color
                        width: 2.0, // Border width
                      ),
                      color: index == 1 ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      shoeList.sizeList[index],
                      style: TextStyle(
                        color: index != 1 ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            verticalGap(GapSizes.bigGap),
            Text(
              shoeList.category,
              style: textTheme.labelLarge,
            ),
            verticalGap(GapSizes.smallestGap),
            SizedBox(
              width: size.width * 0.9,
              child: Text(
                shoeList.itemName,
                style: textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
            verticalGap(GapSizes.smallerGap),
            SizedBox(
              width: size.width * 0.85,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore .",
                style: textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
            ),
            verticalGap(GapSizes.biggerGap),
            Container(
              height: 90,
              decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(15)),
              width: size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  iconList.length,
                  (index) => Expanded(
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          // color: Colors.green,
                          border: Border(
                              right: BorderSide(
                                  color: index == 3
                                      ? Colors.transparent
                                      : Colors.grey.shade300,
                                  width: index == 3 ? 0 : 1))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            iconList[index],
                          ),
                          verticalGap(GapSizes.smallestGap),
                          Text(
                            descText[index],
                            style: textTheme.bodySmall,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            verticalGap(GapSizes.bigGap),
            SizedBox(
              width: size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Description", style: textTheme.headlineMedium),
                  Row(
                    children: [
                      Text(
                        "Show More",
                        style: textTheme.labelLarge,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            verticalGap(GapSizes.smallestGap),
            SizedBox(
              width: size.width * 0.9,
              child: Text(
                shoeList.description,
                style: textTheme.labelLarge,
              ),
            ),
            verticalGap(80)
          ],
        ),
      ),
    );
  }
}
