part of 'contact_cubit.dart';


abstract class ContactState extends Equatable{
  final bool isLoading;
  final String errorMessage;
const ContactState(this.isLoading, this.errorMessage);
}

class ContactInitial extends ContactState {
  const ContactInitial(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}


class ContactLoading extends ContactState {
  const ContactLoading(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}




class ContactLoaded extends ContactState {
const ContactLoaded(super.isLoading, super.errorMessage);

 @override
  List<Object?> get props => [isLoading,errorMessage];
}



class ContactError extends ContactState {
const ContactError(super.isLoading, super.errorMessage);

@override
List<Object?> get props => [isLoading,errorMessage];
}


