import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = "suraDetailsScreen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> chapterContant = [];

  @override
  Widget build(BuildContext context) {
    var arg =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsScreenArg;
    if (chapterContant.isEmpty) readfile(arg.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/main_background.png"))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: Text(arg.title)),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  elevation: 20,
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  readfile(int chapterIndex) async {
    String text =
        await rootBundle.loadString("assets/files/${chapterIndex + 1}.txt");
    chapterContant = text.split("\n");
    setState(() {});
  }
}

class SuraDetailsScreenArg {
  String title;
  int index;

  SuraDetailsScreenArg({required this.title, required this.index});
}
/*body: Container(
          width: width * 0.9,
            height: height*0.9,
              margin: EdgeInsets.only(left:width*0.06 ,right:width*0.06 ,bottom:height*0.05,top:height*0.03   ),
            decoration: BoxDecoration(
              color: Colors.white ,
              borderRadius: BorderRadius.circular(24)
            ),
            child:
            ListView.builder(itemBuilder:
                ( context,index ){
              return item_hadethDetails(content: args.content[index]);
            },


                itemCount: args.content.length),
          ),*/
