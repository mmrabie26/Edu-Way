import 'package:flutter/material.dart';

class LeatureDetails extends StatelessWidget {
  final String title;
  final String instructor;
  const LeatureDetails({required this.title, required this.instructor, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
      
          Text(
            instructor,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
      
        ],
      ),
    );
  }
}