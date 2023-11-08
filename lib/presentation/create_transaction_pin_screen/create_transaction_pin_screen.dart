import 'package:flutter/material.dart';
import 'package:login_auth/core/app_export.dart';
import 'package:login_auth/widgets/custom_elevated_button.dart';
import 'package:login_auth/widgets/custom_pin_code_text_field.dart';

class CreateTransactionScreen extends StatelessWidget {
  const CreateTransactionScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 23.h,
            top: 162.v,
            right: 23.h,
          ),
          child: Column(
            children: [
              Container(
                width: 302.h,
                margin: EdgeInsets.symmetric(horizontal: 39.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Create Transaction Pin\n\n\n",
                        style: CustomTextStyles.headlineLargeRegular_1,
                      ),
                      TextSpan(
                        text:
                        "Transaction pin is a four (4) digit number, required for transactions",
                        style: CustomTextStyles.bodyLargeIBMPlexSans18_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "New Pin",
                    style: CustomTextStyles.titleSmallBlack900SemiBold,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 75.v),
              CustomElevatedButton(
                text: "Create Pin",
                margin: EdgeInsets.only(
                  left: 6.h,
                  right: 4.h,
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
