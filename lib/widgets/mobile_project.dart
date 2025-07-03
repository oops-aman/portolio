// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MobileProject extends StatelessWidget {
  final String image;
  final VoidCallback ontab;
  

   const MobileProject(
      {super.key, required this.image,
      required this.ontab,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontab,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.36,
          width: MediaQuery.of(context).size.width * 0.8,
         child: Image(
           fit: BoxFit.fill,
           image: AssetImage(image),
         ),
        ),
      ),
    );
  }
}
