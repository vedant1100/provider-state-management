import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'horizontal.dart';
import 'list_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: SizedBox(
        child: Column(
          children: [
            Text(numberProviderModel.numbers.last.toString(), style: const TextStyle(fontSize: 20),),
            Expanded(
              child: ListView.builder(
                itemCount: numberProviderModel.numbers.length,
                itemBuilder: (context,index){
                  return Text(numberProviderModel.numbers[index].toString(), style: const TextStyle(fontSize: 30),);
                },
              )
          ),

          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Horizontal()));
              },
              child:const Text('second'),
          ),
          ],
        ),
      ),
      ),
    );
  }
}
