import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: const MyLayout()),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(child: const Text("Hello , Flutter Dev", style :TextStyle(fontSize: 20)));
  }
} /// Example of stateless Widget

class MyImageWidget extends StatelessWidget {
  const 
  MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('assets/CODECRAFTMANISHA (6).png'));
  }
} /// Example of stateless Widget

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children : [
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children : [
            Text("Subscribe To My YouTube Channel", style: TextStyle(color: Color.fromARGB(255, 241, 11, 11) ,fontSize: 17),),
            SizedBox(width : 10),
            Icon(Icons.thumb_up_sharp, color : Colors.blue),
          ]
        ),
        Text("Follow me On Instagram - @codecraftmanisha_official"),
        MyTextWidget(),
        SizedBox(width : 0),
        MyImageWidget(),
        MyCheckBoxStateFulWidget(),
        TextFieldStateFulExample()
      ]
    );
  }
}


class MyCheckBoxStateFulWidget extends StatefulWidget {
  const MyCheckBoxStateFulWidget({super.key});

  @override
  State<MyCheckBoxStateFulWidget> createState() => _MyCheckBoxStateFulWidgetState();
}

class _MyCheckBoxStateFulWidgetState extends State<MyCheckBoxStateFulWidget> {

  bool isChecked = false ;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(value: isChecked, 
    onChanged: (bool? value){
        setState(() {
          isChecked = value!;
        });
    },
    title : Text("Have u Subscribed to my channel ??" , )
    );
  }
}

class TextFieldStateFulExample extends StatefulWidget {
  const TextFieldStateFulExample({super.key});

  @override
  State<TextFieldStateFulExample> createState() => _TextFieldStateFulExampleState();
}

class _TextFieldStateFulExampleState extends State<TextFieldStateFulExample> {
  final TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        TextField(
          controller: myController,
          decoration: InputDecoration(labelText : "Enter Your Name")),
           ElevatedButton(
        onPressed: (){
          print("Input ${myController.text}");
        },
        child : Text("Submit")
      )
      ],
    );
    
  }
}