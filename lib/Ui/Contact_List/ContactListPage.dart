import 'package:contact_app/data/contact.dart';
import 'package:faker/faker.dart';
import 'package:contact_app/widget/contactTile.dart';
import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  ContactListPage({Key? key}) : super(key: key);

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  late List<Contact> _contact;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _contact = List.generate(50, (index) {
      return Contact(
          name: "${faker.person.firstName()} ${faker.person.lastName()}",
          email: faker.internet.freeEmail(),
          phoneNumber: faker.randomGenerator.integer(1000000).toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return ContactTile(contact:_contact[index],ispressed:(){
            setState(() {
              _contact[index].isFavorate=! _contact[index].isFavorate;
              _contact.sort((a,b){
                if(a.isFavorate){
                  return -1;
                }
                if(b.isFavorate){
                  return 1;
                }
                else{
                  return 0;
                }
              });
            });
          });
        },
      ),
    );
  }
}




