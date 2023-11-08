import 'package:flutter/material.dart';
import 'package:login_auth/core/app_export.dart';
import 'package:login_auth/widgets/custom_elevated_button.dart';
import 'package:login_auth/widgets/custom_icon_button.dart';

class BiometricsSetupScreen extends StatelessWidget {
  const BiometricsSetupScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 34.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              Container(
                height: 514.v,
                width: 343.h,
                decoration: AppDecoration.outlineBlack900,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 53.v,
                        ),
                        decoration: AppDecoration.outlineGrayA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 279.v,
                              width: 250.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "Biometrics".toUpperCase(),
                                      style: theme.textTheme.headlineLarge,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage3,
                                    height: 250.adaptSize,
                                    width: 250.adaptSize,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              "Setup biometrics",
                              style: CustomTextStyles.bodyLargeIBMPlexSans,
                            ),
                            SizedBox(height: 12.v),
                            Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomElevatedButton(
                                    width: 138.h,
                                    text: "Set up",
                                    margin: EdgeInsets.only(bottom: 1.v),
                                    buttonStyle: CustomButtonStyles.fillBlack,
                                  ),
                                  CustomElevatedButton(
                                    width: 138.h,
                                    text: "Later",
                                    margin: EdgeInsets.only(left: 22.h),
                                    buttonStyle: CustomButtonStyles.fillBlack,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 18.v),
                          ],
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.outlineBlueGray,
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.img68,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
