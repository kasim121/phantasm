extension DescriptionFormatter on String {
  String formatDescription() {
    // Define the word after which you want the break
    String targetWord = 'Fashionable';

    // Find the position of the target word in the description
    int index = this.indexOf(targetWord);

    // If the word is found and there is more text after it
    if (index != -1 && index + targetWord.length < this.length) {
      return this.substring(0, index + targetWord.length) +
          '\n' +
          this.substring(index + targetWord.length).trim();
    }

    // If the word isn't found or no text follows it, just return the string as is
    return this;
  }
}
