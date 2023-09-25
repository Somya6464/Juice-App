import 'package:flutter/material.dart';
import 'package:juice_app/Juice3.dart';
import 'package:get/get.dart';


class Juice2 extends StatefulWidget {
  const Juice2 ({Key? key}) :super(key:key);

  @override
  State<Juice2> createState() => _Juice2State();
}

class _Juice2State extends State<Juice2> {
  List flavour =['assets/images/starw.jpeg','assets/images/oranges.jpeg','assets/images/mixed.jpeg','assets/images/berrie.jpg','assets/images/grapes.jpg'];
  List name =['Strawberry','Orange','Mixed',' Blue Berry','Grapes'];
  List amount =['₹70/glass','₹40/glass','₹99/glass','₹120/glass','₹60/glass'];
  List location = ['Nainital (U.K)', 'Nagpur (M.P)','Haydrabad (A.P)','Jaipur (Raj)','Surat (Guj)' ];
  String desc = 'mixed with chilled ice and griended with sponzita,Picked with soft hands in sunshine' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/berries.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
            )
            ),
            ListView(padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(height: 40,),
              Align(alignment: Alignment.centerLeft,child: Icon(Icons.sort,color: Colors.white,size: 50,),),
              SizedBox(height: 25,),
              Center(child: Padding(padding: EdgeInsets.only(left: 40,),
              child: Text('Healthy outside \n\t\t Start \n from inside',style: TextStyle(fontFamily: 'KaushanScript',fontSize: 30,color: Colors.white,fontWeight: FontWeight.w700),),),
              ),

              Padding(padding: EdgeInsets.only(left: 10.0,top: 30),
              child: Text('We provide a veriety \n of juices with \n various flavours',style: TextStyle(fontFamily: 'KaushanScript',fontSize: 24,color: Colors.white),),),
              SizedBox(height: 10,),

              Text('Our some variants',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),

              Container(
                width: 250,
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,   // this thing I changed according to me ,
                  itemCount: flavour.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(()=>Juice3({
                          'background': flavour[index],
                          'title':name[index],
                          'amount':amount[index],
                          'desc':desc,
                          'location':location[index],
                        }));
                      },

                      child: Column(
                        children: [
                          Hero(tag: flavour[index],
                           child: Container(margin: EdgeInsets.only(left: index==0?0:20),
                           width: 140,
                           height: 200,
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage(flavour[index]),
                            fit: BoxFit.cover
                               )
                             ),
                            ),
                          ),

                        SizedBox(height: 5,),
                        Center(child: Text(name[index],textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'KaushanScript',fontWeight: FontWeight.bold),),),
                        Center(child: Text(amount[index],style: TextStyle(color: Colors.white,fontFamily: 'KaushanScript',fontSize: 18,fontWeight: FontWeight.w500),),)
                        ],
                      ),

                    );
                  },

                ),
              )
            ],)
        ],
    ),
    );
}
}