import 'package:flutter/material.dart';

class item {
  String yourimage ;
  double yourprice ;
  String yourname ;
  item({required this.yourimage,required this.yourprice,required this.yourname}) ;
  
}

final List<item> items = [
    item(yourimage:"assets/images/أنواع-العصافير-الأسترالي.jpg", yourprice:  80.99, yourname:"Budjey"),
    item(yourimage:"assets/images/كل-شيء-عن-تربية-عصافير-فيشر.jpg", yourprice:  349.99, yourname:"Love birds"),
    item(yourimage:"assets/images/كيفية-تربية-طيور-الزيبرا-والاعتناء-بها.jpg", yourprice:  49.99 , yourname:"Zybra"),
    item(yourimage:"assets/images/معلومات-عن-طائر-الحسون.jpg", yourprice:  499.99, yourname:"Hassoon"),
    item(yourimage:"assets/images/ماذا-تعرف-عن-طائر-الكروان-الرمادي.jpg", yourprice:  399.99, yourname:"Koktail"),
    item(yourimage:"assets/images/download (2).jpg", yourprice:  250.99, yourname:"Kanari"),
  ]; 