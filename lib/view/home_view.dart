/*
import 'package:business_card_app/constant.dart';
import 'package:business_card_app/cubits/take_value_cubit/take_value_cubit.dart';
import 'package:business_card_app/view/work_view.dart';
import 'package:business_card_app/widgets/circle_avatar_widget/custom_circle_avatar_widget.dart';
import 'package:business_card_app/widgets/general_widget/custom_some_contain_the_secreen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String homeViewId = 'HomeView';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomSomeContainTheSecreenWidget(
                viewNumber: '1/6',
                firstTextInTextWidget: 'Name',
                secondTextInTextWidget: 'What\'s Your Name?',
                onChanged: (value) {
                  BlocProvider.of<TakeValueCubit>(context).takeValueMethod(
                    takeValue: value,
                    index: 0,
                  );
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This Field Is Required';
                  } else if (value.length > 15) {
                    return 'Just You Can Write 15 Charactar';
                  }
                  return null;
                },
              ),
              CustomCircleAvatarWidget(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).pushNamed(
                      WorkView.workViewId,
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
        ),
      ),
    );
  }
}
*/
