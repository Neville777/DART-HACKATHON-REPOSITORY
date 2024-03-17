import 'dart:io';

void main() {
  bool continueProgram = true; // Variable to control program execution

  while (continueProgram) {
    // Continuously runs until continueProgram is false
    stdout.write(
        "Enter your marks or type 'exit' to quit: "); // Prompt user for input
    String input = stdin.readLineSync()!; // Read user input from the console

    continueProgram = input.toLowerCase() !=
        'exit'; // Check if the user wants to continue or exit
    if (!continueProgram)
      break; // Break out of the loop if the user wants to exit

    try {
      int marks = int.parse(input); // Convert the input string to an integer

      // Determine grade based on marks using nested ternary operators
      String grade = marks >= 0 && marks <= 100
          ? marks > 85
              ? 'Excellent' // If marks are greater than 85
              : marks >= 75
                  ? 'Very Good' // If marks are between 75 and 85
                  : marks >= 65
                      ? 'Good' // If marks are between 65 and 75
                      : 'Average' // If marks are below 65
          : 'Invalid marks entered. Please enter a number between 0 and 100.'; // If marks are outside the range

      print("Grade: $grade"); // Print the calculated grade
    } catch (e) {
      // Handle invalid input or parsing errors
      print(
          "Invalid input. Please enter a valid number or type 'exit' to quit.");
    }
  }
}
