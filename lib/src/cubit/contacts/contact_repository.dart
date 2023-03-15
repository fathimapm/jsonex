
import 'dart:convert';
import 'package:json/src/models/record.dart';
import 'package:json/src/helpers/record_service.dart';

class ContactRepository{
   Future<List<Record>>  getRecordsData() async{
     const String recordsAssetPath = "assets/data/records.json";
    String recordsJSONData = await  fileHelper.readJSONFile(recordsAssetPath);
    List< dynamic> decodedData = jsonDecode(recordsJSONData);
    List<Record> records =decodedData.map<Record>((e) => Record.fromJSON(e)).toList();
    return records;
  }
}