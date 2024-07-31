import 'package:flutter/material.dart';

class ProfileSaveCards extends StatelessWidget {
  const ProfileSaveCards({super.key});


  @override
  Widget build(BuildContext context) {
       List<Map<String, dynamic>> mediaItems=[
     {
     "id": "1",
     "imageUrl": "images/Rectangle.png",
     "isVideo": false
     },
    {
     "id": "2",
     "imageUrl": "images/Rectangle.png",
     "isVideo": false
     },
    {
     "id": "3",
     "imageUrl": "images/Rectangle.png",
     "isVideo": false
     },
      {
     "id": "4",
     "imageUrl": "images/Rectangle.png",
     "isVideo": false
     },
   ];
    return GridView.builder(
      itemCount: mediaItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, 
        crossAxisSpacing: 2.0,
         mainAxisSpacing: 2.0,),
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
                right:  8,
                child: Icon(Icons.bookmark,
                color: Colors.red,)),
            ],
          );
         });
  }
}