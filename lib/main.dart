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
                  onPressed: () {
                    log('oi');
                    controller.addClient();
                  }, // Perguntar sobre a chamada direta
                  icon: const Icon(Icons.add))
            ],
          ),
          body: const ClientCard()),
      initialBinding: ClienteBinding(),
    );
  }
}

class Tag extends StatelessWidget {
  const Tag(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor});

  final String text;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(2),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}

class ClientCard extends GetView<ClientController> {
  const ClientCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
        itemCount: controller.clientes.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                  image: AssetImage(controller.clientes
                                      .elementAt(index)
                                      .imagem))),
                          child: const Padding(padding: EdgeInsets.all(50)),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(controller.clientes
                            .elementAt(index)
                            .nomeComprador)),
                  ],
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      Tag(
                          text:
                              'Mix:${controller.clientes.elementAt(index).mix}',
                          backgroundColor: Colors.blue,
                          textColor: Colors.white),
                      const SizedBox(width: 5),
                      Tag(
                          text:
                              'UV:${controller.clientes.elementAt(index).mix}d',
                          backgroundColor: Colors.red,
                          textColor: Colors.white),
                      const SizedBox(width: 5),
                      if (controller.clientes.elementAt(index).positivado) ...[
                        const Tag(
                            text: 'Pos',
                            backgroundColor: Colors.green,
                            textColor: Colors.white),
                        const SizedBox(width: 5),
                      ],
                      if (controller.clientes
                          .elementAt(index)
                          .inadimplente) ...[
                        const Tag(
                            text: 'Inad',
                            backgroundColor: Colors.purple,
                            textColor: Colors.white),
                        const SizedBox(width: 5)
                      ],
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.clientes.elementAt(index).nome,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(controller.clientes.elementAt(index).cep),
                      Text(
                          '${controller.clientes.elementAt(index).id}  -  ${controller.clientes.elementAt(index).cnpj}'),
                    ],
                  )
                ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ConstrainedBox(
                          constraints: const BoxConstraints(
                            minHeight: 0,
                            maxHeight: double.infinity,
                            minWidth: 0,
                            maxWidth: double.infinity
                          ),
                          child: IconButton(
                              padding:
                                  const EdgeInsets.only(left: 110, bottom: 70),
                              onPressed: () {
                                log('oi');
                              },
                              icon: const Icon(Icons.more_vert)))
                    ]),
              ],
            ),
          );
        }));
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
