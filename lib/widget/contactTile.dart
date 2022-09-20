import 'package:contact_app/Model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ContactTile extends StatelessWidget {
  final int index;

  const ContactTile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      final displayedContact = model.contacts[index];
      model : ContactsModel();
      return ListTile(
        title: Text(displayedContact.name),
        subtitle: Text(displayedContact.email),
        trailing: IconButton(
          onPressed: () {
            model.changeFavorateStatus(index);
          },
          icon: Icon(
            displayedContact.isFavorate ? Icons.star : Icons.star_border,
            color: displayedContact.isFavorate ? Colors.amber : Colors.grey,
          ),
        ),
      );
    });
  }
}
