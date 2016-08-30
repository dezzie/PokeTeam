class Interface {

  float x, y;
  String fontTitle = "AvenirLTStd-Heavy-85.vlw";
  String fontCaption = "AvenirLTStd-Roman-16.vlw";
  String fontPokemon = "AvenirLTStd-Book-20.vlw";
  PFont font1;
  PFont font2;
  PFont font3;

  Interface() {
    x = 0;
    y = 350;
    font1 = loadFont(fontTitle);
    font2 = loadFont(fontCaption);
    font3 = loadFont(fontPokemon);
  }

  void render() {

    textFont(font1);
    fill(#ffbc00);
    text("PokéTeam", 13, 104);

    textFont(font2);
    fill(0);
    text("Create a balanced team for your next", 18, 130);
    text("Pokémon adventure or tournament.", 18, 150);

    noStroke();
    fill(#5a37bc);
    rect(0, 183, 430, 537);

    for (int i=231; i<638; i+=80) {
      fill(255);
      rect(50, i, 321, 34, 6);
      textFont(font3);
      fill(0);
    }
  }
}