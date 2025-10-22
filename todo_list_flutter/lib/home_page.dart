import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final _formKey = GlobalKey<FormState>();
final TextEditingController _controller = TextEditingController();
validator(){
  if(_formKey.currentState!.validate()){
    setState(() {
      _minhasTarefas.add(_controller.text.trim());
      _controller.clear();
    });
  }
}
  List _minhasTarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        title: Text('Todo List',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
        actions: [IconButton(onPressed: (){}, icon:Icon(Icons.light_mode,color: Colors.white,))],
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(children: [
            Form(key: _formKey, child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                child: TextFormField(controller: _controller,validator: (value) {if(value == null || value.trim().isEmpty){return 'Por Favor Insira uma Tarefa';}return null;},  decoration: InputDecoration(labelText: 'Digite sua Tarefa',border: OutlineInputBorder())),
              ),
              )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:  8.0),
              child: GestureDetector(onTap: ()=> validator(), child: Container( width:double.infinity ,height: 50,decoration: BoxDecoration(color: Colors.grey[700],borderRadius: BorderRadius.circular(15)), child: Center(child: Text('Enviar',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600 ))),)),
            ),

            Expanded(child: ListView.builder(itemCount: _minhasTarefas.length,itemBuilder: (context, index) 
            { return ListTile(title: Container(height: 50, decoration: BoxDecoration(color: Colors.grey[600],borderRadius: BorderRadius.circular(5)) ,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_minhasTarefas[index],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
            )],)));   }))
          ],),
        ),
      ),

    );
  }
}