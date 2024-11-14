/*
import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCard());
}

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 113,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/MyPhoto.jpg'),
                radius: 107,
              ),
            ),
            Text(
              'My Name Is Hamada Dere',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 35,
                fontFamily: 'Dancing Script',
              ),
            ),
            Text(
              'My Work Is Mobile Application Developer',
              style: TextStyle(
                color: Colors.red,
                fontSize: 35,
                fontFamily: 'Dancing Script',
              ),
            ),
            Divider(
              thickness: 2,
              height: 55,
              color: Colors.blue,
              indent: 60,
              endIndent: 60,
            ),
            Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 33,
                  color: Colors.green,
                ),
                title: Text('0949371163'),
              ),
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 33,
                    color: Colors.yellow,
                  ),
                  title: Text('samer123@gmail.com'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
/*
import 'package:business_card_app/screens/home_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BusinessCard());

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
*/
import 'package:business_card_app/cubits/take_value_cubit/take_value_cubit.dart';
import 'package:business_card_app/view/front_business_card_view.dart';
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
          FrontBusinessCardView.frontBusinessCardViewId: (context) =>
              const FrontBusinessCardView(),
        },
        initialRoute: HomeView.homeViewId,
      ),
    );
  }
}
