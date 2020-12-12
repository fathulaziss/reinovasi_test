part of 'services.dart';

class CrudMethods {
  Future<void> addData(dataSiswa) async {
    FirebaseFirestore.instance.collection('data').add(dataSiswa);
  }

  Future getData() async {
    List dataList = [];
    try {
      await FirebaseFirestore.instance
          .collection('data')
          .get()
          .then((querySanpshot) {
        querySanpshot.docs.forEach((element) {
          dataList.add(element.data());
        });
      });
      return dataList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
