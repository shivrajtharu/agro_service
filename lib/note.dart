import 'package:flutter/material.dart';
import 'widget/drawer.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  final List<String> _notes = [];
  void _addNote(String note){
    setState((){
      _notes.add(note);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      drawer: MyDrawer(),
      body: ListView.builder(
          itemCount: _notes.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(_notes[index]),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              context: context,
              builder: (context){
                return Container(
                  child: AddNoteForm((note){
                    _addNote(note);
                    Navigator.pop(context);
                  })
                );
              }
          );
        },
        tooltip: 'Add Note',
        child: Icon(Icons.add),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  final Function(String) onNoteAdd;
  AddNoteForm( this.onNoteAdd);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final _formKey = GlobalKey<FormState>();
  String _note = "";

  void _submitForm(){
    if (_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      widget.onNoteAdd(_note);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            autofocus: true,
            decoration: InputDecoration(labelText: "Note"),
            validator: (value){
              if(value!.isEmpty){
                return 'Please enter a note';
              }
              return null;
            },
            onSaved: (value)=> _note = value!,
          ),
          SizedBox(height: 25,),
          Container(
            child: ElevatedButton(
              onPressed: _submitForm,
              child: Text('Add',style:TextStyle(fontSize:20)),
            ),
          )
        ],
      ),
    );
  }
}

