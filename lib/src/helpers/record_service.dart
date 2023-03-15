

import 'package:flutter/services.dart' show rootBundle;

class fileHelper{

 static  Future<String> readJSONFile( String path) async{

    String fileData =  await rootBundle.loadString(path);
    return fileData;
  }

}