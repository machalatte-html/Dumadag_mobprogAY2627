import 'package:material_ui/material_ui.dart';
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
          postContent: 'Kamusta Ka Na??',
          numOfLikes: 1,
          date: 'November 15',
        ),
        NewsFeedCard(
          userName: 'National Geographic',
          profileImage: 'assets/images/natgeo.jpg',
          commentProfileImage: 'assets/images/natgeo.jpg',
          postContent: 'Duolingo in the wild!',
          numOfLikes: 500,
          hasImage: true,
          date: 'October 11',
        ),
      ],
    );
  }
}
