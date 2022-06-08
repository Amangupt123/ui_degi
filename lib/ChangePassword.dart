import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_degi/Home2.dart';
import 'package:ui_degi/Statistics.dart';

import 'details.dart';

class Password extends StatefulWidget {
  Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  bool isObscure = false;
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Change Password",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        // leading: InkWell(
        //   onTap: (() => Navigator.pop(context, MaterialPageRoute(builder: (context) => Details()))),
        //   child: SvgPicture.asset(
        //     "assets/image/arrow29@3x.svg",
        //     height: 5,
        //     width: 5,
        //     fit: BoxFit.scaleDown,
        //   ),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell( onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (context) => Statistics()))),
                child: SvgPicture.asset(
              "assets/image/information@2x.svg",
              
            )),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/top_header@3x.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/image/Lock@3x.png"), scale: 3),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                const Text(
                  "Lorem Ipsum has been the industry's",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff505050)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  "standard dummy text ever since the 1500s",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff505050)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Old Password'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.094,
                      width: MediaQuery.of(context).size.width * 0.95,
                      padding:
                          EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const Text('Password'),
                          TextFormField(
                            obscureText: isObscure,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      isObscure = !isObscure;
                                    });
                                  },
                                ),
                                border: InputBorder.none,
                                hintText: 'Enter your old password',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Password'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.094,
                      width: MediaQuery.of(context).size.width * 0.95,
                      padding:
                          EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const Text('Password'),
                          TextFormField(
                            obscureText: isObscure,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      isObscure = !isObscure;
                                    });
                                  },
                                ),
                                border: InputBorder.none,
                                hintText: 'Enter your password',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Confirm Password',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff505050)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.094,
                      width: MediaQuery.of(context).size.width * 0.95,
                      padding:
                          EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            obscureText: isObscure,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      isObscure = !isObscure;
                                    });
                                  },
                                ),
                                border: InputBorder.none,
                                hintText: 'Enter your confirm password',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                GestureDetector(
                  onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (context) => Home2()))),
                  child: Stack(
                    alignment: Alignment.topRight,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.95,
                        decoration: BoxDecoration(color: const Color(0xffFD9A3A), borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          'Save',
                          style: TextStyle(color: Color(0xffFFFFFF), fontWeight: FontWeight.w700, fontSize: 21),
                        )),
                      ),
                      Positioned(
                          top: 9,
                          right: 10,
                          child: SvgPicture.asset(
                            'assets/image/arrowlast 4.svg',
                            // scale: 2.7,
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
