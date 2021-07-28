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
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Select Your Interests',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Roboto_Regular",
                    fontSize: 18),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(10),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
