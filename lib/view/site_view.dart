import 'package:business_card_app/constant.dart';
import 'package:business_card_app/cubits/take_value_cubit/take_value_cubit.dart';
import 'package:business_card_app/view/image_view.dart';
import 'package:business_card_app/widgets/circle_avatar_widget/custom_circle_avatar_widget.dart';
import 'package:business_card_app/widgets/general_widget/custom_some_contain_the_secreen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SiteView extends StatefulWidget {
  const SiteView({super.key});
  static String siteViewId = 'SiteView';

  @override
  State<SiteView> createState() => _SiteViewState();
}

class _SiteViewState extends State<SiteView> {
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
                viewNumber: '5/6',
                firstTextInTextWidget: 'Site',
                secondTextInTextWidget: 'Where Is Your Site?',
                onChanged: (value) {
                  BlocProvider.of<TakeValueCubit>(context).takeValueMethod(
                    takeValue: value,
                    index: 4,
                  );
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
                          ImageView.imageViewId,
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
