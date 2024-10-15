import 'package:banderas/Model_flag.dart';
import 'package:banderas/config/pais.dart';
import 'package:dio/dio.dart';


class GetPais {
  
final dio = Dio();

Future<Pais> getPais(String pais) async {
  
  final response = await dio.get('https://restcountries.com/v3.1/name/$pais');
 
 final paisModel = Ciudad.fromJson(response.data[0]);

 return paisModel.toPaisEntity();
}

}