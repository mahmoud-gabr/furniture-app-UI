import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/core/utils/app_routers.dart';
import 'package:furniture_app/features/onboarding/data/models/onboard_model.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.controller,
    required this.activeIndex,
    required this.item,
    required this.index,
  });

  final PageController controller;
  final int activeIndex;
  final int index;
  final OnboardModel item;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: item.color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouters.kHomeView);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: activeIndex == 1 ? kWhite : kBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 6,
            ),
            Image.asset(
              item.image,
              width: activeIndex == 1 ? width * .7 : width * .5,
            ),
            const Spacer(
              flex: 4,
            ),
            AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: index,
              effect: ExpandingDotsEffect(
                dotColor: kBrown300,
                activeDotColor: kBrown,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: activeIndex == 1 ? kWhite : kBlack,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            Text(
              item.subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: activeIndex == 1 ? kWhite : kBlack,
                fontSize: 14,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            SizedBox(
              width: width * .3,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: activeIndex == 1
                      ? MaterialStateProperty.all<Color>(kWhite)
                      : MaterialStateProperty.all<Color>(kOrange),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
                onPressed: () {
                  activeIndex == 2
                      ? GoRouter.of(context).push(AppRouters.kHomeView)
                      : controller.nextPage(
                          duration: const Duration(microseconds: 300),
                          curve: Curves.bounceIn,
                        );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                        color: activeIndex == 1 ? kOrange : kWhite,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: activeIndex == 1 ? kOrange : kWhite,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}
