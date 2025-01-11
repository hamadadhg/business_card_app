import 'package:business_card_app/constant.dart';
import 'package:business_card_app/cubits/take_value_cubit/take_value_cubit.dart';
import 'package:business_card_app/model/access_value_model.dart';
import 'package:business_card_app/states/take_value_state.dart';
import 'package:business_card_app/widgets/general_widget/custom_front_card_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FrontAndBackBusinessCardView extends StatefulWidget {
  const FrontAndBackBusinessCardView({super.key});
  static String frontAndBackBusinessCardViewId = 'FrontAndBackBusinessCardView';

  @override
  State<FrontAndBackBusinessCardView> createState() =>
      _FrontAndBackBusinessCardViewState();
}

class _FrontAndBackBusinessCardViewState
    extends State<FrontAndBackBusinessCardView> {
  late List<String> listToRecieveValue;
  @override
  void initState() {
    listToRecieveValue = context.read<TakeValueCubit>().listToTakeValue;
    super.initState();
  }

//1: context.read<>() same 2: BlocProvider.of<>(context) , but the 1 is best

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TakeValueCubit, TakeValueState>(
      builder: (context, state) {
        final AccessValueModel accessValueModel = AccessValueModel(
          name: listToRecieveValue[0],
          work: listToRecieveValue[1],
          phone: listToRecieveValue[2],
          email: listToRecieveValue[3],
          site: listToRecieveValue[4],
          image: listToRecieveValue[5],
        );
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  text: 'Front Card',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kSunyColor,
                  fontFamily: 'Dancing Script',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFrontCardWidget(
                  firstAccessValueModel: accessValueModel,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextWidget(
                  text: 'Back Card',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kSunyColor,
                  fontFamily: 'Dancing Script',
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/image/back_card_image.webp',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
