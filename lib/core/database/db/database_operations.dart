import 'package:logger/logger.dart';

import '/core/database/db/sqflite.dart';

class AllDataDatabase {
  SqfliteDataBase? sqfliteDataBase = SqfliteDataBase();

  String? comment;
  int? id;

  AllDataDatabase({
    this.sqfliteDataBase,
  });

  Future<List<Map>> readData() async {
    List<Map> response =
        await sqfliteDataBase!.readDatabase("SELECT * FROM comments ");

    print("================database has been read==================");

    return response;
  }

  Future insertData() async {
    int respond = await sqfliteDataBase!.insertDatabase('''
    INSERT INTO comments (comment) 
    VALUES ($comment)
    ''');

    final data = {
      "comment": comment,
    };

    Logger logger = Logger(
      printer: PrettyPrinter(),
    );
    logger.i(data);

    print(respond);
  }

  Future updateData() async {
    int respond = await sqfliteDataBase!.updateDatabase('''
    UPDATE 'comments'
    SET id = $id, comment = $comment
    WHERE id = $id
    ''');

    final data = {
      "comment": comment,
      "id": id,
    };

    Logger logger = Logger(
      printer: PrettyPrinter(),
    );
    logger.i(data);

    print(respond);
  }

  Future checkDatabase() async {
    List<Map> respond = await sqfliteDataBase!
        .readDatabase("SELECT * FROM comments WHERE id = $id");
    print(respond);
    if (respond.isNotEmpty) {
      return updateData();
    } else {
      return insertData();
    }
  }

  Future deleteData() async {
    int respond = await sqfliteDataBase!.deleteMyDatabase('''
    DELETE FROM 'comments' WHERE id = "$id"
    ''');

    final data = {
      "id": id,
    };

    Logger logger = Logger(
      printer: PrettyPrinter(),
    );
    logger.i(data);

    print(respond);
  }
}
