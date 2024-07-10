# avd_ch_1

A new Flutter project.

- Stepper
  <p>
      <img src="https://github.com/Krupaparmar30/AdvanceFlutterCh-1/assets/149374671/684095c4-df4e-4cc0-a71c-46140d99fc7e"height=28% width=32%>
      <img src="https://github.com/Krupaparmar30/AdvanceFlutterCh-1/assets/149374671/f7244c9b-0f67-4488-ae16-9213c68bb4cd"height=28% width=32%>
  </p>

## State
- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.

- If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets.

## State management

- The state management is one of the most popular and necessary processes in the lifecycle of an application. 

- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app. 

- If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets. The setState() function allows us to set the properties of the state object that triggers a redraw of the UI.

## There are Two way describe the state management?

- Treditioinal state management - 
    
    State management refers to managing data across widgets, screens, and over time in a Flutter application.

    setState();

- Provider state management -


    The Provider is a state management solution that extends and simplifies Inherited Widgets. It is a versatile and powerful state manager that allows you to deliver data to any widget in your app.

     - ChangeNotifer
     - ChangeNotiferProvider
     - Cousumer

## ChangeNotifer

- ChangeNotifier is a simple class, which provides change notification to its listeners.
- It is easy to understand, implement, and optimized for a small number of listeners.
- It is used for the listener to observe a model for changes. 
- In this, we only use the notifyListener() method to inform the listeners.

Example:
```bash
import 'package:flutter/material.dart';  
  
class Counter with ChangeNotifier {  
  int _counter;  
  
  Counter(this._counter);  
  
  getCounter() => _counter;  
  setCounter(int counter) => _counter = counter;  
  
  void increment() {  
    _counter++;  
    notifyListeners();  
  }  
  
  void decrement() {  
    _counter--;  
    notifyListeners();  
  }  
}  
```
## ChangeNotiferProvider

- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. 
- It comes from the provider package.
- The following code snippets help to understand the concept of ChangeNotifierProvider.

Example:
```bash
void main() {  
  runApp(  
    MultiProvider(  
      providers: [  
        ChangeNotifierProvider(builder: (context) => Counter()),  
        Provider(builder: (context) => SomeOtherClass()),  
      ],  
      child: MyApp(),  
    ),  
  );  
}  
```
## Cousumer

- It is a type of provider that does not do any fancy work.
-  It just calls the provider in a new widget and delegates its build implementation to the builder.
- The following code explains it more clearly.

Example:
```bash
return Consumer<Counter>(  
  builder: (context, count, child) {  
    return Text("Total price: ${count.total}");  
  },  
);  
```
https://drive.google.com/file/d/1l2y1_yjpRyXCBdwTX0MEp7N7IDH45Tbv/view?usp=drive_link

##  Provider & Change Theme using Provider

<p>
      <img src="https://github.com/Krupaparmar30/AdvanceFlutterCh-1/assets/149374671/8d2cdb30-dac4-4101-a9dc-16783d11a25e"height=28% width=32%>
      <img src="https://github.com/Krupaparmar30/AdvanceFlutterCh-1/assets/149374671/7b8f6ff6-e067-47c3-af35-c3b9e3f6e364"height=28% width=32%>

  </p>


