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
  @override
  Widget build(BuildContext context) {
    final selectedIndex_ = ref.watch(selectedIndex);
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
            )
          ],
        ),
      ),
    );
  }
}
