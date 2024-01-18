import 'dart:io';

void main() {
  bool continueProgram = true;

  while (continueProgram) {
    print('Welcome to Brand Management App\n');
    Map<String, String> israeliProducts = {
      'pepsi': 'Cola next',
      'olpers': 'Nestle, Milkpak ',
      '7up': 'Lemon Up',
      'lipton': 'Vital,Tea',
      'maggi': 'Shoop by Shan',
      'mirinda': 'Gourmet Malta Drink',
      'knorr': 'Shoop by Shan',
      'dew': 'Gourmet Twister Drink',
      'fanta': 'Gourmet Malta Drink',
    };

    print('Enter the brand you want to check:');
    String userInput = stdin.readLineSync() ??'';
    String lowercaseOutput = userInput.toLowerCase();

    if (israeliProducts.containsKey(lowercaseOutput)) {
      print(
          'This is an Israeli product. Please use the alternatives in Pakistan.\n');
      print('Available alternatives:');
      print(israeliProducts[lowercaseOutput]);
      print('\n');
    } else {
      print('This is not an Israeli product.');
    }

    // Ask the user if they want to continue
    print('Do you want to continue? (yes/no)');
    String answer = stdin.readLineSync()?.toLowerCase() ?? '';

    if (answer != 'yes') {
      print('Exiting the program. Goodbye!');
      continueProgram = false;
    }
  }
}
