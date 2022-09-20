import 'package:contact_app/Model/contacts_model.dart';
import 'package:contact_app/widget/contactTile.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  ContactListPage({Key? key}) : super(key: key);

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ScopedModelDescendant<ContactsModel>(

       builder: (context,child,model){
         model:ContactsModel();
         return  ListView.builder(
           itemCount: model.contacts.length,
           itemBuilder: (context, index) {
             return ContactTile(
               index: index,
                 );
           },
         );
       },
      ),
    );
  }
}




