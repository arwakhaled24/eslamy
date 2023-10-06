import 'package:eslamy/Home/hadeth/hadeth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Hadeth_tab extends StatefulWidget {
  @override
  State<Hadeth_tab> createState() => _Hadeth_tabState();
}

class _Hadeth_tabState extends State<Hadeth_tab> {
  List<HadethDataClass> allhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allhadeth.isEmpty) {
      readhadethfile();
    }
    return Column(children: [
      Expanded(flex: 1, child: Image.asset("assets/images/hadeth_header.png")),
      Container(
        margin: EdgeInsets.only(top: 3, bottom: 3),
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        height: 3,
      ),
      Text(" Elahadeth", style: TextStyle(fontSize: 26)),
      Container(
        margin: EdgeInsets.only(top: 3, bottom: 3),
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        height: 2,
      ),
      Expanded(
        child: Container(
          child: /* allhadeth.isEmpty?
               Center(child: CircularProgressIndicator()):*/
              ListView.separated(
            itemBuilder: (context, index) {
              return Center(child: Text(allhadeth[index].title));
            },
            itemCount: allhadeth.length,
            separatorBuilder: (context, index) {
              return Container(
                height: 1.5,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
              );
            },
          ),
        ),
        flex: 3,
      )
    ]);
  }

  void readhadethfile() async {
    List<HadethDataClass> Hadethlist = [];
    String hadethcontent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> splitedHadethContent = hadethcontent.split("#");
    for (int i = 0; i < splitedHadethContent.length - 1; i++) {
      String singlehadeth = splitedHadethContent[i];
      List<String> lines = singlehadeth.trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      HadethDataClass Hadeth = HadethDataClass(title: title, Content: content);
      Hadethlist.add(Hadeth);
    }
    allhadeth = Hadethlist;
    setState(() {});
  }
}
