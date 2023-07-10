import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';
import 'package:carousel_slider/carousel_slider.dart';
class DesktopScaffold extends StatefulWidget {
      const DesktopScaffold({Key? key}) : super(key: key);
  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
   var items =["images/bce.jpg","images/bceb.jpeg","images/mit.jpeg","images/gce gaya.jpg","images/lnjpit.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // open drawer
            myDrawer,

            // first half of page
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  // first 4 boxes in grid
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return MyBox(index);
                        },
                      ),
                    ),
                  ),

                  // list of previous days
                  Expanded(
                    child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return MyTile(index);
                      },
                    ),
                  ),
                ],
              ),
            ),
            // second half of page
            Expanded(
              flex: 2,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:250,
                      decoration: BoxDecoration(
                      ),
                       child: ListView(
                          scrollDirection: Axis.horizontal,
                          controller: ScrollController(),
                          children: <Widget>[
                            Container(

                                padding: EdgeInsets.symmetric(horizontal:5.0),
                                child:  Image.asset("images/n.png",fit: BoxFit.fill,),
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal:5.0),
                                child:  Image.asset("images/vce.png",fit: BoxFit.fill,)
                            ),
                            
                          
                          ],
                        ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CarouselSlider(
                     options : CarouselOptions(
                       height: 400,
                       autoPlay: true,
                       enlargeCenterPage: true,
                     ),
                     items: items.map((item){
                     return Builder(
                       builder : (BuildContext context){
                       return Container(
                        child: Image.asset(item,fit: BoxFit.fill,),
                      
                       );
                     }
                     );
                    }).toList(),
                    ),
                  ),
                                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
