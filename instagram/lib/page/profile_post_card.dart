import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:io';

class ProfilePostCards extends StatelessWidget {
    const ProfilePostCards({super.key});
    
  

  @override
  Widget build(BuildContext context) {
     List<Map<String, dynamic>> mediaItems=[
     {
     "id": "1",
     "imageUrl": "images/Rectangle (1).png",
     "isVideo": false
     },
    {
     "id": "2",
     "imageUrl": "images/Rectangle (2).png",
     "isVideo": false
     },
    {
     "id": "3",
     "imageUrl": "images/Rectangle (3).png",
     "isVideo": false
     },
      {
     "id": "4",
     "imageUrl": "images/Rectangle (4).png",
     "isVideo": false
     },
        {
     "id": "5",
     "imageUrl": "images/Rectangle (5).png",
     "isVideo": false
     },
        {
     "id": "6",
     "imageUrl": "images/Rectangle (6).png",
     "isVideo": false
     },
        {
     "id": "7",
     "imageUrl": "images/Rectangle (7).png",
     "isVideo": false
     },
        {
     "id": "8",
     "imageUrl": "images/Rectangle (8).png",
     "isVideo": false
     },
        {
     "id": "9",
     "imageUrl": "images/Rectangle.png",
     "isVideo": false
     },
   ];
    return GridView.builder(
      itemCount: mediaItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, crossAxisSpacing: 2.0, mainAxisSpacing: 2.0),
         itemBuilder: (context, index) {
          var item = mediaItems[index];
          //final bool isVideo = item['isVideo'];
          return Stack(
            children: [
              Image.asset(
                "${item['imageUrl']}",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              ),
              // if(isVideo)
              const Positioned(
                top: 8,
                right: 8,
                child: Icon(Icons.play_circle_fill_outlined)),
            ],
          );
         });
  }
}