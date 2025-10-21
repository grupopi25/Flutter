import 'package:flutter/material.dart';

class CustomButton {
  botao(String valor,onPressed) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[800],
            ),
            child: TextButton(
              onPressed: onPressed,
              child: Text(
                valor,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
