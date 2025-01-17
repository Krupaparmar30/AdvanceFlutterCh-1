
class QuoteModel {
  String? quote;
  String? author;

  QuoteModel({this.quote, this.author});

  factory QuoteModel.fromQuotes(Map m1)
  {
    return QuoteModel(author: m1['author'], quote: m1['quote']);
  }

  List<QuoteModel> QuoteListNew = [];

  QuoteModel.toList(List l1)
  {
    for (int i = 0; i < l1.length; i++) {
      QuoteListNew.add(QuoteModel.fromQuotes(l1[i]));
    }
  }
}
