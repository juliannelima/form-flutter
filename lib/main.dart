import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        // useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulário'),
        ),
        body: Form(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TextFieldWidget(),
                          SizedBox(height: 16),
                          TextFieldWidget(),
                          SizedBox(height: 16),
                          TextFieldWidget(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          TextFieldWidget(),
                          SizedBox(height: 16),
                          TextFieldWidget(),
                          SizedBox(height: 16),
                          TextFieldWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LabelWidget extends StatelessWidget {
  const LabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Text(
        'Nome',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.error_outline_outlined,
          color: Colors.red,
        ),
        hintText: 'Digite seu nome',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelWidget(),
        SizedBox(
          height: 8,
        ),
        InputTextWidget()
      ],
    );
  }
}
