import 'package:flutter/material.dart';
import 'Ui/Contact_List/ContactListPage.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:contact_app/Model/contacts_model.dart';


void main (){
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    // to use scoped model inside our app
    return  ScopedModel(

      model: ContactsModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContactListPage(),
      ),
    );
  }
}
