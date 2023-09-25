
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Juice3 extends StatefulWidget {
   Map details;
   Juice3(this.details);

  @override
  State<Juice3> createState() => _Juice3State();
}

class _Juice3State extends State<Juice3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Hero(tag: widget.details['background'],
             child: Image.asset(widget.details['background'],fit: BoxFit.cover,
             color: Colors.black.withOpacity(0.75),
             colorBlendMode: BlendMode.darken,))),

             ListView(padding: EdgeInsets.symmetric(horizontal: 30),
             children: [
              SizedBox(height: 30,),
              Align(alignment: Alignment.centerLeft,child: Icon(Icons.local_fire_department_rounded, color: const Color.fromARGB(255, 246, 222, 4),size: 50,),),
              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),  
                  boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.2),blurRadius: 5,offset: Offset(3, 3))],
                  image: DecorationImage(
                    image: AssetImage(widget.details['background'],),
                    fit: BoxFit.cover
                    )
                ),
              ),

              SizedBox(height: 20,),
              Text(widget.details['title']+' Juice',style: TextStyle(color: Colors.white,fontFamily:'KaushanScript',fontSize: 40),),
              SizedBox(height: 20,),
              Text(widget.details['desc'],style: TextStyle(color: Colors.white.withOpacity(0.7),fontFamily: 'KaushanScript',fontSize: 30),),
              SizedBox(height: 40,),
              Text(widget.details['location'],style: TextStyle(fontFamily:'KaushanScript',color: Colors.white.withOpacity(0.7),fontSize: 24),),
              SizedBox(height: 20,),
              Text(widget.details['amount'],style: TextStyle(fontFamily:'KaushanScript',color: Colors.yellow,fontSize: 25),),
              SizedBox(height: 50,),

              InkWell(
                child: Container(margin: EdgeInsets.symmetric(horizontal: 40),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white,width: 1),),

                  child: Center(child: Text('Order now',style: TextStyle(color: Colors.deepOrangeAccent,fontFamily:'KaushanScript',fontSize: 35),),),
                ),
              ),

                SizedBox(height: 20,),
                Center(child: Text('Delivered within 15-20 min',style: TextStyle(fontFamily:'KaushanScript',color: Colors.white.withOpacity(0.8),fontSize: 16),),),
                SizedBox(height: 60,),

             ],
             ),
        ],
      ),
    );
  }
}