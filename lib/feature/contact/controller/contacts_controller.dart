import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:car_care/feature/contact/repository/contacts_repository.dart';

final contactsControllerProvider = FutureProvider(
  (ref) {
    final contactsRepository = ref.watch(contactsRepositoryProvider);
    return contactsRepository.getAllContacts();
  },
);
