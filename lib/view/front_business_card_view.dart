import 'package:business_card_app/cubits/take_value_cubit/take_value_cubit.dart';
import 'package:business_card_app/model/access_value_model.dart';
import 'package:business_card_app/states/take_value_state.dart';
import 'package:business_card_app/widgets/general_widget/custom_front_card_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FrontBusinessCardView extends StatefulWidget {
  const FrontBusinessCardView({super.key});
  static String frontBusinessCardViewId = 'FrontBusinessCardView';

  @override
  State<FrontBusinessCardView> createState() => _FrontBusinessCardViewState();
}

class _FrontBusinessCardViewState extends State<FrontBusinessCardView> {
  late List<String> listToRecieveValue;
  @override
  void initState() {
    listToRecieveValue =
        BlocProvider.of<TakeValueCubit>(context).listToTakeValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TakeValueCubit, TakeValueState>(
      builder: (context, state) {
        listToRecieveValue = context.read<TakeValueCubit>().listToTakeValue;
        final AccessValueModel accessValueModel = AccessValueModel(
          name: listToRecieveValue[0],
          work: listToRecieveValue[1],
          number: listToRecieveValue[2],
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
                const CustomTextWidget(
                  text: 'Front Card',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xffE5B952,
                  ),
                  fontFamily: 'Dancing Script',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFrontCardWidget(
                  firstListCollectionOfValue: listToRecieveValue,
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomTextWidget(
                  text: 'Back Card',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xffE5B952,
                  ),
                  fontFamily: 'Dancing Script',
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/image/1600w-0yP0535zjcg - Copy.webp',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
