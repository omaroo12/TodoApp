import 'package:flutter/material.dart';

class Messanger_Screen extends StatelessWidget {
  const Messanger_Screen({Key? key}) : super(key: key);
 Widget buildStoryItem()=>  Container(
    width: 50,
    child: const Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage('https://img.freepik.com/free-vector/mysterious-mafia-man-smoking-cigarette_52683-34828.jpg?w=740&t=st=1699551969~exp=1699552569~hmac=130df7a27c6d32321ae9f4ef8405a7b554f398520386397e7b231814d8581edb')
            ),

            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 7.0,


              ),
            ),
          ],
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          'Omar Adel Attia',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],

    ),
  );
 Widget buildChatItem()=> Row(
   children: [
     Stack(
       alignment: AlignmentDirectional.bottomEnd,
       children: [
         CircleAvatar(
             radius: 20.0,
             backgroundImage: NetworkImage('https://img.freepik.com/free-vector/mysterious-mafia-man-smoking-cigarette_52683-34828.jpg?w=740&t=st=1699551969~exp=1699552569~hmac=130df7a27c6d32321ae9f4ef8405a7b554f398520386397e7b231814d8581edb')
         ),

         Padding(
           padding: EdgeInsetsDirectional.only(
             bottom: 3.0,
             end: 3.0,
           ),
           child: CircleAvatar(
             backgroundColor: Colors.green,
             radius: 7.0,


           ),
         ),
       ],
     ),
     SizedBox(
       width: 20,
     ),
     Expanded(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             'Omar Adel Attia',
             style: TextStyle(
               color: Colors.white,
               overflow: TextOverflow.ellipsis,
             ),
           ),
           SizedBox(
             height: 6.0,
           ),
           Row(
             children: [
               Text(
                 maxLines: 1,
                 'Apple Color Emoji',
                 style: TextStyle(
                   color: Colors.white,
                   overflow: TextOverflow.ellipsis,

                 ),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 5.0,
                 ),
               ),
               Text(
                 '2:50 pm',
                 maxLines: 1,
                 overflow:TextOverflow.ellipsis,
                 style: TextStyle(
                   color: Colors.white,
                 ),
               ),
             ],
           ),
         ],
       ),
     ),
   ],
 );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://img.freepik.com/free-vector/mysterious-mafia-man-smoking-cigarette_52683-34828.jpg?w=740&t=st=1699551969~exp=1699552569~hmac=130df7a27c6d32321ae9f4ef8405a7b554f398520386397e7b231814d8581edb')
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.white,
              ),
            ),


          ],
        ),
        actions: [
          CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.white,
            child: IconButton(onPressed: (){}, icon: Icon(
              Icons.camera_alt,
              color: Colors.black,
              size: 16.0,



            ),),
          ),
          SizedBox(
            width: 15.0,
          ),
          CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.white,
            child: IconButton(onPressed: (){}, icon: Icon(
              Icons.edit,
              color: Colors.black,
              size: 16.0,



            ),),
          )

        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,

            children: [


              Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10.0),
                        color: Colors.grey,
                      ),


                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,

                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.black

                            ),
                          ),
                        ],
                      ),
                    ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>buildStoryItem()

                    , separatorBuilder: (context,index)=> SizedBox(
                  width: 10,
                ),
                    itemCount: 10
                ),
              ),
               ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                    itemBuilder: (context,index)=>buildChatItem()
                    , separatorBuilder: (context,index)=>SizedBox(
                  height: 10,
                )
                    , itemCount: 15),

            ],
          ),
        ),
      ),
    );
  }
}
