import '../widgets/notification.dart' as notif;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView(
        children: const [
          notif.Notification(
            name: 'Max Verstappen',
            post: 'Pushing to the limit.',
            description: 'liked your race-day post',
          ),
          Divider(),
          notif.Notification(
            name: 'Lewis Hamilton',
            post: 'Great energy from the fans this weekend!',
            description: 'reacted to your post',
          ),
          Divider(),
          notif.Notification(
            name: 'Charles Leclerc',
            post: 'A perfect sunset after a long day at the circuit.',
            description: 'shared your post',
          ),
          Divider(),
          notif.Notification(
            name: 'Lando Norris',
            post: 'Who else is ready for race weekend?',
            description: 'commented: "Bring it on!"',
          ),
          Divider(),
          notif.Notification(
            name: 'Oscar Piastri',
            post: 'A great team effort from everyone today.',
            description: 'liked your post',
          ),
          Divider(),
          notif.Notification(
            name: 'Fernando Alonso',
            post: 'Lights out.',
            description: 'shared your paddock photo',
          ),
          Divider(),
          notif.Notification(
            name: 'Carlos Sainz',
            post: 'Nothing beats the sound of the crowd.',
            description: 'reacted to your post',
          ),
          Divider(),
          notif.Notification(
            name: 'George Russell',
            post: 'Good people and great racing.',
            description: 'commented: "Looks like an awesome weekend!"',
          ),
          Divider(),
          notif.Notification(
            name: 'Sergio Perez',
            post: 'Thank you for all the support.',
            description: 'shared your thank-you post',
          ),
          Divider(),
          notif.Notification(
            name: 'Kimi Antonelli',
            post: 'First time at this circuit.',
            description: 'liked your track-day update',
          ),
          Divider(),
          notif.Notification(
            name: 'Pierre Gasly',
            post: 'A little behind-the-scenes.',
            description: 'reacted to your post',
          ),
          Divider(),
          notif.Notification(
            name: 'Esteban Ocon',
            post: 'Rain or shine.',
            description: 'shared your circuit photo',
          ),
          Divider(),
          notif.Notification(
            name: 'Alexander Albon',
            post: 'More racing.',
            description: 'commented: "That sounds like a perfect Sunday."',
          ),
          Divider(),
          notif.Notification(
            name: 'Yuki Tsunoda',
            post: 'My favorite view from the weekend.',
            description: 'liked your photo',
          ),
          Divider(),
          notif.Notification(
            name: 'Nico Hulkenberg',
            post: 'A close battles.',
            description: 'reacted to your race recap',
          ),
          Divider(),
          notif.Notification(
            name: 'Lance Stroll',
            post: 'Track walk done.',
            description: 'shared your pre-race update',
          ),
          Divider(),
          notif.Notification(
            name: 'Oliver Bearman',
            post: 'Big smiles after race.',
            description: 'commented: "Great photo!"',
          ),
          Divider(),
          notif.Notification(
            name: 'Isack Hadjar',
            post: 'Every lap is a chance.',
            description: 'liked your post',
          ),
          Divider(),
          notif.Notification(
            name: 'Gabriel Bortoleto',
            post: 'The atmosphere here is incredible!',
            description: 'reacted to your post',
          ),
          Divider(),
          notif.Notification(
            name: 'Valtteri Bottas',
            post: 'Coffee, bicycles, and a sunny day off.',
            description: 'shared your off-track post',
          ),
        ],
      ),
    );
  }
}
