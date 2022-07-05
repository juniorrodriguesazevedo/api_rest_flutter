import 'package:api_rest_flutter/services/user_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final client = UserService().api();
  late List users = [];

  Future<void> fetchUsers() async {
    final response = await client.get('/users');
    setState(() {
      users = response.data;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Usuários'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 50,
              ),
              title: Text('Nome: ${users[index]['name']}'),
              subtitle: Text('Email: ${users[index]['email']}'),
            ),
          );
        },
      ),
    );
  }
}
