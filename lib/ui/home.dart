import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }

}
class LoginState extends State<Home>{
  final _nameController=new TextEditingController();
  final _passwordController=new TextEditingController();
  String _name='';

  void _deleteAll(){
    setState(() {
      _nameController.clear();
      _passwordController.clear();
    });
  }
  void _setLogin(){
    setState((){
      if(_nameController!=null && _passwordController!=null){
        _name=_nameController.text.toString();
      }
      else
        {
          _name='';
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(child: Image.asset('images/DSC_0017.JPG',width: 110.0,height: 110.0,)),
        Container(
          height: 190.0,
          width: 390.0,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  icon: Icon(Icons.person)
                ),
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  icon: Icon(Icons.lock)
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(child: Center(child: FlatButton(onPressed: _setLogin,color: Colors.green ,child: Text('Login',style: TextStyle(fontSize: 30.0,color: Colors.black),)))),
                    Expanded(child: Center(child: FlatButton(onPressed: _deleteAll,color: Colors.green ,child: Text('Clear',style: TextStyle(fontSize: 30.0,color: Colors.black),))))

                  ],
                ),
              )
            ],
          ),
        ),
        Center(child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text('Welcome $_name',style: TextStyle(fontSize: 40.0,color: Colors.black,),),
        ))

      ],
    );
  }

}