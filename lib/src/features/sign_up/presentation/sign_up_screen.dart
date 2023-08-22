import 'package:flutter/gestures.dart';

import '../../core/infrastructure/common_import.dart';

@RoutePage()
class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyScaffoldBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 16, right: 16),
          child: Column(
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                      ),
                      child: Stack(
                        children: [
                          Image.asset('assets/images/bg.png'),
                          Padding(
                            padding: const EdgeInsets.all(18),
                            child: RichText(
                              text: TextSpan(
                                text: context.locale.signUpScreenSignUpLabel,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 32,
                                  color: AppColors.blackColor,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: context.locale.signUpScreenWithLabel,
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  TextSpan(
                                    text: context.locale
                                        .signUpScreenEmailAndPhoneNumberLabel,
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Form(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText:
                                  context.locale.signUpScreenEmailHintLabel,
                            ),
                          ),
                          gapH12,
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: context
                                  .locale.signUpScreenPhoneNumberHintLabel,
                            ),
                          ),
                          gapH20,
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.blackColor,
                              foregroundColor: AppColors.whiteColor,
                            ),
                            child: Text(
                              context.locale.signUpScreenSignUpButtonLabel
                                  .toUpperCase(),
                              style: GoogleFonts.roboto(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: RichText(
                  text: TextSpan(
                    text: context.locale.signUpScreenAlreadyHaveAnAccountLabel,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: AppColors.blackColor,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: context.locale.signUpScreenSignInButtonLabel,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.blackColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //TODO:
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
