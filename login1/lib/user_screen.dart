import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
   UserScreen({Key? key}) : super(key: key);

  List<UserModel> users=[
    UserModel(id: 1, name: 'Ahmed', phone: '+970593333333'),
    UserModel(id: 2, name: 'Sami', phone: '+970595656567'),
    UserModel(id: 3, name: 'Akram', phone: '+970594949494'),
    UserModel(id: 4, name: 'Ahmed', phone: '+970593333333'),
    UserModel(id: 5, name: 'Sami', phone: '+970595656567'),
    UserModel(id: 6, name: 'Akram', phone: '+970594949494'),
    UserModel(id: 7, name: 'Ahmed', phone: '+970593333333'),
    UserModel(id: 8, name: 'Sami', phone: '+970595656567'),
    UserModel(id: 9, name: 'Akram', phone: '+970594949494'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemBuilder: (context, index) => buildUser(users[index]),
          separatorBuilder: (context, index) => Container(color: Colors.grey, height: 1,width: double.infinity,),
          itemCount: users.length,
        ),
      ),
    );
  }

  Widget buildUser(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
          children: [
             CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                '${user.id}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children:  [
                Text(
                  user.name,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(user.phone),
              ],
            ),
          ],
        ),
  );
}

class UserModel{
  final int id;
  final String name;
  final String phone;

  UserModel({required this.id, required this.name, required this.phone});

}
