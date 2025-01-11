/*
import 'package:business_card_app/constant.dart';
import 'package:business_card_app/cubits/take_value_cubit/take_value_cubit.dart';
import 'package:business_card_app/view/site_view.dart';
import 'package:business_card_app/widgets/circle_avatar_widget/custom_circle_avatar_widget.dart';
import 'package:business_card_app/widgets/general_widget/custom_some_contain_the_secreen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              CustomSomeContainTheSecreenWidget(
                viewNumber: '4/6',
                firstTextInTextWidget: 'Email',
                secondTextInTextWidget: 'What\'s Your Email?',
                textInputType: TextInputType.emailAddress,
                onChanged: (value) {
                  BlocProvider.of<TakeValueCubit>(context).takeValueMethod(
                    takeValue: value,
                    index: 3,
                  );
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This Field Is Required';
                  } else if (value.length > 20) {
                    return 'Just You Can Write 20 Charactar';
                  } else if (!value.contains('@gmail.com')) {
                    return 'You Mustn\'t Forget @gmail.com';
                  }
                  return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCircleAvatarWidget(
                    text: 'Back',
                    backgroundColor: kRedColor,
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
                    backgroundColor: kGreenColor,
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
*/
