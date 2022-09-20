import 'package:contact_app/data/contact.dart';
import 'package:faker/faker.dart ';
import 'package:scoped_model/scoped_model.dart';

class ContactsModel extends Model {
  final List<Contact> _contact = List.generate(50, (index) {
    return Contact(
        name: "${faker.person.firstName()} ${faker.person.lastName()}",
        email: faker.internet.freeEmail(),
        phoneNumber: faker.randomGenerator.integer(1000000).toString());
  });

  // get only property to call the private list
  List<Contact> get contacts => _contact;



  //sorted using favorite property
  void changeFavorateStatus(int index) {
    _contact[index].isFavorate = !_contact[index].isFavorate;
    _contact.sort((a, b) {
      if (a.isFavorate) {
        return -1;
      }
      if (b.isFavorate) {
        return 1;
      } else {
        return 0;
      }
    });
    notifyListeners();
  }
}
