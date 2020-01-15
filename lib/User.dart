import 'package:flutter/material.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  createAlert(BuildContext context) {
    TextEditingController _textFieldController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            title: Text("alert"),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "Add something....."),
            ),
            // content: Image.network("https://images-na.ssl-images-amazon.com/images/I/51QsquBv8DL._SX355_.jpg"),
            actions: <Widget>[
              MaterialButton(
                onPressed: (){
                  Navigator.of(context).pop(_textFieldController.text.toString());
                  debugPrint(_textFieldController.text.toString());
                  },
                
                child: Text(
                  "Add new",
                  style: TextStyle(color: Colors.blue),
                  
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modal Dialog"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => createAlert(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
