import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class BottemSheet extends StatefulWidget {
  BottemSheet({Key? key}) : super(key: key);

  @override
  State<BottemSheet> createState() => _BottemSheetState();
}

class _BottemSheetState extends State<BottemSheet> {
  DateTime selectedToDate = DateTime.now();  
  DateTime selectedFromDate = DateTime.now();
  Future<void> _selectToDate(BuildContext context) async {
    final DateTime? picked =
        await showDatePicker(context: context, initialDate: selectedToDate, firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedToDate) {
      setState(() => selectedToDate = picked);
    }
  }
  Future<void> _selectFromDate(BuildContext context) async {
    final DateTime? picked =
        await showDatePicker(context: context, initialDate: selectedFromDate, firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedFromDate) {
      setState(() => selectedFromDate = picked);
    }
  }

  //List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  // String _dropDownValue="s";
  final List<String> items = [
    'Loss',
    'Win',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 425,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Container(
              color: const Color(0xffF4F8F8),
              height: 50,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                  CircleAvatar(
                      radius: 20,
                      child: SvgPicture.asset(
                        "assets/image/kippp@3x.svg",
                      )),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Text("Filter", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Color(0xff000000))),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.5),
                  Icon(Icons.cancel_outlined, size: 30, color: Color(0xff505050)),
                ],
              )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          const Padding(padding: EdgeInsets.only(left: 28), child: Text("In publishing and graphic design, Lorem ")),
          const Padding(padding: EdgeInsets.only(left: 28, top: 5), child: Text("ipsum is a placeholder text commonly")),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => _selectFromDate(context),
                child: Container(
                  width: 155,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text("From Date", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                          const SizedBox(height: 10),
                          Text("${selectedFromDate.toLocal()}".split(' ')[0]),
                        ],
                      ),
                      const Icon(Icons.calendar_month),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => _selectToDate(context),
                child: Container(
                  width: 155,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text("To Date", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff727272))),
                          const SizedBox(height: 10),
                          Text("${selectedToDate.toLocal()}".split(' ')[0]),
                        ],
                      ),
                      const Icon(Icons.calendar_month),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          //child: DropdownButtonHideUnderline(
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: DropdownButton2(
              buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey
                      //color: Colors.black26,
                      )),
              hint: Text(
                'Select Item',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
              buttonHeight: MediaQuery.of(context).size.height * 0.1,
              buttonWidth: MediaQuery.of(context).size.width * 0.95,
              itemHeight: 40,
            ),
          ),
           SizedBox(
                height: MediaQuery.of(context).size.height * 0.076,
              ),
          Row(
            children: [  Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(color: const Color(0xffF08923), ),
                      child: const Center(
                          child: Text(
                        'Clear',
                        style: TextStyle(color: Color(0xffFFFFFF), fontWeight: FontWeight.w500, fontSize: 16),
                      )),
                    ),
              Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.70,
                      decoration: BoxDecoration(color: const Color(0xffFD9A3A), ),
                      child: const Center(
                          child: Text(
                        'Apply',
                        style: TextStyle(color: Color(0xffFFFFFF), fontWeight: FontWeight.w600, fontSize: 22),
                      )),
                    ),
            ],
          )
        ],
      ),
    );
  }
}
