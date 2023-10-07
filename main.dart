import "dart:io";
void main(){
    var myOption ={
        "1","Length conversion",
        "2","Temperature Conversion",
        "3","Area Conversation",

     } ;  
     convertLength(option){
      if(option=='1'){
        print("Enter the length in Meter: ");
        var num1 =stdin.readLineSync();
        int num =int.parse(num1!);
        double reslut = num/1000;
        print('$num m is = $reslut km ');
        }
        else if (option == '2') {
          print('Enter the length in Kilometer :');
          var num1= stdin.readLineSync()!;
          int num = int.parse(num1);
          double result = num*1000;
          print("$num km = ${result} m");
        }
        else if(option== '3'){
          print('Enter Length in Feet :');
          var feet= stdin.readLineSync()!;
          int num = int.parse(feet);
          double result = num*12;
          print("${num} ft = ${result} inch");
        }
        else if(option=='4'){
          print("Enter the length in inches : ");
          var inch =stdin.readLineSync()!;
          int num = int.parse(inch);
          double result =(num)/12;
          print ("${num} inch = ${result}ft");
        }
        else{
          print("Invalid Input!!!");
        }
     }  
    
    selectMethodOption(){
      var option = stdin.readLineSync();
        if(option=="1"){
            convertLength(option);
        }
    }

    lenghtOptionFun(){
        var lengthOption={
            "1":"Meter to Kilometer",
            "2":"Kilometer To Meter",
            "3":"Feet to Inches",
            "4":"Inches to Feet",
        };
        lengthOption.forEach(((key, value) => {
          print("\n$value\t$key")}));
        print(lengthOption);
        selectMethodOption();
        
    };
    temratureOptionFun(){
        var temperatureOption={
            "1":"Celsius to Fahrenheit",
            "2":"Fahrenheit to Celsius",

        };
        print(temperatureOption);
        selectMethodOption();

    };
    areaConverOptionFun(){
        var areaConversionOptions={
            "1":"Square meter to Square feet",
            "2":"Square meters to square inch", 
        };
        print(areaConversionOptions);
        selectMethodOption();
    };
    

    selectOption(){
        var option = stdin.readLineSync();
        if(option =="1"){
            lenghtOptionFun();
        }
        else if (option=="2") {
            temratureOptionFun();
        }
        else if (option == '3') {
            areaConverOptionFun();
        }
        else{
            print("Invalid Option");
        }
    };


 showOption(){
            print(myOption);
            selectOption();
        };
showOption();
}