import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 55),
                color: Colors.black,
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: const Color(0xFF1a0a80),
                ),
              ),
              // ignore: prefer_const_constructors
              Positioned(
                top: 140,
                child: const CircleAvatar(
                  radius: 100 / 2,
                  // ignore: prefer_const_constructors
                  backgroundImage: AssetImage(
                    'images/profile_img.png',
                  ),
                ),
              )
            ],
          ),
          const Text(
            "Sai Kumar Dontham",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "+91 9502063199",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
