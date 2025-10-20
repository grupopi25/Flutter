import 'package:flutter/material.dart';

class CustomButton {
  buttonCalculateImc(onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.indigo[400],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Calcular IMC',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
