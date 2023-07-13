import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}
double sa=0;
class _MyWidgetState extends State<MyWidget> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: RawMaterialButton(onPressed: (){
                    setState(() {
                      sa++;
                    });
                   }
                   ,child: Icon(Icons.add,size: 30,color:Colors.white ,),),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple[600]
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  child:Center( 
                    child:
                    Text("$sa",style: TextStyle(
                      color: Colors.white
                  
                  ),),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple[600]
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  
                   child: RawMaterialButton(onPressed: (){
                    setState(() {
                      sa--;
                    });
                   }
                   ,child: Icon(Icons.remove,size: 30,color:Colors.white ,),),
                   
                  decoration: BoxDecoration(
                    
                    shape: BoxShape.circle,
                    color: Colors.purple[600]
                  ),
                )
              ],
            ),
          ),
        ),



    );
  }
}