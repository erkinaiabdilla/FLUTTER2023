// импорт бул флаттерге тиешелуу бардык нерселерди озуно камтыйт
import 'package:flutter/material.dart';

//void:бул функция эчнерсе кайтарбайт
// main:бул негизги функция
//():скобка бул функциянын функция экенин билдирет
//{}:бул тармал скобка функциянын денеси болот 
void main() {
 // runApp:run-тиркеме app-жугуртуу,тоесть тиркемени баштоо фунция.Ал озуно бир виджет(класс) алат myAppти
 //MyApp():бул виджет же класс аталышы
  runApp(const MyApp());
}
// class MyApp:бул класс 
//extends: бул мурас алуу. MyApp озуно StatelessWidgetтен мурас алды(касиеттерин.возможностьторун алды)
class MyApp extends StatelessWidget {
// класстын конструктору. (super key):statelesswidget ге тиешелуу
const MyApp({super.key});

  @override
 //build:куруу ал озуно виджет алат
 //BuildContext: бул адрес. виджеттерди козолмоодочу вектор
  Widget build(BuildContext context) {
    
   //return: кайтарат,иштетет materialappты
   //materialapp: бул материалдык дизайны бар жаны флаттер колдонмосун тузот
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // материалаптагы скобканын ичиндеги жазуулар,материалаптын свойстволары-theme,primarysmatch,home итд
      theme: ThemeData(
        //theme: тема материалапка тиешелуу свойство,ал озуно data алат,жогоруда алды уже
       //primarySwatch: свет,тус,он беруучу свойство,земдата праймери сматчты алган
        primarySwatch: Colors.blue,
      ),
     //home: дом,уй materialappга тиешелуу свойство
     // MyHomePage(): бул бир виджет же класс
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      appBar: AppBar(backgroundColor: Colors.white,
      title:const Center(
        child: Text      ("Тапшырма 1",
        style: TextStyle(color: Colors.black),),
      ),
    elevation: 0,
    ),
body: Padding(
   padding: const EdgeInsets.symmetric(horizontal: 10),
  child:   Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
      Container( 
    
      width: double.infinity,
    
      height: 30,
    
     child: Center(child:  Text("Сан: $index",style:TextStyle(fontSize: 20) ,))
    
    ,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(8)),
    ),
    
    
    SizedBox(height: 20,
    ),
      
  
    Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [ElevatedButton(onPressed: (){
        setState(() {
          index--;
        });
      }, child: const Icon(Icons.remove)),
      SizedBox(width: 10,),
    ElevatedButton(onPressed: (){
      setState(() {
        index++;
      });
      
    }, child: Icon(Icons.add))
    ],) 
  
     ], 
     ),
  ),
   ),
    );

   }

}

        
