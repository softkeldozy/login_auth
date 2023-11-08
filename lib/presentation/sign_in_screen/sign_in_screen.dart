import 'package:flutter/material.dart';
import 'package:login_auth/core/app_export.dart';
import 'package:login_auth/widgets/app_bar/appbar_leading_image.dart';
import 'package:login_auth/widgets/app_bar/custom_app_bar.dart';
import 'package:login_auth/widgets/custom_checkbox_button.dart';
import 'package:login_auth/widgets/custom_elevated_button.dart';
import 'package:login_auth/widgets/custom_text_form_field.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
    key: key,
  );

  TextEditingController loginFormController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  bool rememberMeCheckbox = false;

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
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 14.v),
                Text(
                  "Welcome".toUpperCase(),
                  style: CustomTextStyles.headlineLargeBold,
                ),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 64.h),
                    child: Text(
                      "Let`s dive in",
                      style: CustomTextStyles.headlineLargeMedium,
                    ),
                  ),
                ),
                SizedBox(height: 32.v),
                _buildLoginForm(context),
                SizedBox(height: 23.v),
                _buildPasswordField(context),
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildRememberMeCheckbox(context),
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(
                          "Forgot your password?",
                          style: CustomTextStyles.bodyMediumGray900,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 59.v),
                _buildSignInButton(context),
                SizedBox(height: 16.v),
                _buildSignUpButton(context),
                SizedBox(height: 16.v),
                CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                ),
                SizedBox(height: 98.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 8.v,
                    // child: AnimatedSmoothIndicator(
                    //   activeIndex: 0,
                    //   count: 4,
                    //   effect: ScrollingDotsEffect(
                    //     spacing: 2,
                    //     activeDotColor: appTheme.black900,
                    //     dotColor: appTheme.black900,
                    //     dotHeight: 8.v,
                    //     dotWidth: 8.h,
                    //   ),
                    // ),
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
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow2,
        margin: EdgeInsets.fromLTRB(29.h, 26.v, 367.h, 26.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 25.h,
      ),
      child: CustomTextFormField(
        controller: loginFormController,
        hintText: "First name",
        hintStyle: CustomTextStyles.bodyMediumErrorContainer,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(19.h, 18.v, 8.h, 18.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 14.v,
            width: 12.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 50.v,
        ),
        contentPadding: EdgeInsets.only(
          top: 15.v,
          right: 30.h,
          bottom: 15.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 25.h,
      ),
      child: CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Enter your password",
        hintStyle: CustomTextStyles.bodyMediumErrorContainer,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(19.h, 19.v, 13.h, 16.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 14.v,
            width: 11.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 50.v,
        ),
        suffix: Container(
          margin: EdgeInsets.fromLTRB(12.h, 16.v, 15.h, 16.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSettingsErrorcontainer,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 50.v,
        ),
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(vertical: 15.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMeCheckbox(BuildContext context) {
    return CustomCheckboxButton(
      text: "Remember me",
      value: rememberMeCheckbox,
      padding: EdgeInsets.symmetric(vertical: 2.v),
      onChange: (value) {
        rememberMeCheckbox = value;
      },
    );
  }

  /// Section Widget
  Widget _buildSignInButton(BuildContext context) {
    return CustomElevatedButton(
      height: 46.v,
      text: "Sign In",
      margin: EdgeInsets.only(
        left: 26.h,
        right: 24.h,
      ),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      height: 46.v,
      text: "Sign Up",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 25.h,
      ),
      buttonStyle: CustomButtonStyles.outlineBlackTL23,
      buttonTextStyle: CustomTextStyles.titleMediumGray900,
    );
  }
}
