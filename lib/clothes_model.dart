class Clothes {
  final String clothesTitle;
  final String clothesSubtitle;
  final String clothesPrice;
  final String clothesImageUrl;

  final List<String> clothesDetailUrl;

  Clothes(this.clothesTitle, this.clothesSubtitle, this.clothesPrice,
      this.clothesImageUrl, this.clothesDetailUrl);

  static List<Clothes> generateClothesPictures() {
    return [
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress1.jpg",
          ["assets/images/dress1.jpg", "assets/images/dress2.jpg"]),
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress2.jpg",
          ["assets/images/dress2.jpg", "assets/images/dress3.jpg"]),
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress3.jpg",
          ["assets/images/dress3.jpg", "assets/images/dress4.jpg"]),
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress4.jpg",
          ["assets/images/dress4.jpg", "assets/images/dress5.jpg"]),
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress5.jpg",
          ["assets/images/dress5.jpg", "assets/images/dress6.jpg"]),
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress6.jpg",
          ["assets/images/dress6.jpg", "assets/images/dress7.jpg"]),
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress7.jpg",
          ["assets/images/dress4.jpg", "assets/images/dress8.jpg"]),
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress8.jpg",
          ["assets/images/dress8.jpg", "assets/images/dress9.jpg"]),
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress9.jpg",
          ["assets/images/dress9.jpg", "assets/images/dress10.jpg"]),
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress10.jpg",
          ["assets/images/dress10.jpg", "assets/images/dress11.jpg"]),
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress11.jpg",
          ["assets/images/dress11.jpg", "assets/images/dress12.jpg"]),
      Clothes(
          "Suprime Clothes",
          "medium size",
          "\$89.98",
          "assets/images/dress12.jpg",
          ["assets/images/dress12.jpg", "assets/images/dress1.jpg"]),
    ];
  }
}
