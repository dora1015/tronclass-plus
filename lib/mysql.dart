import 'dart:async';
import 'package:mysql1/mysql1.dart';
import 'dart:io';


sql() async {
  var s = ConnectionSettings(
    user: "root",
    password: "root",
    host: "jp-tyo-ilj-1.natfrp.cloud",
    port: 19345,
    db: "tronclass_plus",

  );

  Socket.connect('jp-tyo-ilj-1.natfrp.cloud', 19345);
  // create a connection
  print("Opening connection ...");
  var conn = await MySqlConnection.connect(s);
  print("Opened connection!");

  var results = await conn.query('select * from user;');
  print("re: $results");

  conn.close();
}