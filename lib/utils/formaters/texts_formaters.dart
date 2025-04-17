extension DTCapitalizeFirtsLetter on String {
  String capitalizeFirstLetter() {
    return split(' ').map((word) {
      if (word.isNotEmpty) {
        return word[0].toUpperCase() + word.substring(1);
      } else {
        return '';
      }
    }).join(' ');
  }
}
