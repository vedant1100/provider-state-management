import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/list_provider.dart';

class Horizontal extends StatefulWidget {
  const Horizontal({super.key});

  @override
  State<Horizontal> createState() => _HorizontalState();
}

class _HorizontalState extends State<Horizontal> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberProviderModel, child)=>
      Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            numberProviderModel.add();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(),
        body: Column(
          children: [
            Text(numberProviderModel.numbers.last.toString(), style: const TextStyle(fontSize: 20),),
            SizedBox(
              height: 200, width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: numberProviderModel.numbers.length,
                itemBuilder: (context,index){
                  return Text(numberProviderModel.numbers[index].toString(), style: const TextStyle(fontSize: 30),);
                },
              ),
            )
          ],
        ),
      ),
    );;
  }
}
