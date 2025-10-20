import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Gerador de Tabuada',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(60, 57, 57, 57),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              
            children: [
              Container(
                
                child: 
              Column(
                
                children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Informe o número',style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
                Center(
                  child: Container(
                    child: Column(
                      
                      children: [
                      SizedBox(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(height: 50, width: 50,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[800]),  child:   TextButton(onPressed: (){}, child: Text('1',style: TextStyle(color: Colors.white,fontSize: 20),)),),
                        SizedBox(width: 10,),
                        Container(height: 50, width: 50,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[800]),  child:   TextButton(onPressed: (){}, child: Text('2',style: TextStyle(color: Colors.white,fontSize: 20),)),),
                        SizedBox(width: 10,),
                        Container(height: 50, width: 50,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[800]),  child:   TextButton(onPressed: (){}, child: Text('3',style: TextStyle(color: Colors.white,fontSize: 20),)),),
                        SizedBox(width: 10,),
                        Container(height: 50, width: 50,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[800]),  child:   TextButton(onPressed: (){}, child: Text('4',style: TextStyle(color: Colors.white,fontSize: 20),)),),
                        SizedBox(width: 10,),
                        Container(height: 50, width: 50,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[800]),  child:   TextButton(onPressed: (){}, child: Text('5',style: TextStyle(color: Colors.white,fontSize: 20),)),),

                      ],
                      ),
                      ),SizedBox(height: 10,),
                         SizedBox(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(height: 50, width: 50,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[800]),  child:   TextButton(onPressed: (){}, child: Text('6',style: TextStyle(color: Colors.white,fontSize: 20),)),),
                        SizedBox(width: 10,),
                        Container(height: 50, width: 50,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[800]),  child:   TextButton(onPressed: (){}, child: Text('7',style: TextStyle(color: Colors.white,fontSize: 20),)),),
                        SizedBox(width: 10,),
                        Container(height: 50, width: 50,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[800]),  child:   TextButton(onPressed: (){}, child: Text('8',style: TextStyle(color: Colors.white,fontSize: 20),)),),
                        SizedBox(width: 10,),
                        Container(height: 50, width: 50,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[800]),  child:   TextButton(onPressed: (){}, child: Text('9',style: TextStyle(color: Colors.white,fontSize: 20),)),),
                        SizedBox(width: 10,),
                        Container(height: 50, width: 50,  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[800]),  child:   TextButton(onPressed: (){}, child: Text('10',style: TextStyle(color: Colors.white,fontSize: 20),)),),

                      ],
                      ),
                      ),
                            
                    ],),
                  ),
                )
          
              
          
              ],),)
            ],
          ),
          ),
        ),
      )

    );
  }
}