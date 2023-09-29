import 'package:flutter/material.dart';

// Todo in this code we convert statelessWidget to change like statefulWidget
//Todo : This is how we can build statelessWidget to statefulWidget
// Todo : The cons is we can not dispose these widget because stateless Widget is not giving us dispose functionality
class NotifyListenerScreen extends StatelessWidget {
  NotifyListenerScreen({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subscribe"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(valueListenable: toggle, builder: (context, value, child){
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                obscureText: toggle.value,
                decoration: InputDecoration(
                    hintText: "Password",
                    suffix: InkWell(onTap: () {
                      toggle.value = !toggle.value;
                    }, child: Icon(toggle.value ? Icons.visibility_off_outlined : Icons.visibility))),
              ),
            );
          }),
          Center(
              child: ValueListenableBuilder(
            valueListenable: _counter,
            builder: (context, value, child) {
              return Text(
                _counter.value.toString(),
                style: TextStyle(fontSize: 50),
              );
            },
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
