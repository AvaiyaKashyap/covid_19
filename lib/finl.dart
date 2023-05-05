import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => finl(),
    },
  ));
}

class finl extends StatefulWidget {
  const finl({Key? key}) : super(key: key);

  @override
  State<finl> createState() => _finlState();
}

class _finlState extends State<finl> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("${data['loc']}"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Center(
                child: Text(
              "${data['loc']}",
              style: TextStyle(
                fontSize: 20,
              ),
            )),
            Card(
              child: Text(
                "Data",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
            Container(
              width: 320,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
               border: Border.all(width: 2,style: BorderStyle.solid),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Confirmed Cases India: ${data['confirmedCasesIndian']}",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Confirmed Cases Foreign: ${data['confirmedCasesForeign']}",
                      style: TextStyle(color: Colors.black, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Discharged: ${data['discharged']}",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Deaths: ${data['deaths']}",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Total Confirmed: ${data['totalConfirmed']}",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Image.network("https://movingscience.dk/wp-content/uploads/2021/03/coronagif.gif",width: 200,height: 200,),
            ),
          ],
        ),
      ),
    );
  }
}
