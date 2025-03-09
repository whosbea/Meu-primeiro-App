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
        primarySwatch: Colors.blue,
      ),
      home: const ColorChanger(title: 'Flutter Demo Home Page'),
    );
  }
}

class ColorChanger extends StatefulWidget {
  const ColorChanger({Key? key, required String title}) : super(key: key);

  @override
  State<ColorChanger> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  
  Color backgroundColor = const Color.fromARGB(255, 229, 209, 224);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mude a cor com um clique'),
      ),
      body: Container(
        color: backgroundColor,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed:(){
                  setState(() {
                    backgroundColor = Colors.blueGrey;
                  });
                }, 
                child: const Text("Cinza"),
                ),
                const SizedBox(width: 20),
                
                ElevatedButton(
                onPressed:(){
                  setState(() {
                    backgroundColor = Colors.deepPurple;
                  });
                }, 
                child: const Text("Roxo"),
                ),

                const SizedBox(width: 20),

                ElevatedButton(
                onPressed:(){
                  setState(() {
                    backgroundColor = const Color.fromARGB(255, 58, 115, 212);
                  });
                }, 
                child: const Text("Azul"),
                ),
            ],

          ),
        ),
      ),
    );
  }
}
