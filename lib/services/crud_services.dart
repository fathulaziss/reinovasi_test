part of 'services.dart';

class CrudMethods {
  Future<void> addData(dataSiswa) async {
    FirebaseFirestore.instance.collection('data').add(dataSiswa);
  }

  Future<AddData> getData() async {
    DocumentSnapshot snapshot =
        await FirebaseFirestore.instance.collection('data').doc().get();

    return AddData(
      fullName: snapshot.data()['name'],
      address: snapshot.data()['address'],
      gender: snapshot.data()['gender'],
      phoneNum: snapshot.data()['phoneNum'],
    );
  }
}
