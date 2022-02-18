class Campaign{
  String campName = '';
  DateTime campStartDate = DateTime(2022,02,18);
  DateTime campFinishDate = DateTime(2022,03,18);
  bool campOfCompany = true;
  int campLiked = 0;
  int campScrapped = 0;
  String campTodo = '';

Campaign(String name, DateTime startDate, DateTime finishDate, bool ofCompany, int liked, int scrapped, String todo){
  campName = name;
  campStartDate = startDate;
  campFinishDate = finishDate;
  campOfCompany = ofCompany;
  campLiked = liked;
  campScrapped = scrapped;
  campTodo = todo;
  }
}