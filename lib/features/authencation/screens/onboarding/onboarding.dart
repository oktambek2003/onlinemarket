import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarket/features/authencation/controller_on_boarding/onborading_controller.dart';
import 'package:onlinemarket/features/authencation/screens/onboarding/widgets/onBoarding_skip.dart';
import 'package:onlinemarket/features/authencation/screens/onboarding/widgets/onboarding_buttom.dart';
import 'package:onlinemarket/features/authencation/screens/onboarding/widgets/onboarding_navigator.dart';

import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/constants/text_string.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboradingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: onlineShopImages.onboradingimages1,
                subtitle: onlineShopText.onBoardingSubTitle1,
                title: onlineShopText.onBoardingTitle1,
              ),
              OnboardingPage(
                image: onlineShopImages.onboradingimages2,
                subtitle: onlineShopText.onBoardingSubTitle2,
                title: onlineShopText.onBoardingTitle2,
              ),
              OnboardingPage(
                image: onlineShopImages.onboradingimages3,
                subtitle: onlineShopText.onBoardingSubTitle3,
                title: onlineShopText.onBoardingTitle3,
              )
            ],
          ),
          OnboardingSkip(),
          OnboardingNavigatorPage(),
          OnboardingButtom()

        ],
      ),
    );
  }
}


class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key,required this.image,required this.subtitle,required this.title});
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(onlineShopSizes.defaultSpace),
      child: Column(
        children: [Image(image:  AssetImage(image),
        width: onlineShopFunction.screenWidht()*0.8,
        height: onlineShopFunction.screenHeight()*0.6,
        ),
        Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
        const SizedBox(height: onlineShopSizes.spaceBtwItem,),
         Text(subtitle,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
