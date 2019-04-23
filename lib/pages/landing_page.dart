import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LandingPageState();
  }

}
class LandingPageState extends State<LandingPage>{
  String Telugutext="2002 లో పాలక భారతీయ జనతా పార్టీ మరియు అప్పటి ప్రతిపక్షమైన ఇండియన్ నేషనల్ కాంగ్రెస్ మద్దతుతో కలాం భారతదేశంలో 11 వ రాష్ట్రపతిగా ఎన్నికయ్యారు.";

  var usernameController;
  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
            leading: IconButton(icon: new Icon(Icons.arrow_back_ios),onPressed: null,color: Colors.black,),
            actions: [
//              new IconButton(icon: new Icon(Icons.arrow_back_ios),onPressed: null,color: Colors.black,),
              new IconButton(icon: new Icon(Icons.arrow_forward_ios),onPressed: null,color: Colors.black,),
            ]
        ),
        body: Container(
            child:SingleChildScrollView(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Material(
                    child: new Center(
                      child: SingleChildScrollView(
                        child: new Column(
                          children: <Widget>[
//                          new ButtonTheme.bar(
//                            child: new ButtonBar(
//                              alignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                IconButton(icon: new Icon(Icons.arrow_back_ios),onPressed: null,color: Colors.black,),
//                                IconButton(icon: new Icon(Icons.arrow_forward_ios),onPressed: null,color: Colors.black),
//                              ],
//                            ),
//                          ),
                            new ListTile(
                              title: new Text("Kalam was elected as the 11th President of India in 2002 with the support of both the ruling Bharatiya Janata Party and the then-opposition Indian National Congress.", style: new TextStyle(fontSize: 12.0)),
                            ),
                            new Divider(color:Colors.black,indent:15.0),
                            new ListTile(
                              title: new Text(Telugutext, style: new TextStyle(fontSize: 12.0),),
                              trailing: IconButton(icon: new Icon(Icons.edit),
                                  onPressed: (){
                                    setState(() {
                                      usernameController = TextEditingController(text: Telugutext);
                                    });
                                  },
                                  color: Colors.black),
                            ),
                            new ButtonTheme.bar(
                              child: new ButtonBar(
                                alignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
//                          IconButton(icon: new Icon(Icons.edit),
//                              onPressed: (){
//                                setState(() {
//                                  usernameController = TextEditingController(text: Telugutext);
//                                });
//                              },
//                              color: Colors.black),
//                          IconButton(icon: new Icon(Icons.check),
//                            onPressed: (){
//                            setState((){
//                            });
//                            },
//                            color: Colors.green,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  new TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    autofocus: true,
                    controller: usernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                    ),
                    style: new TextStyle(fontSize: 12.0),
                  ),
                  IconButton(icon: new Icon(Icons.done),onPressed: null,color: Colors.green,),


                ],
              ),
            )
        ),
      ),
    );
  }
}