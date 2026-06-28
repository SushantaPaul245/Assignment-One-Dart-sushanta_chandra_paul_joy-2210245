// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐
///
library;

// EXPECTED OUTPUT:
// Student Scores: {Alice: <random>, Bob: <random>, ...}
// Highest Score: <Name> with <Score>
// Lowest Score: <Name> with <Score>
// Average Score: <Value>
// Alice: <Score> (Category)
// ...
//

import 'dart:math';

void main() {
  // 1. Create a List<String> of student names: ["Alice", "Bob", "Charlie", "Diana", "Eve"]
  // TODO: Create the student names list
  var studentNames = <String>['Alice', 'Bob', 'Charlie', 'Diana', 'Eve'];

  // 2. Create a Map<String, int> to store student scores
  // TODO: Create the scores map
  var studentScores = <String, int>{};

  // 3. Use a for loop to assign random scores (60-100) to each student
  // TODO: Implement the for loop to assign random scores
  for (var student in studentNames) {
    var score = Random().nextInt(41) +
        60; // Generates a random number between 60 and 100
    studentScores[student] = score;
  }

  // 4. Find and display:
  //    - The student with the highest score
  //    - The student with the lowest score
  //    - The average score of all students
  // TODO: Implement the logic to find highest, lowest, and average scores
  var highestStudent = '';
  var highestScore = 0;
  var lowestStudent = '';
  var lowestScore = 100;
  double averageScore = 0;

  // TODO: Add your logic here
  for (var student in studentNames) {
    var score = studentScores[student] ?? 0;
    averageScore += score;

    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }

    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }
  }
  averageScore /= studentNames.length;
  print('Student Scores: $studentScores');
  print('Highest Score: $highestStudent with $highestScore');
  print('Lowest Score: $lowestStudent with $lowestScore');
  print('Average Score: $averageScore');

  // 5. Use a switch statement to categorize students:
  //    - 90-100: "Excellent"
  //    - 80-89: "Good"
  //    - 70-79: "Average"
  //    - Below 70: "Needs Improvement"
  // TODO: Implement the switch statement for each student
  for (var student in studentNames) {
    var score = studentScores[student] ?? 0;
    var category = '';

    switch (score ~/ 10) {
      case 10:
      case 9:
        category = 'Excellent';
        break;
      case 8:
        category = 'Good';
        break;
      case 7:
        category = 'Average';
        break;
      default:
        category = 'Needs Improvement';
        break;
    }

    print('$student: $score ($category)');
  }
}
