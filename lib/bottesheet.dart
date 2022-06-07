import 'package:flutter/material.dart';

class BottemSheet extends StatefulWidget {
  BottemSheet({Key? key}) : super(key: key);

  @override
  State<BottemSheet> createState() => _BottemSheetState();
}

class ListItem {
  int value;
  String name;
  ListItem(this.value, this.name);
}

class _BottemSheetState extends State<BottemSheet> {
  int _value = 1;
  List<ListItem> _dropdownItems = [
    ListItem(1, "First Value"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];
  @override
  Widget build(BuildContext context) {
    List<int> list_items = [1,2,3];
    return Container(
      height: 425,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Container(
              color: Color(0xffF4F8F8),
              height: 50,
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage(
                      "assets/image/flow@3x.png",
                    ),
                  ),
                  Text("data"),
                  Icon(
                    Icons.cancel_outlined,
                    size: 30,
                    color: Color(
                      0xff505050,
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("In publishing and graphic design, Lorem "),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text("ipsum is a placeholder text commonly"),
          ),
         Card(
  elevation: 1,
  margin: EdgeInsets.only(bottom: 3),
  child: ListTile(
    title: Text("Item Type"),
    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    trailing: DropdownButtonHideUnderline(
      child: DropdownButton(
        isExpanded: false,
        value: true,
        items: itemTypeList.map((item) {
          return new DropdownMenuItem(

            child: Container(
              width: 150,                    //expand here
              child: new Text(
                item['item_name'],
                textAlign: TextAlign.end,
              ),
            ),
            value: item['item_id'],
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        hint: Container(
          width: 150,                      //and here
          child: Text(
            "Select Item Type",
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.end,
          ),
        ),
        style:
            TextStyle(color: Colors.black, decorationColor: Colors.red),
      ),
    ),
  ),
),
        ],
      ),
    );
    // return Container(width: MediaQuery.of(context).size.width * 0.1,
    //  height: MediaQuery.of(context).size.height * 0.5,
    //  decoration: const BoxDecoration(
    //                     borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70)),
    //                     ));
  }
}
