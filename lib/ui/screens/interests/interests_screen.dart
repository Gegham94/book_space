import 'package:book_space/utilities/bs_colors.dart';
import 'package:flutter/material.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BSColors.mainOrange,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
                Text(
                  'Select Your Interests',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto_Bold",
                      fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Philosopy"),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              minimumSize: Size(140, 140),
                              primary: Colors.white,
                              onPrimary: BSColors.mainOrange,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Economy"),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              minimumSize: Size(100, 100),
                              primary: Colors.white,
                              onPrimary: BSColors.mainOrange,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Entertainment"),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              minimumSize: Size(120, 140),
                              primary: Colors.white,
                              onPrimary: BSColors.mainOrange,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Romance"),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              minimumSize: Size(100, 100),
                              primary: Colors.white,
                              onPrimary: BSColors.mainOrange,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Dramma"),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              minimumSize: Size(140, 140),
                              primary: Colors.white,
                              onPrimary: BSColors.mainOrange,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Literature"),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              minimumSize: Size(100, 100),
                              primary: Colors.white,
                              onPrimary: BSColors.mainOrange,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
