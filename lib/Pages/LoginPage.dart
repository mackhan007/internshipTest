import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trouver_trade_test/Constants/Constants.dart';
import 'package:trouver_trade_test/Widgets/CustomNumberInputField.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.15,
                ),
                Center(
                  child: Image(
                    image: AssetImage(Constants.logopath),
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      "Login ",
                      style: Constants.boldHeading,
                    ),
                    Text(
                      "or ",
                      style: Constants.regularDarkText,
                    ),
                    Text(
                      "Signup",
                      style: Constants.boldHeading,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                CustomNumberInputField(
                  hinttext: "Mobile Number",
                  autofocus: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipOval(
                      child: Material(
                        color: Colors.blue,
                        child: InkWell(
                          child: SizedBox(
                            child: Icon(Icons.check, color: Colors.white),
                            width: 55,
                            height: 55,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?  ",
                      style: Constants.regularDarkText,
                    ),
                    InkWell(
                      child: Text(
                        "Log in",
                        style: Constants.regularBlueText,
                      ),
                      onTap: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      clipBehavior: Clip.hardEdge,
                      shape: CircleBorder(),
                      color: Colors.transparent,
                      child: Ink.image(
                        image: AssetImage(Constants.googlelogopath),
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ),
                    Material(
                      clipBehavior: Clip.hardEdge,
                      shape: CircleBorder(),
                      color: Colors.transparent,
                      child: Ink.image(
                        image: AssetImage(Constants.facebooklogopath),
                        fit: BoxFit.cover,
                        width: 55,
                        height: 55,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ),
                    Material(
                      clipBehavior: Clip.hardEdge,
                      shape: CircleBorder(),
                      color: Colors.transparent,
                      child: Ink.image(
                        image: AssetImage(Constants.twitterlogopath),
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
