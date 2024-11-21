extension DescriptionFormatter on String {
  String formatDescription({required String targetWord}) {
    int index = this.indexOf(targetWord);
    if (index != -1 && index + targetWord.length < this.length) {
      return this.substring(0, index + targetWord.length).trim() +
          '\n' +
          this.substring(index + targetWord.length).trim();
    }
    return this;
  }
}

// Your widget code here
