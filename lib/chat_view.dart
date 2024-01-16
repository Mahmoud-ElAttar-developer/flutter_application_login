import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: const Color.fromARGB(255, 78, 139, 186),
      appBar: AppBar(
        backgroundColor: const Color(0xff63b3f2),
        title: const Padding(
          padding: EdgeInsets.all(22),
          child: Text('Chats',style: TextStyle(color: Colors.white),),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings,color: Colors.white))
        ],
      ),






      body:  Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Favourit Contacts',style: TextStyle(fontSize:20 ,fontWeight:FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255) ),),
              ],
            ),
          ),




          Container(
            padding: const EdgeInsets.only(left: 15),
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder:(context, index) {
                return const Column(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage('assets/IMG_20151211_093533.jpg'),
                    radius: 30,
                    ),
                    SizedBox(height: 10,),
                     Text('data',style: TextStyle(color: Colors.white),),
                  ],
                );
              } ,
              separatorBuilder: (context, index){
                return const SizedBox(width: 10) ;
              }, 
              itemCount: 5),
          ),









          const SizedBox(height: 10,),
















            Expanded(
            child: Container(

              padding:const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(25) ,topRight:Radius.circular(25),),
              ),
            
             child:ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder:(context, index) {
                return const ListTile(
                  tileColor: Colors.lightBlue,
                  leading:CircleAvatar(backgroundImage: AssetImage('assets/FB_IMG_1538193622380.jpg'),
                    radius: 30,
                    ),
                  title:Text('data',style: TextStyle(color: Color.fromARGB(255, 20, 202, 56,),fontWeight: FontWeight.bold),),
                  subtitle: Text('Wonderful Viwe at Morning',style: TextStyle(color: Color.fromARGB(255, 15, 211, 221),),),
                  trailing: Text('8:00 am',style: TextStyle(color: Color.fromARGB(255, 20, 202, 56)),),
                );




                // return const Column(
                //   children: [
                //     CircleAvatar(backgroundImage: AssetImage('assets/FB_IMG_1534696074459.jpg'),
                //     radius: 30,
                //     ),
                //     SizedBox(height: 10,),
                //      Text('data',style: TextStyle(color: Colors.white),),
                //   ],
                // );
              } ,
              separatorBuilder: (context, index){
                return const SizedBox(width: 10) ;
              }, 
              itemCount: 5), 
            ),
          )






        ],
      ),
    );
  }
}