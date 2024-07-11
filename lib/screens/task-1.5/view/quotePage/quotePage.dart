import 'package:avd_ch_1/screens/task-1.5/model/quoteModel/quoteModel.dart';
import 'package:avd_ch_1/screens/task-1.5/provider/quotePageProvider/quotePageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

QuoteModel? quoteModel;


class quotePage extends StatelessWidget {
  const quotePage({super.key});

  @override

  Widget build(BuildContext context) {
 //   quoteModelText=QuoteModel.toList(l1:QuoteList)
    quoteProvider quoteProviderTrue =
        Provider.of<quoteProvider>(context, listen: true);
    quoteProvider quoteProviderFalse =
        Provider.of<quoteProvider>(context, listen: false);
    return Scaffold(
      body: ListView.builder(
        itemCount: quoteProviderTrue.QuotesList.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(quoteProviderTrue.QuotesList[index]['quote']),
          subtitle: Text(quoteProviderTrue.QuotesList[index]['author']),
          trailing: GestureDetector(
          onDoubleTap: () {
            quoteProviderFalse.removeQuotes(index);
          }

          ,child: Icon(Icons.delete,color: Colors.red,)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                    title: Column(
                  children: [
                    Text("Enter the quotes"),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: txtQuote,

                      decoration: InputDecoration(
                          label: Text("Enter the your quotes"),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))
                          // labelText:"Life isn’t about getting and having, it’s about giving and being.",

                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: txtAuthor,
                      decoration: InputDecoration(
                          label: Text("Enter the your author"),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))
                          // labelText:"Life isn’t about getting and having, it’s about giving and being.",

                          ),
                    ),











                  ],

                ),
                  actions: [
                    TextButton(onPressed: () {
                      quoteProviderFalse.addData();
                      quoteProviderFalse.addQuotes();
                    }, child: Text('Save')),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(color: Colors.black87, fontSize: 20),
                      ),
                    ),


                  ],
                );

              }
              );

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
QuoteModel quoteModelText=QuoteModel();