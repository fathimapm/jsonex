import 'package:flutter/material.dart';
import 'package:json/src/cubit/contacts/contact_cubit.dart';
import 'package:json/src/models/record.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class contactPage extends StatefulWidget {


  @override
  _contactPageState createState() => _contactPageState();
}

class _contactPageState extends State<contactPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("JSON Example"),
        ),
        body: SafeArea(
          child:BlocBuilder<ContactCubit,ContactState>(
            builder: (context,state){
              if (state is ContactLoading){
    return const CircularProgressIndicator();
    }else if(state is ContactLoaded){
     return _buildRecordsListUI(state.records);
    }else if (state is ContactError){
    return Text(state.ErrorMessage);
    }else{
                return const CircularProgressIndicator();
              }
            },
        )
        ),

    );
  }
_buildRecordsListUI(List<Record >records) {
  return ListView.separated(
    separatorBuilder: (context, index) => SizedBox(height: 0,),
    itemCount: records.length,
    itemBuilder: (context, index) {
      Record item = records[index];
      return ListTile(
        leading: CircleAvatar(
            child: Image.network(item.photo)),
        title: Text(item.name),
      );
    },

  );

}
}