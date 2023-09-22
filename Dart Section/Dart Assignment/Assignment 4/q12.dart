void main() {
  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'John',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'Emma',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'Ryan',
      'marks': [70, 65, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ];

  for (int i = 0; i < studentDetails.length; i++) {
    String std_names = studentDetails[i]["name"];
    // print(std_names);
    List<int> std_avg_marks = studentDetails[i]["marks"];
    double sum = 0;

    for (int j = 0; j < std_avg_marks.length; j++) {
      sum += std_avg_marks[j];
    }
    double percetage = (sum / 300) * 100;
    // print(sum);
    // print(percetage);
    String grade;
    if (percetage >= 80) {
      grade = "A+";
    } else if (percetage >= 70) {
      grade = "A";
    } else if (percetage >= 60) {
      grade = "B";
    } else if (percetage >= 50) {
      grade = "C";
    } else if (percetage >= 40) {
      grade = "D";
    } else {
      grade = "F";
    }

    print("$std_names and Grade $grade");
  }
}
