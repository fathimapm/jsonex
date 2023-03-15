import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:json/src/cubit/contacts/contact_repository.dart';
import 'package:json/src/models/record.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  final ContactRepository _repository = ContactRepository();
  ContactCubit() : super(ContactInitial());

  getRecordsData() async{
    try {
      emit(ContactLoading());
      List<Record> records = await _repository.getRecordsData();
      emit(ContactLoaded(records));
    }catch(ex) {
      print(ex);
      emit( const ContactError("file load error"));
    }
  }
}
