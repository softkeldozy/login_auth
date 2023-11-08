import 'package:flutter/material.dart';
import 'package:login_auth/core/app_export.dart';
import 'package:login_auth/widgets/app_bar/appbar_leading_image.dart';
import 'package:login_auth/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:login_auth/widgets/app_bar/custom_app_bar.dart';
import 'package:login_auth/widgets/custom_elevated_button.dart';
import 'package:login_auth/widgets/custom_text_form_field.dart';

class SignUpRegFoneNumberScreen extends StatelessWidget {
  SignUpRegFoneNumberScreen({Key? key})
      : super(
    key: key,
  );

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 19.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4.v),
                Container(
                  width: 368.h,
                  margin: EdgeInsets.only(right: 13.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Sign Up\n",
                          style: CustomTextStyles.headlineLargeBold_1,
                        ),
                        TextSpan(
                          text: "\n",
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextSpan(
                          text: "\nEnter your ",
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: "phone number",
                          style: CustomTextStyles.titleSmallBlack900.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text:
                          " below.\n\nWe will send a 4 digit verification code to verify your phone number.",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 65.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "Phone Number",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 4.v),
                CustomTextFormField(
                  controller: phoneNumberController,
                  hintText: "+234  Your Phone Number",
                  hintStyle: CustomTextStyles.bodyLargeOnErrorContainer_2,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.phone,
                  prefix: Padding(
                    padding: EdgeInsets.fromLTRB(21.h, 15.v, 30.h, 15.v),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: 20.v,
                          width: 36.h,
                          margin: EdgeInsets.fromLTRB(21.h, 15.v, 30.h, 15.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: 5.v,
                          width: 8.h,
                        ),
                      ],
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 50.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    top: 14.v,
                    right: 30.h,
                    bottom: 14.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlackTL15,
                ),
                SizedBox(height: 47.v),
                CustomElevatedButton(
                  width: 138.h,
                  text: "Send OTP",
                  margin: EdgeInsets.only(right: 1.h),
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 9.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrow1Gray5002,
                      height: 2.v,
                      width: 16.h,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillBlack,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 89.v),
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
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow2,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 26.v,
          bottom: 26.v,
        ),
      ),
      actions: [
        AppbarSubtitleThree(
          text: "Login",
          margin: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 18.v,
          ),
        ),
      ],
    );
  }
}
