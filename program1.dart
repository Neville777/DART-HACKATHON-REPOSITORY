import 'dart:io';

void main() {
  String name = '';
  int age = 0;
  String school = '';
  String hobby = '';

  // Prompt user for name

  while (true) {
    stdout.write("Enter your name: ");
    String nameInput =
        stdin.readLineSync()!.trim(); // Remove leading and trailing whitespaces

    // Check if name input is not empty and does not contain numbers
    if (nameInput.isNotEmpty && !_containsNumber(nameInput)) {
      // Capitalize each word in the name
      name = capitalizeEachWord(nameInput);
      break;
    } else {
      // Display error message for invalid name input
      if (_containsNumber(nameInput)) {
        print("Invalid name input. Name cannot contain numbers.");
      } else {
        print("Name cannot be blank.");
      }
    }
  }

  // Prompt user for age

  while (true) {
    stdout.write("Enter your age: ");
    String ageInput =
        stdin.readLineSync()!.trim(); // Remove leading and trailing whitespaces

    // Check if age input is not empty and is an integer
    if (ageInput.isNotEmpty && _isInteger(ageInput)) {
      // Parse age input to integer
      age = int.parse(ageInput);
      break;
    } else {
      // Display error message for invalid age input
      print("Invalid age input. Please enter a valid integer.");
    }
  }

  // Prompt user for school

  while (true) {
    stdout.write("Enter your school: ");
    String schoolInput =
        stdin.readLineSync()!.trim(); // Remove leading and trailing whitespaces

    // Check if school input is not empty and does not contain numbers
    if (schoolInput.isNotEmpty && !_containsNumber(schoolInput)) {
      // Capitalize each word in the school name
      school = capitalizeEachWord(schoolInput);
      break;
    } else {
      // Display error message for invalid school input
      if (_containsNumber(schoolInput)) {
        print("Invalid school input. School name cannot contain numbers.");
      } else {
        print("School name cannot be blank.");
      }
    }
  }

  // Prompt user for hobby
  while (true) {
    stdout.write("Enter your hobby: ");
    String hobbyInput =
        stdin.readLineSync()!.trim(); // Remove leading and trailing whitespaces
    // Check if hobby input is not empty and does not contain numbers
    if (hobbyInput.isNotEmpty && !_containsNumber(hobbyInput)) {
      // Assign hobby input to hobby variable
      hobby = hobbyInput;
      break;
    } else {
      // Display error message for invalid hobby input
      print("Hobby name cannot be blank or contain numbers.");
    }
  }

  // Display user information
  print(
      "My name is $name. I am $age years old, studying at $school, and my hobby is $hobby.");
}

// Function to check if a string contains numbers
bool _containsNumber(String value) {
  return value.split('').any((char) => int.tryParse(char) != null);
}

// Function to check if a string is an integer
bool _isInteger(String value) {
  return int.tryParse(value) != null;
}

// Function to capitalize each word in a string
String capitalizeEachWord(String input) {
  if (input.isEmpty) return '';
  List<String> words = input.split(' ');
  for (int i = 0; i < words.length; i++) {
    words[i] = capitalize(words[i]);
  }
  return words.join(' ');
}

// Function to capitalize the first letter of a string
String capitalize(String input) {
  if (input.isEmpty) return '';
  return input[0].toUpperCase() + input.substring(1).toLowerCase();
}
