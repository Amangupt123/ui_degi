import 'package:flutter/material.dart';

class BottemSheet extends StatefulWidget {
  BottemSheet({Key? key}) : super(key: key);

  @override
  State<BottemSheet> createState() => _BottemSheetState();
}

class _BottemSheetState extends State<BottemSheet> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked =
        await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() => selectedDate = picked);
    }
  }

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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  CircleAvatar(
                    radius: 23,
                    child: Image.asset("assets/image/Grou@3x.png",  fit: BoxFit.cover,),
                  ),
                  Text("Filter"),
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
                onTap: () => _selectDate(context),
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
                          Text("${selectedDate.toLocal()}".split(' ')[0]),
                        ],
                      ),
                      const Icon(Icons.calendar_month),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => _selectDate(context),
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
                          Text("${selectedDate.toLocal()}".split(' ')[0]),
                        ],
                      ),
                      const Icon(Icons.calendar_month),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
