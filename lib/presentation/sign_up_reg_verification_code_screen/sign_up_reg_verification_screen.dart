import 'package:flutter/material.dart';
import 'package:login_auth/core/app_export.dart';
import 'package:login_auth/widgets/app_bar/appbar_leading_image.dart';
import 'package:login_auth/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:login_auth/widgets/app_bar/custom_app_bar.dart';
import 'package:login_auth/widgets/custom_elevated_button.dart';

class SignUpRegVerificationScreen extends StatelessWidget {
  const SignUpRegVerificationScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 19.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 3.v),
              Container(
                width: 337.h,
                margin: EdgeInsets.only(right: 44.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Sign Up\n",
                        style: CustomTextStyles.headlineLargeBold_1,
                      ),
                      TextSpan(
                        text: "\n",
                        style: CustomTextStyles.headlineSmallGray900_1,
                      ),
                      TextSpan(
                        text: "\nEnter the 4 digit ",
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "verification code",
                        style: CustomTextStyles.titleSmallBlack900.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: " sent to your phone.\n\n\n",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 92.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "Verification Code",
                  style: CustomTextStyles.labelLargeBlack900,
                ),
              ),
              SizedBox(height: 6.v),
              _buildFiveStack(context),
              SizedBox(height: 15.v),
              _buildVectorRow(context),
              SizedBox(height: 33.v),
              CustomElevatedButton(
                height: 54.v,
                width: 147.h,
                text: "Continue",
                margin: EdgeInsets.only(right: 3.h),
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrow1Gray5002,
                    height: 2.v,
                    width: 16.h,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillBlack,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 84.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 336.h,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    right: 23.h,
                  ),
                  child: Text(
                    "1   2   3 \n4   5   6\n7   8   9\n    0   <",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.headlineLargeRegular.copyWith(
                      height: 2.33,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow2,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 26.v,
          bottom: 26.v,
        ),
      ),
      actions: [
        AppbarSubtitleThree(
          text: "Login",
          margin: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 18.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFiveStack(BuildContext context) {
    return SizedBox(
      height: 54.v,
      width: 381.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 42.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      "5",
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 80.h),
                    child: Text(
                      "8",
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 92.h,
                right: 103.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 54.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.black900,
                    ),
                  ),
                  const Spacer(
                    flex: 50,
                  ),
                  SizedBox(
                    height: 54.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.black900,
                    ),
                  ),
                  const Spacer(
                    flex: 49,
                  ),
                  SizedBox(
                    height: 54.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.black900,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 10.v,
            width: 12.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              bottom: 1.v,
            ),
            child: Text(
              "Resend Code ",
              style: CustomTextStyles.bodySmall12_1,
            ),
          ),
          const Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlack900,
            height: 10.v,
            width: 12.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Change Phone  Number",
              style: CustomTextStyles.bodySmall12_1,
            ),
          ),
        ],
      ),
    );
  }
}
