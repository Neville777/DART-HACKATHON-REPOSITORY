import 'dart:io'; // Import the dart:io library to use input and output operations

void main() {
  bool continueProgram =
      true; // Initialize a boolean variable to control program execution

  // Run the program until the user decides to exit
  while (continueProgram) {
    // Ask for user input
    stdout.write("Enter your marks or type 'exit' to quit: ");
    String input = stdin.readLineSync()!; // Read user input from the console

    if (input.toLowerCase() == 'exit') {
      continueProgram =
          false; // If user input is 'exit', set continueProgram to false to exit the loop
    } else {
      try {
        int marks = int.parse(input); // Parse user input to an integer

        // Check if marks are within the valid range
        if (marks >= 0 && marks <= 100) {
          // Determine grade based on marks
          if (marks > 85) {
            print("Grade: Excellent");
          } else if (marks >= 75) {
            print("Grade: Very Good");
          } else if (marks >= 65) {
            print("Grade: Good");
          } else {
            print("Grade: Average");
          }
        } else {
          print(
              "Invalid marks entered. Please enter a number between 0 and 100.");
        }
      } catch (e) {
        print(
            "Invalid input. Please enter a valid integer or type 'exit' to quit.");
      }
    }
  }
}
