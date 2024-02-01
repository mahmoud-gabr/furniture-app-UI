import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/features/onboarding/data/models/onboard_model.dart';

import 'package:furniture_app/features/onboarding/presentation/views/widgets/onboard_content.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  @override
  Widget build(BuildContext context) {
    final List<OnboardModel> onborardItems = [
      OnboardModel(
        color: kWhite,
        image: 'assets/images/4.png',
        title: 'Furniture is Art',
        subTitle:
            'buying your own furniture to provide you with\n ease and comfort',
      ),
      OnboardModel(
        color: kOrange,
        image: 'assets/images/3.png',
        title: 'Enjoy the modern\nFurniture',
        subTitle: 'Furniture provides a place to relax in your home',
      ),
      OnboardModel(
        color: kWhite,
        image: 'assets/images/5.png',
        title: 'let\'s start',
        subTitle:
            'But not only does furniture give you a spot to\nphysically get comfortable',
      ),
    ];
    PageController controller = PageController();
    return Scaffold(
      body: PageView.builder(
        controller: controller,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: onborardItems.length,
        itemBuilder: (context, index) {
          return OnboardContent(
            item: onborardItems[index],
            index: onborardItems.length,
            controller: controller,
            activeIndex: index,
          );
        },
      ),
    );
  }
}
