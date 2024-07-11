import 'package:avd_ch_1/screens/task-1.5/model/quoteModel/quoteModel.dart';
import 'package:avd_ch_1/screens/task-1.5/provider/quotePageProvider/quotePageProvider.dart';
import 'package:avd_ch_1/utils/globle/globle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

QuoteModel quoteModelNew = QuoteModel();

class quotePage extends StatelessWidget {
  const quotePage({super.key});

  @override
  Widget build(BuildContext context) {
    quoteProvider quoteProviderTrue =
        Provider.of<quoteProvider>(context, listen: true);
    quoteProvider quoteProviderFalse =
        Provider.of<quoteProvider>(context, listen: false);

    quoteModelNew = QuoteModel.toList(QuotesList);
    GlobalKey<FormState> quoteKey = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal.shade400,
        title: Text(
          "Quotes",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body:
      ListView.builder(
        itemCount: quoteModelNew.QuoteListNew.length,
        itemBuilder: (context, index) => Card(
          color: Colors.grey.shade100,
          child: ListTile(
            title: Text(
              quoteModelNew.QuoteListNew[index].quote.toString(),
            ),
            subtitle: Text(
              quoteModelNew.QuoteListNew[index].quote.toString(),
            ),
            trailing: GestureDetector(
                onDoubleTap: () {
                  quoteProviderFalse.removeQuotes(index);
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.teal,
                )),

          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: Colors.teal,
                  title: Form(
                    key: quoteKey,
                    child: Column(
                      children: [
                        Text(
                          "Enter the quotes",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field Must be Required !';
                            }
                            return null;
                          },
                          controller: txtQuote,
                          decoration: InputDecoration(
                              label: Text(
                                "Enter the your quotes",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white))
                              // labelText:"Life isn’t about getting and having, it’s about giving and being.",

                              ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field Must be Required !';
                            }
                            return null;
                          },
                          controller: txtAuthor,
                          decoration: InputDecoration(
                              label: Text(
                                "Enter the author",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              )
                              // labelText:"Life isn’t about getting and having, it’s about giving and being.",

                              ),
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          quoteProviderFalse.addData();
                          quoteProviderFalse.addQuotes();
                        },
                        child: Text('Save',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),)),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
