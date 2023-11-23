import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/comp/components.dart';
import '../../shared/cubit/appCubit.dart';
import '../../shared/cubit/states.dart';
class ArchievedTasksScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener:(context,state){} ,
      builder: (context,state)
      {
        var tasks=AppCubit.get(context).archieveTasks;

        return ListView.separated(

          itemBuilder:(context,index)=>buildItemTask(AppCubit.get(context).archieveTasks[index],context) ,
          itemCount: AppCubit.get(context).archieveTasks.length,
          separatorBuilder:(context,index)=>Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,

          ),


        );
      },


    );}
}