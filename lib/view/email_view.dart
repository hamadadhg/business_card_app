import 'package:business_card_app/view/site_view.dart';
import 'package:business_card_app/widgets/circle_avatar_widget/custom_circle_avatar_widget.dart';
import 'package:business_card_app/widgets/general_widget/custom_some_contain_the_secreen_widget.dart';
import 'package:flutter/material.dart';

class EmailView extends StatefulWidget {
  const EmailView({super.key});
  static String emailViewId = 'EmailView';

  @override
  State<EmailView> createState() => _EmailViewState();
}

class _EmailViewState extends State<EmailView> {
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
                viewNumber: '4/6',
                firstTextInTextWidget: 'Email',
                secondTextInTextWidget: 'What\'s Your Email?',
                textInputType: TextInputType.emailAddress,
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
                          SiteView.siteViewId,
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
