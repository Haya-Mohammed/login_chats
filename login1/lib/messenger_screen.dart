import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg'),
              radius: 25,
            ),
            SizedBox(width: 10),
            Text('Chats',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 20,
        actions: const [
          CircleAvatar(
            child: Icon(Icons.camera_alt_rounded, size: 20),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            child: Icon(Icons.edit, size: 20),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Text('Search'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 90,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => const SizedBox(width: 15),
                    itemCount: 10,
                  ),
                ),
                const SizedBox(height: 20),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemCount: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg'),
                radius: 25,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 2, left: 3),
                child: CircleAvatar(backgroundColor: Colors.green, radius: 5),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Abdullah mansour',
                    maxLines: 1, style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Hi, my name is Abdullah mansour. Welcome to my Course',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text('11:30 am'),
                  ],
                )
              ],
            ),
          ),
        ],
      );
  Widget buildStoryItem() => Container(
        width: 57,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg'),
                  radius: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2, left: 3),
                  child: CircleAvatar(backgroundColor: Colors.green, radius: 5),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              'Abdullah mansour',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
