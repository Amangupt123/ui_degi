import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_degi/ChangePassword.dart';
import 'package:ui_degi/EditProfile.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: SvgPicture.asset("assets/image/meanubar@2x.svg", height: 5, width: 5, fit: BoxFit.scaleDown),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/top_header@3x.png"), fit: BoxFit.fitWidth),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 1, top: 1)),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            //reverse: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  index == 0
                      ? Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfile()))
                      : Navigator.of(context).push(MaterialPageRoute(builder: (context) => PasswordScreen()));
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.grey, width: .5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: index == 0
                                ? Image.asset("assets/image/Group 33627@3x.png", scale: 2.8)
                                : Image.asset("assets/image/Group 33627@3x.png", scale: 2.8),
                            height: 70,
                            width: 65,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ),
                              color: Colors.orangeAccent,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    index == 0 ? "Edit Profile" : "Change Password",
                                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset("assets/image/expendedarrow@3x.png", scale: 2.5),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
