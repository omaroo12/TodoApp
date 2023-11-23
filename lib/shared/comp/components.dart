import 'package:firstproj/shared/cubit/appCubit.dart';
import 'package:flutter/material.dart';

Widget defaultTextFormField({required TextEditingController controller,
    required TextInputType textInput,
    required String labelText,
     Function? onSubmit,
    Function? onChange,
  Function? onTap,
    required Function validate,
    required IconData prefixIconn,
  }




    )
{
  return TextFormField(
    controller: controller,
    keyboardType: textInput,
    decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
        prefixIcon: Icon(
          prefixIconn
        ),






    ),
    onTap: (){
      onTap!();
    },


  );
}
Widget buildItemTask(Map map,context)
{
  return   Dismissible(
    key: Key(

      map['id'].toString()
    ),
    onDismissed: (direction){
      AppCubit.get(context).deleteDataBase(map['id']);
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 30,
            child: Text(
                '${map['time']}'
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              children: [
                Text('${map['date']}'),
                SizedBox(
                  height: 20,
                ),
                Text('${map['title']}'),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          IconButton(
              onPressed: (){ AppCubit.get(context).updateDataBase('done', map['id']);},
              icon: Icon(
                Icons.done
              ),
          ),
          IconButton(
            onPressed: (){
              AppCubit.get(context).updateDataBase('archieved', map['id']);
            },
            icon: Icon(
                Icons.edit
            ),
          )

        ],


      ),
    ),
  );
}