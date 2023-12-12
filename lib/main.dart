import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200.h,
              width: 200.w,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                'You have pushed the button this many times:',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 100.h,
              width: 100.w,
              color: Colors.red,
              alignment: Alignment.center,
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.green,
              ),
              height: 150.h,
              width: 150.w,
              alignment: Alignment.center,
              child: IconButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                icon: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
