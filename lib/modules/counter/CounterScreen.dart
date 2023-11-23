import 'package:firstproj/modules/counter/cubit/CounterCubit.dart';
import 'package:firstproj/modules/counter/cubit/CounterMinusState.dart';
import 'package:firstproj/modules/counter/cubit/CounterPlusState.dart';
import 'package:firstproj/modules/counter/cubit/CounterStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit() ,
      child: BlocConsumer<CounterCubit,CounterStates>(
        builder: (context,state)=> Scaffold(
            appBar: AppBar(
              title: Text(
                  'Counter'
              ),

            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  TextButton(
                      onPressed: (){
                       CounterCubit.get(context).plus();
                      },
                      child: Text('Plus')),
                  Text(
                   '${CounterCubit.get(context).counter}',
                  ),
                  TextButton(
                      onPressed: (){
                        CounterCubit.get(context).minus();
                      },
                      child: Text('minus')),

                ],

              ),
            ),
          ),
        listener:(context,state){
          if(state is CounterMinusState)
            {
              print('counter minys state ${state.counter}');
            }
          else if(state is CounterPlusState)
            {
              print('counter plus state ${state.counter}');
            }

        } ,


      ),
    );
  }
}




