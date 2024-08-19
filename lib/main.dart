import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    final corDoFundo = tema.colorScheme.inversePrimary;

    final num1Controller = TextEditingController();
    final num2Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: corDoFundo,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: num1Controller,
              decoration: const InputDecoration(
                labelText: "Informe o primeiro numero",
              ),
            ),
            const Text("+"),
            TextField(
              controller: num2Controller,
              decoration: const InputDecoration(
                labelText: "Informe o segundo numero",
              ),
            ),
            ElevatedButton(
              onPressed: () => soma(
                context,
                int.parse(num1Controller.text),
                int.parse(num2Controller.text),
              ),
              child: const Text("Calcular"),
            ),
          ],
        ),
      ),
    );
  }

  void soma(BuildContext context, int num1, int num2) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("$num1 + $num2 = ${num1 + num2}"),
    ));
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aula 2",
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
