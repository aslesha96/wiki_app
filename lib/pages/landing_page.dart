import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    bool isSwitched = true;
    
    return new Material(
      color: Colors.lightBlue[50],
      child: new InkWell(
        onTap: () => print("hey i tapped the page"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Material(
              color: Colors.pink[50],
                child: new Center(
                  child: new Column(
                    children: <Widget>[
                      new ButtonTheme.bar(
                        child: new ButtonBar(
                          alignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(icon: new Icon(Icons.arrow_back_ios),onPressed: null,color: Colors.black,),
                            IconButton(icon: new Icon(Icons.arrow_forward_ios),onPressed: null,color: Colors.black)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            new Text(""),
            new Text("Kalam was elected as the 11th President of India in 2002 with the support of both the ruling Bharatiya Janata Party and the then-opposition Indian National Congress. ", style: new TextStyle(color: Colors.deepPurpleAccent, fontSize: 15.0, fontWeight: FontWeight.bold),),
            new Text("    "),
            new Text("2002 లో పాలక భారతీయ జనతా పార్టీ మరియు అప్పటి ప్రతిపక్షమైన ఇండియన్ నేషనల్ కాంగ్రెస్ మద్దతుతో కలాం భారతదేశంలో 11 వ రాష్ట్రపతిగా ఎన్నికయ్యారు.", style: new TextStyle(color: Colors.deepPurpleAccent,fontSize: 14.0,fontWeight: FontWeight.bold),),
            Switch(
              value: isSwitched,
              onChanged: (value){
                setState((){
                  isSwitched = value;
                });
              },
              activeTrackColor: Colors.pinkAccent,
              activeColor: Colors.pink,
            ),
            new TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'please edit',
              ),
              style: new TextStyle(fontSize: 20.0),
            ),

          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}