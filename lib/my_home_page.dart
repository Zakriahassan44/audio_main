import 'package:flutter/material.dart';
import 'app_colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late AppColors appColors; // Declare AppColors instance

  @override
  void initState() {
    super.initState();
    appColors = AppColors(); // Initialize AppColors instance in initState
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appColors.background, // Access background color using the instance

      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageIcon(
                      AssetImage('images/img/menu.png'),
                      size: 24,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Icon((Icons.search)),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.notifications),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      "Popular Books",
                      style: TextStyle(fontSize: 30),
                    ),
                  )
                ],
              )
            ],
          ),
          // Your Scaffold content here
        ),
      ),
    );
  }
}
