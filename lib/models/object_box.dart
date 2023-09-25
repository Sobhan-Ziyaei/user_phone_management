
import 'package:path/path.dart' as p;
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';
import 'package:user_phone_management/objectbox.g.dart';

class ObjectBox {
  final Store store;

  ObjectBox._create(this.store);

  static Future<ObjectBox> create() async {
    var dir = await getApplicationDocumentsDirectory();
    Store store =
        await openStore(directory: p.join(dir.path, 'objectbox_user_phone_management'));

    return ObjectBox._create(store);
  }
}