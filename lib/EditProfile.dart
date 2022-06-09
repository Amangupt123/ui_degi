import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_degi/My%20Profile.dart';

import 'Home2.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context, initialDate: selectedDate, firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() => selectedDate = picked);
    }
  }

  var textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: InkWell(
          onTap: (() => Navigator.pop(context, MaterialPageRoute(builder: (context) => MyProfile()))),
          child: SvgPicture.asset(
            "assets/image/arrow29@3x.svg",
            height: 5,
            width: 5,
            fit: BoxFit.scaleDown,
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 16),
        //     child: InkWell( onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (context) => Statistics()))),
        //         child: SvgPicture.asset(
        //       "assets/image/information@2x.svg",

        //     )),
        //   )
        // ],
        elevation: 0,
      ),
      body: Column(children: [
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
        Container(
            color: Color(0xff4DE19E).withOpacity(0.2),
            child: const Text(
                "     The user details should match the bank and \n aadhar details card submitted. In case any discrepancy is observed payouts are liable to be suspended / cancelled. The phone number cannot be changed more than once in 3 months.")),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 73,
              backgroundColor: Colors.orange,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 69,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: Image.asset(
                      'assets/image/profile 1@3x.png',
                      fit: BoxFit.contain,
                    ).image,
                    radius: 64,
                  ),
                ),
              ),
            ),
            const Positioned(bottom: 10, child: CircleAvatar()),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.094,
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Enter Name'),
                    TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Enter Name',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.094,
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Email'),
                    TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffDDDDDD)),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('DOB'),
                    TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: selectedDate.toString(),
                        hintStyle: const TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                        suffix: InkWell(
                          onTap: () => _selectDate(context),
                          child: const SizedBox(child: Icon(Icons.calendar_month)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.094,
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Pin code'),
                    TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pin code',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.094,
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Area'),
                    TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Area',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.094,
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('City'),
                    TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'City',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.094,
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('State'),
                    TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'State',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.094,
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Country'),
                    TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Country',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.094,
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('State'),
                    TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'State',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.094,
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('State'),
                    TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'State',
                          hintStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
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
                      decoration:
                          BoxDecoration(color: const Color(0xffFD9A3A), borderRadius: BorderRadius.circular(10)),
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
            ]),
          ),
        ),
      ]),
    );
  }
}
