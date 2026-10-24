// задание 2: попугай 
import 'dart:io';

void main (){
 String text = "";

 while (true) {
  print ("Напиши что-нибудь:");
  text = stdin.readLineSync()!;

  if (text == "стоп") {
    break;
  }
  print (text);
 }

}