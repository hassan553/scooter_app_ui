import 'package:flutter/material.dart';
import 'package:scooter_app_ui/constants.dart';

class SettingView extends StatefulWidget {
  SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.close,
            ),
          ),
        ],
      ),
      body: Container(
        width: getSize(context: context).width,
        height: getSize(context: context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/imag5.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/imag2.png',
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Whitney Leon',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Welcome back !',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        current = index;
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Text(
                          stringList[index],
                          style: TextStyle(
                            color: current == index
                                ? Colors.white
                                : Colors.white38,
                            fontSize: current == index ? 20 : 15,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> stringList = [
  'Home',
  'Profile',
  'Travel History',
  'Settings',
  'Help',
  'Trems & conditions',
  'Logout'
];
