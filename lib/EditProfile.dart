import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_degi/My%20Profile.dart';
import 'package:intl/intl.dart';
import 'Home2.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  DateTime selectedDate = DateTime.now();
  String formattedDate = "";

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked =
        await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      print(picked); //pickedDate output format => 2021-03-10 00:00:00.000
      formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      print(formattedDate); //formatted date output using intl package =>  2021-03-16
      setState(() {});
    } else {
      print("Date is not selected");
      //setState(() => selectedDate = picked ?? "");
    }
  }

  var textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
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
            width: MediaQuery.of(context).size.width,
            height: 110,
            color: Color(0xff4DE19E).withOpacity(0.2),
            child: Column(
              children: const [
                Text("The user details should match the bank and aadhar"  ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff505050)),),
                Text("details card submitted. In case any discrepancy is" ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff505050))),
                Text(" observed payouts are liable to be suspended / cancelled." ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff505050))),
                Text("The phone number cannot be changed more than once in 3" ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff505050))),
                Text("months.")
              ],
            )),
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
            Positioned(
                bottom: 10,
                child: CircleAvatar(
                  backgroundImage: Image.asset(
                    "assets/image/Edit @3x.png",
                    fit: BoxFit.contain,
                  ).image,
                )),
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
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Enter Name' ,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Enter Name',
                          hintStyle: TextStyle(
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
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Email',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: TextStyle(
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
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffDDDDDD)),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('DOB',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                    Stack(children: [
                      TextFormField(
                        readOnly: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: formattedDate,
                          hintStyle: const TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              _selectDate(context);
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.calendar_month),
                            ),
                          )),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.094,
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Pin code',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pin code',
                          hintStyle: TextStyle(
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
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Area',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Area',
                          hintStyle: TextStyle(
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
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('City',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'City',
                          hintStyle: TextStyle(
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
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('State',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'State',
                          hintStyle: TextStyle(
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
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Country',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Country',
                          hintStyle: TextStyle(
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
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Phone no',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone no',
                          hintStyle: TextStyle(
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
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDDDDDD)), borderRadius: BorderRadius.circular(12), color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('User name',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'User name',
                          hintStyle: TextStyle(
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
                    )
                    )
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
