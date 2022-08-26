import 'package:contact_app/data/contact.dart';
import 'package:faker/faker.dart';
import'package:flutter/material.dart';



class ContactListPage extends StatefulWidget {


ContactListPage({Key? key}) : super(key: key);

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final List<Contact> _contact=List.generate(50, (index) {
    return Contact(name: "${faker.person.firstName()} ${faker.person.lastName()}",
        email: faker.internet.freeEmail(),
        phoneNumber:faker.randomGenerator.integer(1000000).toString());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ListView.builder(
        itemCount: 30,
          itemBuilder:(context, index) {
           return ListTile(
             title: Text(_contact[index].name),
             subtitle: Text(_contact[index].email),
           );
          },
      ),
    );
  }
}
