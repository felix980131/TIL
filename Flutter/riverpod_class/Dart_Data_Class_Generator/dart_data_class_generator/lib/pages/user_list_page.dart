import 'package:dart_data_class_generator/models/user.dart';
import 'package:dart_data_class_generator/pages/user_details_page.dart';
import 'package:dart_data_class_generator/repositories/fetch_users.dart';
import 'package:flutter/material.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  List<User> users = [];
  String error = "";
  bool loading = false;

  @override
  void initState() {
    super.initState();
    _fetchUsers();
  }

  void _fetchUsers() async {
    try {
      setState(() {
        loading = true;
      });

      users = await fetchUsers();
      error = "";
    } catch (e) {
      error = e.toString();
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
      ),
      body: loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : error.isEmpty
              ? ListUsers(users: users)
              : buildError(),
    );
  }

  Widget buildError() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            error,
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: _fetchUsers,
            child: const Text(
              "Retry",
              style: TextStyle(fontSize: 18),
            ),
          )
        ]),
      ),
    );
  }
}

class ListUsers extends StatelessWidget {
  final List<User> users;

  const ListUsers({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.length,
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemBuilder: (context, index) {
        final user = users[index];

        return ListTile(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => UserDetailPage(user: user))),
          leading: CircleAvatar(child: Text(user.id.toString())),
          title: Text(user.name),
        );
      },
    );
  }
}
