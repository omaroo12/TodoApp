import 'package:firstproj/modules/ArchievedTasks/ArchievedTasks.dart';
import 'package:firstproj/modules/DoneTasks/DoneTasksScreen.dart';
import 'package:firstproj/modules/newTasks/newTasks_Screen.dart';
import 'package:firstproj/shared/comp/components.dart';
import 'package:firstproj/shared/comp/constants.dart';
import 'package:firstproj/shared/cubit/appCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

import '../shared/cubit/states.dart';

class HomeLayOut extends StatelessWidget {


  var scaffoldKey=GlobalKey<ScaffoldState>();
  var titleController =TextEditingController();
  var timeController =TextEditingController();
  var dateController =TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool bottomsheetDown=false;




  @override
  Widget build(BuildContext context) {

  return BlocProvider(
    create: ( BuildContext context)=>AppCubit()..createDataBase(),

    child: BlocConsumer<AppCubit,AppStates>(
      listener:(context,state){},
      builder: (context,state){

        AppCubit cubit=AppCubit.get(context);
         return Scaffold(
        appBar: AppBar(
          title: Text(
            cubit.titles[cubit.currentIndex],
          ),

        ),
        body:  cubit.newTasks.isNotEmpty ?cubit.screens[cubit.currentIndex]:Center(child: CircularProgressIndicator()),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: cubit.currentIndex,
          onTap: (index){
            // setState(() {
            cubit.changeScreen(index);
            //
            // });

          },

          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,

                ),
                label: 'Taska'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.done,

                ),
                label: 'Done'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.archive,

                ),
                label: 'Archieved'
            )

          ],


        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
              Icons.edit
          ),
          onPressed:(){

            showModalBottomSheet(
                context: context,
                builder: (BuildContext context){
                  return Container(
                    color: Colors.grey[300],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        defaultTextFormField(controller: titleController, textInput: TextInputType.text, labelText: 'Text', validate: (String value){
                          if(value.isEmpty)
                          {print("titile must not be empty");}
                          else
                          {
                            return null;
                          }

                        }, prefixIconn: Icons.title),
                        defaultTextFormField( onTap: (){
                          showTimePicker(context: context,
                              initialTime: TimeOfDay.now()
                          ).then((value)
                          {
                            timeController.text=value!.format(context);

                          }
                          );
                        },controller: timeController, textInput: TextInputType.text, labelText: 'Time', validate: (String value){
                          if(value.isEmpty)
                          {print("time must not be empty");}
                          else
                          {
                            return null;
                          }

                        }, prefixIconn: Icons.date_range),
                        defaultTextFormField( onTap: (){
                          showDatePicker(context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime.parse('2023-12-31')
                          ).then((value)
                          {
                            dateController.text=DateFormat.yMMMd().format(value!);

                          }
                          );
                        },controller: dateController, textInput: TextInputType.text, labelText: 'Date', validate: (String value){
                          if(value.isEmpty)
                          {print("Date must not be empty");}
                          else
                          {
                            return null;
                          }

                        }, prefixIconn: Icons.date_range),
                        ElevatedButton(onPressed: (){

                          cubit.insertDataBase(date: dateController.text, title: titleController.text, time: timeController.text).then((value){

                            });}
                        , child: Text(
                            'Save'
                        )),

                        Container(
                          height: 120,
                          width: double.infinity,


                        ),
                      ],
                    ),
                  );
                }


            );

          } ,

        ),

      );

      },

    ),
  );
  }







}




