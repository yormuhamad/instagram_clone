import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class MyMainPage extends StatefulWidget {
   const MyMainPage({super.key});


  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  @override
  Widget build(BuildContext context) {
  var  storyData = [
   {
     'imageUrl': 'images/Inner Oval (3).png',
     'userName': 'kieron_d',
   },
   {
     'imageUrl': 'images/Inner Oval (2).png',
     'userName': 'zackjohn',
   },
    {
     'imageUrl': 'images/Inner Oval (1).png',
     'userName': 'karennne',
   },
   {
     'imageUrl': 'images/Inner Oval (3).png',
     'userName': 'user4',
   },
   {
     'imageUrl': 'images/Inner Oval (2).png',
     'userName': 'user5',
   },
    {
     'imageUrl': 'images/Inner Oval (1).png',
     'userName': 'user6',
   },
  ];

var  postData = [
   {
     'imageUrl': 'images/Rectangle.png',
     'userName': 'joshua_l',

     "profileImage": "images/Oval.png",
   },
   {
     'imageUrl': 'images/Inner Oval (2).png',
     'userName': 'Virr Re',

     "profileImage": "images/Inner Oval (2).png",
   },
    {
     'imageUrl': 'images/Rectangle.png',
     'userName': 'Mon Ma',

     "profileImage": "images/Inner Oval (1).png",
   },
   {
     'imageUrl': 'images/Inner Oval (3).png',
     'userName': 'Rasul B',

     "profileImage": "images/Inner Oval (3).png",
   },
   {
     'imageUrl': 'images/Rectangle.png',
     'userName': 'Bob Mon',

     "profileImage": "images/Inner Oval (2).png",
   },
    {
     'imageUrl': 'images/Inner Oval (1).png',
     'userName': 'Mno Bop',

     "profileImage": "images/Inner Oval (1).png",
   },
  ];

 var likeImagesList = [
    {
      "images/Inner Oval (1).png",
      "images/Inner Oval (2).png",
      "images/Inner Oval (3).png",
    }
  ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 249, 249),
      body: SafeArea(
        child: CustomScrollView(
            slivers: [
                SliverAppBar(
                  backgroundColor: const Color.fromARGB(255, 170, 167, 167),
                  expandedHeight: 40,
                  floating: true,
                  pinned: false,
                  snap: true,
                  title: 
                  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset('images/Instagram Logo.png'),
                //Text('Home Page Instagram', style: TextStyle(fontSize: 20, color: Colors.white)),
                //  Padding(
                //    padding: EdgeInsets.all(8.0),
                //    child: 
                //    Icon(Icons.radio_button_unchecked, color: Colors.orange,)
                  
                //  ),
              ]),
              const Icon(Icons.message, color: Colors.white,)
            ],
          ),
                ),
                 
        
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 126,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const ProfileStoryCard(),
                      ListView.builder(
                     itemCount: storyData.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index){
                        return StoryCard(
                        pofileImage: storyData[index]['imageUrl']!,
                         userName: storyData[index]['userName']!,
                         );
                      })
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: postData.length,
                  itemBuilder: (context, index) {
                    return PostCard(
                      likeImages: likeImagesList, 
                      likeImageList: const [],
                      postData: postData[index],);
                  }),
              ),
              
              //PostCard(likeImages: likeImagesList),
            ],
                 ),
      ),
       );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    super.key, required List<Set<String>> likeImages, required this.likeImageList, this.postData,
  });

  final List<String> likeImageList;
  final dynamic postData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(postData['profileImage']),
                  ),
                  const SizedBox(
                    width: 10,
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(postData['userName'], style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(width: 5,),
                            Image.asset('images/Official Icon.png', 
                            width: 20,
                            height: 20, ),
                        ],
                      ),
                        const Text('Tokyo, Japan', style: TextStyle(
                          color: Colors.black))
                    ],
                  ),
                ]),
                const Icon(Icons.more_vert),
            ]),
            const SizedBox(
              height: 15,
              ),
         ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            postData['imageUrl'], 
            height: 280,
            width: double.infinity,
            fit: BoxFit.cover,),
            ),
         
          // Row(
          //   children: [
          //     // LikesImages(
          //     //   likeImages: likeImagesList,
          //     //   ),
          //   ],
          // ),
          const SizedBox(
              height: 10,
              ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
              //  Likesmages(likeImages: likeImagesList),
                SizedBox(
                  width: 15,
                  ),
                  Text('15 Likes',
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(
                  width: 15,
                  ),
                  Icon(Icons.favorite_border_outlined),
                  SizedBox(
                  width: 15,
                  ),
                    Icon(Icons.message_outlined),
              
                ],
              ),
            
            Icon(Icons.bookmark_border_outlined),
            ],
          ),
          const SizedBox(
            height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                   Image.asset(postData['profileImage'],width: 25, height: 25,),
                   const SizedBox(width: 15,),
                    const Text('Liked by craig_love and 44,686 others', style: TextStyle(color: Colors.black),),
                  ],
                ),
                const Text('joshua_l The game in Japan was amazing and I want to share some photos',
                style: TextStyle(fontSize: 16),),
              ],
            )
         ],
        ),
    );
  }
}

