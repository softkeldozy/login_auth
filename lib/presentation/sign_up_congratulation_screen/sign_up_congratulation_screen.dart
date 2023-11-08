import 'package:flutter/material.dart';
import 'package:login_auth/core/app_export.dart';
import 'package:login_auth/widgets/custom_elevated_button.dart';

class SignUpCongratulationScreen extends StatelessWidget {
  const SignUpCongratulationScreen({Key? key})
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
          padding: EdgeInsets.only(top: 101.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup9001Errorcontainer,
                height: 162.adaptSize,
                width: 162.adaptSize,
              ),
              SizedBox(height: 8.v),
              SizedBox(
                width: 249.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "\n",
                        style: CustomTextStyles.iBMPlexSansBlack900,
                      ),
                      TextSpan(
                        text: "\n\nCongratulations!\n",
                        style: CustomTextStyles.headlineLargeRegular_1,
                      ),
                      TextSpan(
                        text: "\n",
                        style: CustomTextStyles.headlineSmallRegular,
                      ),
                      TextSpan(
                        text: "\n",
                        style: CustomTextStyles.bodyLargeIBMPlexSans18_1,
                      ),
                      TextSpan(
                        text:
                        "Your account has been created. \nWelcome onboard!",
                        style: CustomTextStyles.bodyLargeIBMPlexSans18,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 86.v),
              CustomElevatedButton(
                width: 138.h,
                text: "Continue",
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 11.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrow1Gray5002,
                    height: 2.v,
                    width: 16.h,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillBlack,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
