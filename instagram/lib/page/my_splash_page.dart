import 'package:flutter/material.dart';
// import 'package:flutterinstagram/components/navigation_manu.dart';
import 'package:instagram/components/navigation_manu.dart';

class MySplashPage extends StatefulWidget {
  const MySplashPage({super.key});

  @override
  State<MySplashPage> createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NavigationMenu()));
            },
            child: 
            Center(
              child: Column(
                children: [
                  SizedBox(height: 200,),
                  Image.asset('images/Icon.png',
                  width: 150,
                   height: 150,),
                   SizedBox(height: 10,),
                  const Text("Instagram UI", style: TextStyle(fontWeight: FontWeight.w700,
                  fontSize: 30, color: Colors.black),
                  ),
                  Text('36 Screens', style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 18, color: Colors.grey),),
              
                ],
              ),
            ),
            
            ),
            
      ),
    );
  }
}