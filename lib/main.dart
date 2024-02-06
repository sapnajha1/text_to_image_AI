import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'api.dart';
// import 'package:text_to_image/api/rest.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Scaffold(
      backgroundColor:  Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(child: Text(
              "Create with AI",
              style: GoogleFonts.zeyada(
                textStyle: TextStyle(color: Colors.blue, fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),),

            SizedBox(height: 30,),

            TextField(
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Enter your prompt',
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.all(16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelStyle: const TextStyle(color: Colors.red),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  convertTextToImage(textController.text, context);
                  isLoading = true;

                  setState(() {});
                },
                child: isLoading
                    ? const SizedBox(
                    height: 15,
                    width: 15,
                    child:
                    CircularProgressIndicator(color: Colors.black))
                    :  Text('Generate Image',
                    style: GoogleFonts.zeyada(
                        textStyle: TextStyle(
                      color: Colors.white,
                             fontWeight: FontWeight.bold
                    )),
                    // style: TextStyle(color: Colors.black)
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    ),
  );
}