import 'package:copy_ai/saveimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:image_gallery_saver/image_gallery_saver.dart';
// import 'package:image_downloader/image_downloader.dart';

import 'download.dart';


class SecondScreen extends StatefulWidget {
  final Uint8List image;
  const SecondScreen({super.key, required this.image});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Create with AI",
            style: GoogleFonts.zeyada(
              textStyle: TextStyle(color: Colors.blue, fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        // toolbarHeight: 170,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 340,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(25),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.memory(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Container(
              height: 40,width: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
                  InkWell(
                    onTap: (){
                      //handle
                      setState(() {
                        // Toggle the favorite status
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.white,
                      // size: 50,
                    ),
                  ),


                  // InkWell(
                  //   onTap: (){
                  //     //handle
                  //     setState(() {
                  //       // Toggle the favorite status
                  //       isFavorite = !isFavorite;
                  //       // If the image is marked as favorite (red heart), save it to the gallery
                  //       if (isFavorite) {
                  //         SaveImage.saveImageToGallery(widget.image);
                  //       }
                  //     });
                  //   },
                  //   child: Icon(
                  //     isFavorite ? Icons.favorite : Icons.favorite_border,
                  //     color: isFavorite ? Colors.red : Colors.white,
                  //     // size: 50,
                  //   ),
                  // ),

                  //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
                  TextButton(onPressed: (){
                    //handle
                  },
                      child: Text(
                        "Re-Generate",
                        style: GoogleFonts.zeyada(color: Colors.red,fontSize: 23),
                      )),


                  //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
                  TextButton(onPressed: (){
                    //handle
                    // ImageDowloaderHelper(widget.image);
                  },

                  child: Text(
                        "Download",
                        style: GoogleFonts.zeyada(color: Colors.cyan,fontSize: 23),
                      ))
                ],

              ),
            ),



            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //
            //
            //
            //     // RoundedContainerWithIcon(icon: Icons.home),
            //     // RoundedContainerWithIcon(icon: Icons.save_alt_outlined),
            //     // RoundedContainerWithIcon(icon: Icons.share),
            //   ],
            // )
          ]),
        ),
      ),
    );
  }
}

class RoundedContainerWithIcon extends StatelessWidget {
  final IconData icon;

  const RoundedContainerWithIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0XFF9DB2BF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 30,
          color: Colors.black, // Change the icon color as needed
        ),
      ),
    );
  }
}