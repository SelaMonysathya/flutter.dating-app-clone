
import 'package:dating_app_clone/theme/color.dart';
import 'package:dating_app_clone/utils/constant.dart';
import 'package:flutter/material.dart';

class MessageListTitle extends StatelessWidget {
  final itemList;
  final VoidCallback onTap;
  
  const MessageListTitle({
    Key? key, 
    this.itemList, 
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultSmallPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: (size.width - 40) * 0.15,
              width: (size.width - 40) * 0.15,
              padding: EdgeInsets.all(defaultPadding / 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: bgStoryColors),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: white),
                  image: DecorationImage(
                    image: NetworkImage(itemList["imageUrl"]),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: (size.width - 40) * 0.15,
                      width: (size.width - 40) * 0.7,
                      padding: EdgeInsets.symmetric(horizontal: defaultMediumPadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemList["username"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            itemList["message"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: (size.width - 40) * 0.15,
                      width: (size.width - 40) * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            itemList["dateTime"],
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          itemList['isUnread']
                          ? Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: primary,
                              shape: BoxShape.circle
                            ),
                            child: Text(
                              itemList['unread'],
                              style: TextStyle(
                                color: white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                          : SizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: defaultSmallPadding,),
                Padding(
                  padding: const EdgeInsets.only(left: defaultMediumPadding),
                  child: Container(
                    height: 1,
                    width: (size.width - 60)  * 0.85,
                    color: bgBorder,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}