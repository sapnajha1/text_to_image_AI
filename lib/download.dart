// // import 'dart:html';
//
// import 'package:image_downloader/image_downloader.dart';
// import 'dart:typed_data';
//
// class ImageDowloaderHelper{
//   ImageDowloaderHelper(Uint8List image);
//
//   static Future<void> downloadImage(Uint8List imageData) async {
//     try {
//       // Save the image to the device's gallery
//       await ImageDownloader.saveImage(
//         data: imageData,
//         name: 'Created AI',
//         ext: 'png',
//         // mimeType: MimeType.png
//       );
//
//       // Show a success message or handle download completion
//       print('Image downloaded successfully');
//
//     }catch (error) {
//       // Handle errors during the download process
//       print('Error downloading image: $error');
//     }
//   }
// }