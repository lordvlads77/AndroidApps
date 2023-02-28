import 'package:flutter/material.dart';


class Home  extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('img/background.jpg'),
          //fit: BoxFit.cover,
          repeat: ImageRepeat.repeat,
        )
      ),
      child: Scaffold(
        //backgroundColor: Colors.green,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Stack'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset('img/marr.png'),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.9),
              ),
              child: Text('Camus', style: TextStyle(
                color: Colors.white,
              ),),
            )
          ],
        ),
      ),
      ),
    );
  }
}
