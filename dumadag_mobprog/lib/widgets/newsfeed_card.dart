import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatefulWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String profileImage;
  final String commentProfileImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.hasImage = false,
    required this.date,
    required this.profileImage,
    required this.commentProfileImage,
  });

  @override
  State<NewsFeedCard> createState() => _NewsFeedCardState();
}

class _NewsFeedCardState extends State<NewsFeedCard> {
  late int likes;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    likes = widget.numOfLikes;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(widget.profileImage),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: widget.userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: widget.date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(3),
                        ),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(15),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            CustomText(
              text: widget.postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            if (widget.hasImage)
              Image.asset(
                'assets/images/owl.jpg',
                width: double.infinity,
                height: ScreenUtil().setHeight(300),
                fit: BoxFit.cover,
              ),

            // LIKE, COMMENT AND SHARE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // LIKE WIDGET WITH INTERACTION
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                      likes += isLiked ? 1 : -1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          isLiked
                              ? Icons.thumb_up
                              : Icons.thumb_up_outlined,
                          color: isLiked
                              ? Colors.blue
                              : FB_DARK_PRIMARY,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(5),
                        ),
                        CustomText(
                          text: likes.toString(),
                          fontSize: ScreenUtil().setSp(12),
                          color: FB_DARK_PRIMARY,
                        ),
                      ],
                    ),
                  ),
                ),

                // COMMENT
                Row(
                  children: [
                    const Icon(
                      Icons.comment,
                      color: FB_DARK_PRIMARY,
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(5),
                    ),
                    CustomText(
                      text: 'Comment',
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,
                    ),
                  ],
                ),

                // SHARE
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.redo,
                    color: FB_DARK_PRIMARY,
                  ),
                  label: CustomText(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
              ],
            ),

            // ORIGINAL COMMENT SECTION
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(
                    widget.commentProfileImage,
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(6),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                    ScreenUtil().setSp(10), 0, 0, 0,
                  ),
                  alignment: Alignment.centerLeft,
                  height: ScreenUtil().setHeight(25),
                  width: ScreenUtil().setWidth(330),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(ScreenUtil().setSp(10)),
                    ),
                  ),
                  child: CustomText(
                    text: 'Write a comment...',
                    fontSize: ScreenUtil().setSp(11),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),

            CustomText(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
