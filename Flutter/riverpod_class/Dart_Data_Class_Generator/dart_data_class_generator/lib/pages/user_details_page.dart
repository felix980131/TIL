import 'package:dart_data_class_generator/models/user.dart';
import 'package:flutter/material.dart';

class UserDetailPage extends StatelessWidget {
  final User user;
  const UserDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: CircleAvatar(child: Text(user.id.toString())),
          title: Text(user.username),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("name: ${user.name}"),
                Text("email: ${user.email}"),
                Text("phone: ${user.phone}"),
                Text("website: ${user.website}"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ShowAddress extends StatelessWidget {
  final Address address;
  const ShowAddress({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Address"),
        Text("street: ${address.street}"),
        Text("suite: ${address.suite}"),
        Text("city: ${address.city}"),
        Text("zipcode: ${address.zipcode}"),
      ],
    );
  }
}
