import 'dart:io';

void main() {
  bool continueProgram = true;

  while (continueProgram) {
    int num1, num2;

    // Prompt the user to enter the first number
    num1 = getValidNumber("Enter the first number: ");

    // Prompt the user to enter the second number
    num2 = getValidNumber("Enter the second number: ");

    // Perform mathematical operations and display results
    print("Divide: ${num1 / num2}");
    print("Modulos: ${num1 % num2}");

    // Prompt the user to continue or quit
    stdout.write("Enter 'done' to quit or press any key to continue: ");
    String input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'done') {
      continueProgram = false;
    }
  }
}

// Function to validate and get an integer input from the user
int getValidNumber(String prompt) {
  int number;

  while (true) {
    stdout.write(prompt);
    String input = stdin.readLineSync()!;

    try {
      // Attempt to parse the input as an integer
      number = int.parse(input);
      break; // Exit the loop if parsing succeeds
    } catch (e) {
      print("Invalid input. Please enter a valid integer.");
    }
  }

  return number;
}
