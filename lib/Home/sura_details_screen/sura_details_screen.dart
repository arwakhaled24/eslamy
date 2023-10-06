import 'package:eslamy/Home/sura_details_screen/vers_content.dart';
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
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: chapterContant.isEmpty
                      ? Center(child: CircularProgressIndicator())
                      : ListView.separated(
                          itemBuilder: (context, index) {
                            return VerContent(content: chapterContant[index]);
                          },
                          itemCount: chapterContant.length,
                          separatorBuilder: (context, index) {
                            return Container(
                              color: Theme.of(context).primaryColor,
                              width: double.infinity,
                              height: 1,
                            );
                          },
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
