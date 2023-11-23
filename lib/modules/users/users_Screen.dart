import 'package:flutter/material.dart';
class UserModel{
   final String id;
   final String name;
   final String phone;
  UserModel(@required this.id, @required this.name, @required this.phone){

  }

}
class UserScreen extends StatelessWidget {

  List<UserModel>users=[
    UserModel("1", "omar", "4242r24r24"),
    UserModel("2", "adel", "4242r24r24"),
    UserModel("3", "attia", "4242r24r24"),
    UserModel("1", "omar", "4242r24r24"),
    UserModel("2", "adel", "4242r24r24"),
    UserModel("3", "attia", "4242r24r24"),
    UserModel("1", "omar", "4242r24r24"),
    UserModel("2", "adel", "4242r24r24"),
    UserModel("3", "attia", "4242r24r24"),
    UserModel("1", "omar", "4242r24r24"),
    UserModel("2", "adel", "4242r24r24"),
    UserModel("3", "attia", "4242r24r24"),
    UserModel("1", "omar", "4242r24r24"),
    UserModel("2", "adel", "4242r24r24"),
    UserModel("3", "attia", "4242r24r24"),
    UserModel("1", "omar", "4242r24r24"),
    UserModel("2", "adel", "4242r24r24"),
    UserModel("3", "attia", "4242r24r24"),

  ];
  Widget buildUsersItem(UserModel u)
  {
     return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.blue,
          child:
          Text(
            '${u.id}',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Column(
          children: [
            Text(
              '${u.name}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${u.phone}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10
              ),
            ),
          ],
        ),


      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),



      ),
      body: ListView.separated(
          itemBuilder:(context,index)=>buildUsersItem(users[index])
            ,
          separatorBuilder: (context,index)=>Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
          itemCount: users.length),
    );
  }
}
