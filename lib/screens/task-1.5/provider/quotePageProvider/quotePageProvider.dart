import 'package:avd_ch_1/screens/task-1.5/model/quoteModel/quoteModel.dart';
import 'package:avd_ch_1/utils/globle/globle.dart';
import 'package:flutter/widgets.dart';

TextEditingController txtQuote = TextEditingController();
TextEditingController txtAuthor = TextEditingController();

QuoteModel? quoteModel;

class quoteProvider extends ChangeNotifier {
  String? quote;
  String? author;

  void addData() {
    quote = txtQuote.text;
    author = txtAuthor.text;
    notifyListeners();
  }

  void addQuotes() {
    QuotesList.insert(0, {"quote": txtQuote.text, "author": txtAuthor.text});
    notifyListeners();
  }

  void removeQuotes(int index) {
    QuotesList.removeAt(index);
    notifyListeners();
  }
}
