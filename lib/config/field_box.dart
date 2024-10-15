import 'package:banderas/config/pais_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class FieldBox  extends StatelessWidget{
  const FieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final paisProvider =context.watch<PaisProvider>();
    
    var texController =TextEditingController();

    var underlineInputBorder = const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      )
    );
  var inputDecoration = InputDecoration(
        hintText: "pon un pais",
        fillColor: Colors.blue,
        enabledBorder: underlineInputBorder,
        focusedBorder: underlineInputBorder,
        filled: true,
      );

    return TextFormField(

      decoration: inputDecoration,
      controller :texController,
      onFieldSubmitted: (value) {
      
        paisProvider.providerPais(value);
        
        texController.clear();
    
      } 
    );
    
  }

}