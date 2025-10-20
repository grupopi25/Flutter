import 'package:flutter/material.dart';

class CustomTextFormField {

  

  Peso(controller,validator,formKey) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo[400],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            'Peso (kg)',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Form(
            key: formKey,
            child: TextFormField(
              controller: controller,
              validator: validator,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Digite seu peso',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(8),
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Altura(controller,validator,formKey){

    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo[400],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            'Altura (cm)',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Form(
            key: formKey,
            child: TextFormField(
              controller: controller,
              validator: validator,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Digite sua altura',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(8),
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );


  }



}
