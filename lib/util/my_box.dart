import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: must_be_immutable
class MyBox extends StatelessWidget {
   var i=["images/pyq.png","images/aicte-logo.png","images/syll.jpg","images/gln.png"],index=0,t=["Pyq","AICTE","Syllabus","Gate"];
   var link=["https://www.akubihar.com/","https://www.aicte-india.org/","http://www.beu-bih.ac.in/BEUP/Syllabus.aspx","https://gate.iitk.ac.in/index.html"];
   MyBox(this.index, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          launch(link[index]);
        },
        splashColor: Colors.amber,
        highlightColor: Colors.green,
        hoverColor: Colors.pinkAccent,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
           // image: DecorationImage(image: AssetImage(i[index])),
          ),
          child: Column(
           // mainAxisSize: MainAxisSize.min,
            children: [Expanded(flex: 6,child: Image.asset(i[index]),),
            Expanded(flex: 1,child: FittedBox(child: Text(t[index])),)],
          ),
          /* child: 
            Center(child: IconButton(icon: Image.asset(i[index]),
            onPressed: () {},
            iconSize: 100,
            splashColor: Colors.amber,
           // highlightColor: Colors.green,
            hoverColor: Colors.pink,
            )), */
        ),
      ),
    );
  }
}
