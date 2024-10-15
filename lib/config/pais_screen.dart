import 'package:banderas/config/field_box.dart';
import 'package:banderas/config/pais.dart';
import 'package:banderas/config/pais_provider.dart';

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class PaisScreen extends StatelessWidget{
  const PaisScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    final paisProvider = context.watch<PaisProvider>();

    paisProvider.providerPais("usa");
    final List <Pais> paisList =paisProvider.paisList;

    final Pais pais= paisList[0];
        

    return Column(
      
      children:[
        const FieldBox(),
         Image.network(pais.flagUrl)
        ,Text(pais.capital),
        Text(pais.name),
    
      ],
    );
  }



}