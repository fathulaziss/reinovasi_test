part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMainPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToAddDataPage extends PageEvent {
  final AddData addData;

  GoToAddDataPage(this.addData);

  @override
  List<Object> get props => [];
}

class GoToDataSiswa extends PageEvent {
  @override
  List<Object> get props => [];
}
