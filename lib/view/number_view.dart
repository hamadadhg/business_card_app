import 'package:business_card_app/view/email_view.dart';
import 'package:business_card_app/widgets/circle_avatar_widget/custom_circle_avatar_widget.dart';
import 'package:business_card_app/widgets/general_widget/custom_some_contain_the_secreen_widget.dart';
import 'package:flutter/material.dart';

class NumberView extends StatefulWidget {
  const NumberView({super.key});
  static String numberViewId = 'NumberView';

  @override
  State<NumberView> createState() => _NumberViewState();
}

class _NumberViewState extends State<NumberView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const CustomSomeContainTheSecreenWidget(
                viewNumber: '3/6',
                firstTextInTextWidget: 'Number',
                secondTextInTextWidget:
                    'What\'s Your Number And Your State Symbol?',
                textInputType: TextInputType.phone,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCircleAvatarWidget(
                    text: 'Back',
                    backgroundColor: Colors.red,
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                  ),
                  const SizedBox(
                    width: 110,
                  ),
                  CustomCircleAvatarWidget(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).pushNamed(
                          EmailView.emailViewId,
                        );
                      } else {
                        setState(
                          () {
                            autovalidateMode = AutovalidateMode.always;
                          },
                        );
                      }
                    },
                    text: 'Go',
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
