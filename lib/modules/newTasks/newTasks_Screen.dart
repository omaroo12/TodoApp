import 'package:firstproj/shared/comp/constants.dart';
import 'package:firstproj/shared/cubit/appCubit.dart';
import 'package:firstproj/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/comp/components.dart';
class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener:(context,state){} ,
      builder: (context,state)
      {
         return ListView.separated(
          itemBuilder:(context,index)=>buildItemTask(AppCubit.get(context).newTasks[index],context) ,
          itemCount: AppCubit.get(context).newTasks.length,
          separatorBuilder:(context,index)=>Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,

          ),


        );
      },


    );}


}

