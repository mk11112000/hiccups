import 'package:blocTuto/counter_bloc.dart';
import 'package:blocTuto/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text("BlocApp")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () => {counterBloc.add(CounterEvent.decrement)},
            ),
            BlocBuilder(
              builder: (context, state) {
                return Text(state);
              },
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => {counterBloc.add(CounterEvent.increment)},
            ),
          ],
        ),
      ),
    );
  }
}
