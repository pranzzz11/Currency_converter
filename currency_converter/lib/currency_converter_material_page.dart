import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});


  @override
  State <CurrencyConverterMaterialPage>createState() =>
     _CurrencyConverterMaterialPage();
  }
  

class _CurrencyConverterMaterialPage 
     extends State <CurrencyConverterMaterialPage>{
  double result=0;
final TextEditingController textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 242, 242),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 244, 242, 242),
        elevation: 0,
        title: const Text('Currency Converter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 21, 22, 22),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 249, 249, 250),
                ),
                decoration: const InputDecoration(
                hintText: 'Please enter the amount in USD',
                hintStyle: TextStyle(
                color: Color.fromARGB(255, 248, 249, 250),
                 ),
                    prefixIcon: Icon(Icons.monetization_on),
                 prefixIconColor: Color.fromARGB(255, 243, 243, 244),
                 filled: true,
                fillColor: Color.fromARGB(255, 89, 185, 244),

                 enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                 Radius.circular(30),
                  ),
                        borderSide: BorderSide.none,
                 ),

                 focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.all(
                 Radius.circular(30),
                ),
                 borderSide: BorderSide.none,
                 ),
               ),

                 keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                
                setState(() {
                   result = double.parse(textEditingController.text) * 91.63;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 52, 51, 51),
                foregroundColor: const Color.fromARGB(255, 248, 247, 247),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              
              ),
              child: const Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
