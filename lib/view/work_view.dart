import 'package:business_card_app/view/number_view.dart';
import 'package:business_card_app/widgets/circle_avatar_widget/custom_circle_avatar_widget.dart';
import 'package:business_card_app/widgets/general_widget/custom_some_contain_the_secreen_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_form_field_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class WorkView extends StatefulWidget {
  const WorkView({super.key});
  static String workViewId = 'WorkView';

  @override
  State<WorkView> createState() => _WorkViewState();
}

class _WorkViewState extends State<WorkView> {
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
                viewNumber: '2/6',
                firstTextInTextWidget: 'Work',
                secondTextInTextWidget: 'What Did You Work?',
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
                          NumberView.numberViewId,
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
