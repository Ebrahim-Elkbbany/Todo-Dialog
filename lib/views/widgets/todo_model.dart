class TodoModel {
  final String title;
  final String time;


  TodoModel({required this.title, required this.time});

  static List<TodoModel> todoItem = [
    TodoModel(
      title: 'Communication Systems Quiz',
      time: '10:00 AM',
    ),
    TodoModel(
      title: 'OS Report',
      time: '11:00 AM',
    ),
    TodoModel(
      title: 'Buy Some Stuff',
      time: '1:00 PM',
    ),
    TodoModel(
      title: 'Go to the Gym',
      time: '2:00 PM',
    ),
    TodoModel(
      title: 'Flutter Task',
      time: '4:00 PM',
    ),
    TodoModel(
      title: 'Flutter Task بردو',
      time: '6:00 PM',
    ),
  ];
}