import 'package:flutter/material.dart';

class HorizontalListSection extends StatelessWidget {

  final List<String> stories = ['assets/story_first.jpg' , 'assets/story_second.jpg' , 'assets/story_third.jpg'  , 'assets/story_fourth.jpg' , 'assets/story_fifth.jpg'];
   HorizontalListSection();
  @override
  Widget build(BuildContext context) {

    
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: stories.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Material(
            borderRadius: BorderRadius.circular(40.0),
            child: Container(
              height: 85.0,
              width: 70.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(stories[index]))),
            ),
          ),
        );
      },
    );
  }
}