class Likesmages extends StatelessWidget {
  const Likesmages({
    super.key, required this.likeImages,
  });
 final List<String> likeImages;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for(int index = 0; index < likeImages.length; index++)
        Container(
          width: 35,
           height: 35,
             margin: EdgeInsets.only(left: 26.0 * index),
           decoration: BoxDecoration(
          shape: BoxShape.circle,
        border: Border.all(width: 1,color: Colors.white )),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(likeImages[index]),
          ),
        ),
      ],
    );
  }
}

// class LikesImages extends StatelessWidget {
//   const LikesImages({
//     super.key, 
//     required this.likeImages,
//   });

// final List<String> likeImages;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         for(int index = 0; index < likeImages.length; index++)
//         Container(
//           width: 35,
//           height: 35,
//           margin: EdgeInsets.only(left: 26.0 * index),
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             border: Border.all(width: 1,color: Colors.white )),
//           child: CircleAvatar(
//             // backgroundImage: AssetImage(LikesImages[index]),
//             backgroundImage: AssetImage('images/Inner Oval (3).png'),
//           ),
//         ),
//         Container(
//           width: 35,
//           height: 35,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             border: Border.all(width: 1,color: Colors.white )),
//           child: CircleAvatar(
//             backgroundImage: AssetImage(
//               'images/Inner Oval (3).png'),
//           ),
//         ),
//       ],
//     );
//   }
// }

class StoryCard extends StatelessWidget {
  const StoryCard({
    super.key, required this.pofileImage, required this.userName,
  });
  final String pofileImage;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(top: 8, bottom: 8),
      child: Column(
        children: [
           Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 4, color: const Color.fromARGB(255, 247, 78, 65))
            ),
            child:  Padding(
              padding:  const EdgeInsets.all(2.0),
              child: CircleAvatar(
                radius: 35,
                 backgroundImage: NetworkImage(pofileImage),
              ),
            ),
          ),
          const SizedBox(
            height: 2,
            ),
            Text(userName),
        ],
      ),
      
    );
   
  }
}

class ProfileStoryCard extends StatelessWidget {
  const ProfileStoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 4, color: const Color.fromARGB(255, 236, 66, 66))
                ),
                child: const Padding(
                  padding:  EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 35,
                     backgroundImage: AssetImage("images/Inner Oval.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 16,
          child:
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 3.0,
                  color: Colors.white,
                )
            
              ),
              child: const Icon(Icons.add_circle,
              size: 30,
              color: Colors.orange,
              ),
            ),
          
        )
      ],
    );
  }
}