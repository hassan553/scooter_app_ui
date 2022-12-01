import 'package:flutter/material.dart';
import 'package:scooter_app_ui/constants.dart';
import 'package:scooter_app_ui/peresntation/views/home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Image.asset(
                  'assets/logo.png',
                  width: 146,
                  height: 35,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: getSize(context: context).height * .06,
                ),
                const Text(
                  'your scooter in one app  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: getSize(context: context).height * .04,
                ),
                Expanded(
                  flex: 12,
                  child: Image.asset(
                    'assets/imag1.png',
                  
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: getSize(context: context).height * .03,
                ),
                const Text(
                  'Everything you need to know about your scooter is available here in your app',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeView(),
                          ));
                    },
                    minWidth: 40,
                    height: 40,
                    color: Colors.orange,
                    child: const Icon(
                      Icons.keyboard_double_arrow_right,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
