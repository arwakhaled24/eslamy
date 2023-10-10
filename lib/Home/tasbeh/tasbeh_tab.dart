import 'package:flutter/material.dart';

class Tasbeh_tab extends StatefulWidget {
  @override
  State<Tasbeh_tab> createState() => _Tasbeh_tabState();
}

class _Tasbeh_tabState extends State<Tasbeh_tab> {
  @override
  String tasbeha = "الحمد لله";
  int count = 0;

  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Image.asset("assets/images/tasbeh_t.png"),
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("عدد التسبيحات",
              style: TextStyle(
                fontSize: 25,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              if (count < 33) {
                tasbeha = " سبحان الله";
              } else if (count < 66) {
                tasbeha = "الحمد لله";
              } else if (count < 99) {
                tasbeha = "الله اكبر";
              }
              ;
              count++;
              if (count == 100) {
                count = 0;
              }
              setState(() {});
            },
            child: Text(count.toString(),
                style: TextStyle(fontSize: 20, color: Colors.black)),
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
        ),
        Center(
            child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Theme.of(context).primaryColor,
          ),
          child: Text(
            "  $tasbeha  ",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        )),
      ],
    );
  }
}
