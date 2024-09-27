import 'dart:io';

main(){
  print(" \n \" Calculation karne me alas aa raha hai ? , Mai hu na \" \n");

  // 1st number 
  print("Chal First Number Dal");
  double num1 = double.parse(stdin.readLineSync()!); //! use of it ?

  //2nd number
  print("Ab Second Dal",);
  double num2 = double.parse(stdin.readLineSync()!);// stdin ka use hota hai user se input ki hui value read krne ke liye and "stdout ka use out put ko showcase karne k liye hota hai printstdout ko bhejta hai value print krne  "

  print("  \t \" Bol kya evaluate kru in dono numbers se ? \" \t \n");

  
  print("1" " Add kru ?");
  print("2" " Substract kru ?");
  print("3" " Multiply kru ?");
  print("4" " Divide kru ?");
  String operation = stdin.readLineSync()!;

  double Result;

  // ab switch se main kam 
  switch(operation){
    case '1':
    Result =num1 + num2;
    break;

    case '2':
    Result =num1 - num2;
    break;

    case '3':
    Result =num1 * num2;
    break;

    case '4':
    Result =num1 / num2;
    break;

    default:
    print("\t \" Bhai Range ke bahr ka hai \" \t");
    return;
   
  }
  if(num2/2==0){
    print("even");
  }
  else
  {
    print("odd");
  }
    print(" \t \"Le Result , Mze kar \"\t  ",); print(Result);

}