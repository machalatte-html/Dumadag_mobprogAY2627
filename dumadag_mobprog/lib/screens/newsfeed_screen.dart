import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Denzel Dumadag',
          profileImage: 'assets/images/denzel.jpg',
          commentProfileImage: 'assets/images/denzel.jpg',
          postContent: 'Bakit pula ang tawag sa dilaw ng itlog??',
          numOfLikes: 128,
          date: 'November 15',
        ),
        NewsFeedCard(
          userName: 'National Geographic',
          profileImage: 'assets/images/natgeo.jpg',
          commentProfileImage: 'assets/images/natgeo.jpg',
          postContent: 'Duolingo in the wild!',
          numOfLikes: 2476,
          hasImage: true,
          date: 'October 11',
        ),
        NewsFeedCard(
          userName: 'Max Verstappen',
          profileImage: 'assets/images/max.jpg',
          commentProfileImage: 'assets/images/max.jpg',
          postContent: 'Ready to race in Bahrain!',
          numOfLikes: 58740,
          hasImage: true,
          imageAsset: 'assets/images/bahrain.jpg',
          date: 'October 4',
        ),
        NewsFeedCard(
          userName: 'George Russell',
          profileImage: 'assets/images/russel.jpg',
          commentProfileImage: 'assets/images/russel.jpg',
          postContent: 'What a race in Azerbaijan! The overtakes were insane.',
          numOfLikes: 1932,
          imageAsset: 'assets/images/azerbaijan.jpg',
          hasImage: true,
          date: 'September 26',
        ),
        NewsFeedCard(
          userName: 'Kimi Antonelli',
          profileImage: 'assets/images/kimi.jpg',
          commentProfileImage: 'assets/images/kimi.jpg',
          postContent: 'VIVA ESPANA! The Spanish GP was a blast!',
          numOfLikes: 846,
          imageAsset: 'assets/images/spain.jpg',
          hasImage: true,
          date: 'August 23',
        ),
        NewsFeedCard(
          userName: 'Charles Leclerc',
          profileImage: 'assets/images/charles.jpg',
          commentProfileImage: 'assets/images/charles.jpg',
          postContent: 'GREAT BRITAIN! The Silverstone crowd was amazing!',
          numOfLikes: 3912,
          imageAsset: 'assets/images/great_britain.jpg',
          hasImage: true,
          date: 'July 5',
        ),
        NewsFeedCard(
          userName: 'Lewis Hamilton',
          profileImage: 'assets/images/hamilton.jpg',
          commentProfileImage: 'assets/images/hamilton.jpg',
          postContent: 'BARCELONA! The Spanish GP was a blast!',
          numOfLikes: 647,
          imageAsset: 'assets/images/catalunya.jpg',
          hasImage: true,
          date: 'June 14',
        ),
        NewsFeedCard(
          userName: 'Fernando Alonso',
          profileImage: 'assets/images/alonso.jpg',
          commentProfileImage: 'assets/images/alonso.jpg',
          postContent: 'PODIUM! The Saudi Arabian GP was unforgettable!',
          numOfLikes: 9821,
          imageAsset: 'assets/images/saudi.jpg',
          hasImage: true,
          date: 'May 24',
        ),
        NewsFeedCard(
          userName: 'Niko Hulkenberg',
          profileImage: 'assets/images/hulkenberg.jpg',
          commentProfileImage: 'assets/images/hulkenberg.jpg',
          postContent: 'FIRST PODIUM! The Australian GP was a dream come true!',
          numOfLikes: 1504,
          imageAsset: 'assets/images/nico_podium.jpg',
          hasImage: true,
          date: 'March 29',
        ),
        NewsFeedCard(
          userName: 'Sebastian Vettel',
          profileImage: 'assets/images/vettel.jpg',
          commentProfileImage: 'assets/images/vettel.jpg',
          postContent: 'Farewell, F1! The Abu Dhabi GP was an emotional ride.',
          numOfLikes: 736,
          imageAsset: 'assets/images/uae.jpg',
          hasImage: true,
          date: 'March 8',
        ),
      ],
    );
  }
}
