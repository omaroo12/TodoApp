import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/comp/components.dart';
import '../../shared/cubit/appCubit.dart';
import '../../shared/cubit/states.dart';
class DoneTasksScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener:(context,state){} ,
      builder: (context,state)
      {
        var tasks=AppCubit.get(context).doneTasks;

        return ListView.separated(

          itemBuilder:(context,index)=>buildItemTask(AppCubit.get(context).doneTasks[index],context) ,
          itemCount: AppCubit.get(context).doneTasks.length,
          separatorBuilder:(context,index)=>Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,

          ),


        );
      },


    );}
  }

