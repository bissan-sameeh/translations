import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'location.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isEn = false;

  void changeLanguage() {
    isEn = !isEn;
    isEn
        ? context.setLocale(const Locale('en'))
        : context.setLocale(const Locale('ar'));
    debugPrint(isEn.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'title'.tr(),
            ),
            Text("demoText".tr()),
            ElevatedButton(
                onPressed: () {
                  changeLanguage();
                },
                child: Text('buttonText'.tr())),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LocationScreen();
                  },
                ));
              },
              child: Icon(Icons.location_city_rounded),
            )
          ],
        ),
      ),
    );
  }
}
