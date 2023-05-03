import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_cliente/cliente/cliente_binding.dart';
import 'package:projeto_cliente/cliente/widget_controller/client_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends GetView<ClientController> {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Center(
            child: Text('Time Service'),
          ),
          actions: [
            IconButton(
              onPressed: (){
                log(controller.clientes.elementAt(1).nome);
              },
              icon: const Icon(Icons.add))
          ],
        ),
        body: ClientCard()
      ),
      initialBinding: ClienteBinding(),
    );
  }
}

class ClientCard extends GetView<ClientController>{

  @override
  Widget build (BuildContext context){
    return ListView.builder(
        itemCount: controller.clientes.length,
        itemBuilder: (BuildContext context, int index){
          return
            Card(
              child: Row(
                children: [
                  Column(
                    children: const [
                      Image(image: AssetImage('assets/shrek.jpg'))
                    ],
                  )
                ],
              )
            );
        });
  }
}

/*class MyHomePage extends GetX<View> {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Center(
          child: Text('Time Service'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
          onPressed: () { log('teste'); },
          ),

        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}*/
