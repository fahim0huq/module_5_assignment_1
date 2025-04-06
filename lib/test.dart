void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  Map<String, double> averageScores = {};

  for (var student in students) {
    String name = student['name'] as String;
    List<dynamic> scoresDynamic = student['scores'] as List<dynamic>;
    List<int> scores = scoresDynamic.map((s) => s as int).toList();

    int total = 0;
    for (var score in scores) {
      total += score;
    }

    double average = total / scores.length;
    averageScores[name] = double.parse(average.toStringAsFixed(2));
  }

  var sortedEntries = averageScores.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedMap = {
    for (var entry in sortedEntries) entry.key: entry.value
  };
 // print(sortedEntries);

  print("{");
  for (var entry in sortedMap.entries) {
    print('"${entry.key}": ${entry.value},');
  }
  print("}");


}
