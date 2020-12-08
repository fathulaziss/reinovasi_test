part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class OnInitialPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnLoginPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnMainPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnAddDataPage extends PageState {
  final AddData addData;

  OnAddDataPage(this.addData);

  @override
  List<Object> get props => [];
}

class OnDataSiswa extends PageState {
  @override
  List<Object> get props => [];
}
