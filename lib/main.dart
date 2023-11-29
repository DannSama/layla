import 'package:flutter/material.dart';
import 'package:layla/src/utils/theme/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
       themeMode: ThemeMode.system,
      home: AppHome(),
    );
  }
}


class AppHome extends StatelessWidget{
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(title: const Text("ojan"), leading: const Icon(Icons.ondemand_video_outlined)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality for the floating action button
        },
        child: const Icon(Icons.add_shopping_cart_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
           Text("heading", style: Theme.of(context).textTheme.headline2,),
           Text("sub headign", style: Theme.of(context).textTheme.subtitle2,),
           Text("paragraph", style: Theme.of(context).textTheme.bodyText1,),
            ElevatedButton(onPressed: () {}, child: const Text("elevated button"),),
            OutlinedButton(onPressed: () {}, child: const Text("outlined button"),),
            const Padding(padding: EdgeInsets.all(20.0),
            child: Image(image: AssetImage("assets\images\books.png")),
            ),
          ],
        ),      
        ),
    );
   }
}