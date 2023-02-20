import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injuctable.config.dart';

GetIt getIt = GetIt.instance;
@InjectableInit()
Future<void> configureinjuction() async {
  GetItInjectableX(getIt).init(environment: Environment.prod);
}
