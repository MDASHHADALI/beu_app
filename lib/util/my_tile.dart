import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class MyTile extends StatelessWidget {
  var index=0;
   MyTile(this.index,{Key? key}) : super(key: key);
   final b=[" Notice Board"," Important Information"," Affiliated Colleges with BEU"," Circular"," Letter"," Gallery"," Academic Calendar"];
   final i=[Icons.notifications_none_outlined,Icons.book,Icons.school,Icons.blur_circular_rounded,Icons.format_list_bulleted_rounded,Icons.browse_gallery,Icons.calendar_month];
   final l=["http://www.beu-bih.ac.in/BEUP/NoticeBoard.aspx","http://www.beu-bih.ac.in/BEUP/Default.aspx","http://www.beu-bih.ac.in/BEUP/Affiliated_Colleges.aspx","http://www.beu-bih.ac.in/BEUP/Circular.aspx","http://www.beu-bih.ac.in/BEUP/Letter.aspx","http://www.beu-bih.ac.in/BEUP/Gallery.aspx","http://www.beu-bih.ac.in/BEUP/Academic_Calendar.aspx"];  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          launch(l[index]);
        },
         splashColor: Colors.amber,
        highlightColor: Colors.green,
        hoverColor: Colors.pinkAccent,
        child: Container(
          height: 40.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.transparent,
              boxShadow: [BoxShadow(blurRadius:10.0,color: Colors.white70)],
              border: Border.all(color: Colors.black),
              ),
        child: Row(
          children: [ FittedBox(child: Icon(i[index],color: Colors.black,)),
                   FittedBox(child: Text(b[index],style: TextStyle(fontSize: 20.0),textAlign: TextAlign.left,)),
          ],
        ),
        ),
      ),
    );
  }
}
