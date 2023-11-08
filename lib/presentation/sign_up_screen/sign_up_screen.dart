import 'package:flutter/material.dart';
import 'package:login_auth/core/app_export.dart';
import 'package:login_auth/widgets/app_bar/appbar_leading_image.dart';
import 'package:login_auth/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:login_auth/widgets/app_bar/custom_app_bar.dart';
import 'package:login_auth/widgets/custom_checkbox_button.dart';
import 'package:login_auth/widgets/custom_elevated_button.dart';
import 'package:login_auth/widgets/custom_text_form_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key})
      : super(
    key: key,
  );

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  bool agreementTextEnUsCheckBox = false;

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
              horizontal: 24.h,
              vertical: 23.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 369.h,
                  margin: EdgeInsets.only(right: 10.h),
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
                          text:
                          "\nWe need an email for notifications and a password for login purpose.   \n",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  "E-mail",
                  style: CustomTextStyles.labelLargeBlack900,
                ),
                SizedBox(height: 4.v),
                CustomTextFormField(
                  controller: passwordController,
                  hintText: "alexander@gmail.com",
                  hintStyle:
                  CustomTextStyles.bodyLargeIBMPlexSansOnErrorContainer,
                  textInputType: TextInputType.emailAddress,
                  borderDecoration:
                  TextFormFieldStyleHelper.fillOnPrimaryContainer,
                ),
                SizedBox(height: 29.v),
                _buildSetAPasswordRow(context),
                SizedBox(height: 4.v),
                CustomTextFormField(
                  controller: passwordController1,
                  hintText: "********",
                  hintStyle: CustomTextStyles.bodyLargeOnErrorContainer18,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 14.v,
                  ),
                  borderDecoration:
                  TextFormFieldStyleHelper.fillOnPrimaryContainer,
                ),
                SizedBox(height: 21.v),
                _buildAgreementTextEnUsCheckBox(context),
                SizedBox(height: 28.v),
                CustomElevatedButton(
                  width: 156.h,
                  text: "Continue",
                  margin: EdgeInsets.only(right: 3.h),
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 11.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrow1Gray5002,
                      height: 16.v,
                      width: 16.h,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillBlack,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 5.v),
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

  /// Section Widget
  Widget _buildSetAPasswordRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Set a Password",
            style: CustomTextStyles.labelLargeBlack900,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Min. 8 Characters",
              style: CustomTextStyles.bodySmallGray9009,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAgreementTextEnUsCheckBox(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 77.h),
      child: CustomCheckboxButton(
        text: "I agree to the Terms of service  and Privacy Policy",
        value: agreementTextEnUsCheckBox,
        textStyle: CustomTextStyles.bodySmall12,
        onChange: (value) {
          agreementTextEnUsCheckBox = value;
        },
      ),
    );
  }
}
