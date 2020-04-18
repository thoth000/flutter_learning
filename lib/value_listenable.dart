import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

String accessDir;
String welcome="welcome";
void putBox(boxname,key,value){
  Hive.box(boxname).put(key, value);
}
void deleteBox(boxname,key){
  Hive.box(boxname).delete(key);
}