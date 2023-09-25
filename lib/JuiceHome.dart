import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:juice_app/Juice2.dart';

class JuiceHome extends StatefulWidget {
  const JuiceHome({super.key});

  @override
  State<JuiceHome> createState() => _JuiceHomeState();
}

class _JuiceHomeState extends State<JuiceHome> {
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

            ListView(
              padding: EdgeInsets.symmetric(horizontal: 20,),
              children: [
                SizedBox(height: 30,),
                Align(alignment: Alignment.centerLeft, child: Icon(Icons.sort,color: Colors.white,size: 50,),),
                SizedBox(height: 60,),
                Center(child: Text('Juicy',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'KaushanScript'),),),
                SizedBox(height: 30,),
                Center(child: FaIcon(FontAwesomeIcons.glassCheers,color: Colors.deepOrange,size: 100,),),
                SizedBox(height: 30,),
                Center(child: Text('Berry Juice',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,fontFamily:'KaushanScript'),),),
                SizedBox(height: 30,),
                Center(
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("blent of berry with ice that make your tired dayfeels very fresh again.",textAlign: TextAlign.center,style: TextStyle(fontFamily: 'KaushanScript',fontSize: 18,color: Colors.white),),),
                ),
                SizedBox(height: 30,),

                Center(child: Text('₹40/Glass',style: TextStyle(fontFamily: 'KaushanScript',color: Colors.amber,fontSize:35,fontWeight: FontWeight.bold),),),
                SizedBox(height: 40,),

                InkWell(
                  onTap: () {
                    Get.to(()=>Juice2());
                  },

                  child: Container(margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(child: Text('Explore More', style: TextStyle(color: Colors.white,fontFamily: 'KaushanScript',fontSize: 30,fontWeight: FontWeight.bold),),),
                  
                  ),
                  
                ),
                SizedBox(height: 50,),
              ],
            )
        ],
      ),
    );
  }
}