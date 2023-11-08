import 'package:flutter/material.dart';
import 'package:login_auth/core/app_export.dart';
import 'package:login_auth/widgets/app_bar/appbar_leading_image.dart';
import 'package:login_auth/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:login_auth/widgets/app_bar/custom_app_bar.dart';
import 'package:login_auth/widgets/custom_elevated_button.dart';
import 'package:login_auth/widgets/custom_text_form_field.dart';

class SignUpPersonalDetailsScreen extends StatelessWidget {
  SignUpPersonalDetailsScreen({Key? key})
      : super(
    key: key,
  );

  TextEditingController firstNameEditTextController = TextEditingController();

  TextEditingController lastNameEditTextController = TextEditingController();

  TextEditingController dateOfBirthEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(23.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 240.h,
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
                        text: "\nNow lets get to know more about you !",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(right: 124.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "First Name",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "Last Name",
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              _buildFirstNameRow(context),
              SizedBox(height: 29.v),
              _buildDateOfBirthRow(context),
              SizedBox(height: 3.v),
              _buildDateOfBirthEditText(context),
              SizedBox(height: 33.v),
              _buildContinueButton(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow2,
        margin: EdgeInsets.only(
          left: 27.h,
          top: 26.v,
          bottom: 26.v,
        ),
      ),
      actions: [
        AppbarSubtitleThree(
          text: "Login",
          margin: EdgeInsets.symmetric(
            horizontal: 31.h,
            vertical: 18.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFirstNameEditText(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: CustomTextFormField(
          controller: firstNameEditTextController,
          hintText: "Alexander",
          hintStyle: CustomTextStyles.bodyLargeIBMPlexSansOnErrorContainer,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 13.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLastNameEditText(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: lastNameEditTextController,
          hintText: "Michael",
          hintStyle: CustomTextStyles.bodyLargeIBMPlexSansGray600,
          borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFirstNameEditText(context),
          _buildLastNameEditText(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirthRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Date Of Birth ",
            style: theme.textTheme.labelLarge,
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "(DD/MM/YYYY)",
              style: CustomTextStyles.bodySmallGray9009,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirthEditText(BuildContext context) {
    return CustomTextFormField(
      controller: dateOfBirthEditTextController,
      hintText: "01/08/1990",
      hintStyle: CustomTextStyles.bodyLargeOnErrorContainer18_1,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 14.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      width: 156.h,
      text: "Continue",
      margin: EdgeInsets.only(right: 3.h),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 11.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrow1Gray5002,
          height: 2.v,
          width: 16.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillBlack,
      alignment: Alignment.centerRight,
    );
  }
}
