import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('img/background.jpg'),
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Contador'),
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      contador--;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 5,
                    textStyle: TextStyle(
                    fontSize: 24,
                  ),
                  padding: EdgeInsets.all(20)
                ),
                  child: Text('-'),
                ),
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        contador++;
                      });
                    },
                    child: Text('+'),

                ),

                Text(contador.toString(), style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
