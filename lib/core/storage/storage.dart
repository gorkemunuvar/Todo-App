import 'package:injectable/injectable.dart';

import 'objectbox_client.dart';

@Injectable(as: IStorageClient)
class ObjectBoxClient implements IStorageClient {}
