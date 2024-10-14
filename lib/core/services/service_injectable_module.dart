import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServiceInjectableModule {
  @lazySingleton
  FToast provideFToast() => FToast();
}
