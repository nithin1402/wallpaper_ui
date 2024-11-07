import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(15),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 2
                  )],
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Find Wallpaper...",
                      suffixIcon: Icon(Icons.search,color: Colors.grey,size: 28,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                        ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                      )
                      )
                    ),
                ),

                ),
              SizedBox(height: 11,),
              Row(
                children: [
                  SizedBox(width: 21,),
                  Text("Best of the month",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                ],
              ),
              Expanded(
          flex: 12,
                  child: Images()),
              Row(
                children: [
                  SizedBox(width: 21,),
                  Text("The color tone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                ],
              ),
              Expanded(
          flex: 4,
                  child: Colours()),
              SizedBox(width: 21,),
              Row(
                children: [
                  SizedBox(width: 21,),
                  Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                ],
              ),
              Expanded(
                flex:12 ,
                  child: PracApp()),
            ],
          ),
        ),
      )
    );
  }
}

class Images extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView.builder(
        itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index) {
            return Container(
              child: Container(
                margin: EdgeInsets.all(5),
              height: 250,
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
              ),
                //child: Image.asset("assets/image/vjs.png",),
                        ),
            );
        }
      ),
    );
  }
}
class Colours extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index) {
            return Container(
              margin: EdgeInsets.all(10),
              height: 25,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5)
              ),
            );
          }
      ),
    );
  }
}

class PracApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
        Expanded(
          child: Container(
           margin: EdgeInsets.all(10),
           child: Column(

             children: [
               Expanded(
                 child: GridView.count(
                   crossAxisCount: 2,
                   childAspectRatio: 10/6,
                   mainAxisSpacing: 11,
                   crossAxisSpacing: 11,
                   children: [
                     Container(
                       height: 50,
                       width: 100,
                       decoration: BoxDecoration(
                           color: Colors.grey,
                           borderRadius: BorderRadius.circular(15)
                       ),
                     ),
                     Container(
                       height: 50,
                       width: 100,
                       decoration: BoxDecoration(
                           color: Colors.grey,
                           borderRadius: BorderRadius.circular(15)
                       ),
                     ),
                     Container(
                       height: 50,
                       width: 100,
                       decoration: BoxDecoration(
                           color: Colors.grey,
                           borderRadius: BorderRadius.circular(15)
                       ),
                     ),
                     Container(
                       height: 50,
                       width: 100,
                       decoration: BoxDecoration(
                           color: Colors.grey,
                           borderRadius: BorderRadius.circular(15)
                       ),
                     ),
                   ],
                 ),
               )
             ],
           ),
                 ),
        ),
     ],
    );
  }
}
