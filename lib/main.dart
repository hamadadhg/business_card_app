import 'package:business_card_app/cubits/take_value_cubit/take_value_cubit.dart';
import 'package:business_card_app/view/front_and_back_business_card_view.dart';
import 'package:business_card_app/view/email_view.dart';
import 'package:business_card_app/view/home_view.dart';
import 'package:business_card_app/view/image_view.dart';
import 'package:business_card_app/view/number_view.dart';
import 'package:business_card_app/view/site_view.dart';
import 'package:business_card_app/view/work_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(
      const BusinessCardApp(),
    );

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TakeValueCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        routes: {
          HomeView.homeViewId: (context) => const HomeView(),
          WorkView.workViewId: (context) => const WorkView(),
          NumberView.numberViewId: (context) => const NumberView(),
          EmailView.emailViewId: (context) => const EmailView(),
          SiteView.siteViewId: (context) => const SiteView(),
          ImageView.imageViewId: (context) => const ImageView(),
          FrontAndBackBusinessCardView.frontAndBackBusinessCardViewId:
              (context) => const FrontAndBackBusinessCardView(),
        },
        initialRoute: HomeView.homeViewId,
      ),
    );
  }
}
