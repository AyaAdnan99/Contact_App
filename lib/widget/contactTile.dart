import 'package:flutter/material.dart';
import 'package:contact_app/data/contact.dart';



class ContactTile extends StatelessWidget {
  final Contact contact;
  final void Function() ispressed;
  const ContactTile({Key? key,required this.contact,required this.ispressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(contact.name),
      subtitle: Text(contact.email),
      trailing: IconButton(
        onPressed: ispressed,
        icon: Icon(
          contact.isFavorate ? Icons.star : Icons.star_border,
          color:contact.isFavorate ? Colors.amber : Colors.grey,
        ),
      ),
    );;
  }
}
