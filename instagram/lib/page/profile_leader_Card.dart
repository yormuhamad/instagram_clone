
import 'package:flutter/material.dart';
import 'package:instagram/page/my_profile_page.dart';

class ProfileHeaderCard extends StatelessWidget {
  const ProfileHeaderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Color(0xFF1B1B1B),
          borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Colors.red,
                        )),
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: CircleAvatar(
                              radius: 45,
                            backgroundImage: AssetImage('images/Inner Oval.png'),
                            ),
                      ),
                    ),
                  
                    Positioned(
                      bottom: 10,
                      right: 5,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle), 
                        child: const Icon(Icons.add_circle_outline),
                        ),
                    ),
                  ],
                ),
              const SizedBox(
                width: 20,
                ),
                const ProfileCountTitle(
                  title: 'Post', 
                  count: '54',
                  ),
                  const CostomDivider(),
                  const ProfileCountTitle(
                  title: 'Folowers', 
                  count: '834',
                  ),
                  const CostomDivider(),
                  const ProfileCountTitle(
                  title: 'Following', 
                  count: '162',
                  ),
              ],
            ),
          const SizedBox(
            height: 10,
            ),
          const Text(
            'Jacob West',
            style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
              ),
              const Row(
                children: [
                  Text('Digital goodies designer',style: TextStyle(color: Colors.white),),
                 SizedBox(
                width: 5,
              ),
              Text('@pixsellz',
              style: TextStyle(color: Colors.blueAccent),
              ),
              
                ],
              ),
            //  SizedBox(
            //     width: 5,
            //   ),
              const Text('Everything is designed.',
              style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 30,
                child: TextButton(onPressed: () {},
                 child: const Text("https://fonts.google.com/icon"),),
              ),
          ],
        ),
      ),
    );
  }
}

class CostomDivider extends StatelessWidget {
  const CostomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.grey.shade600,
          ),
        )
      ),
    );
  }
}




















// class ProfileHeaderCard extends StatelessWidget {
//    const ProfileHeaderCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: Container(
//         padding: EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           color: Color(0xFF1B1B1B),
//           borderRadius: BorderRadius.only(
//           bottomRight: Radius.circular(40),
//           bottomLeft: Radius.circular(40))),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           width: 4,
//                           color: Colors.red,
//                         )),
//                       child: const Padding(
//                         padding: EdgeInsets.all(2.0),
//                         child: CircleAvatar(
//                               radius: 45,
//                             backgroundImage: AssetImage('images/Inner Oval.png'),
//                             ),
//                       ),
//                     ),
                  
//                     Positioned(
//                       bottom: 10,
//                       right: 5,
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           color: Colors.red, shape: BoxShape.circle), 
//                         child: const Icon(Icons.add_circle_outline),
//                         ),
//                     ),
//                   ],
//                 ),
//               SizedBox(
//                 width: 20,
//                 ),
//                 ProfileCountTitle(
//                   title: 'Post', 
//                   count: '25',
//                   ),
//                   CostomDivider(),
//                   ProfileCountTitle(
//                   title: 'Folowers', 
//                   count: '250K',
//                   ),
//                   CostomDivider(),
//                   ProfileCountTitle(
//                   title: 'Following', 
//                   count: '250',
//                   ),
//               ],
//             ),
//           SizedBox(
//             height: 10,
//             ),
//           Text(
//             'Anna Yvette',
//             style: TextStyle(
//               fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
//               ),
//               Text('Grapic Designer | Photographer',style: TextStyle(color: Colors.white),),
//               SizedBox(
//                 height: 5,
//               ),
//               Text('Cupturing moments, one frame at a time. Positionade photo',
//               style: TextStyle(color: Colors.grey.shade400),
//               ),
//               SizedBox(
//                 height: 30,
//                 child: TextButton(onPressed: () {},
//                  child: const Text("https://fonts.google.com/icon"),),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
