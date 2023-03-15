part of 'contact_cubit.dart';

abstract class ContactState extends Equatable {
  const ContactState();
}

class ContactInitial extends ContactState {
  @override
  List<Object> get props => [];
}
class ContactLoading extends ContactState {
  @override
  List<Object> get props => [];
}
class ContactLoaded extends ContactState {
  final List<Record> records;
  const ContactLoaded(this.records);
  @override
List<Object> get props => [records];

}
class ContactError extends ContactState {
final String ErrorMessage;


 const ContactError(this.ErrorMessage);

  @override
  List<Object> get props => [ErrorMessage];
}