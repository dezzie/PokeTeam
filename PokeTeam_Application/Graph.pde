class Graph {

  float x, y;
  Table table_1;
  int set_typeid;

  String fontPokemon = "AvenirLTStd-Book-20.vlw";
  PFont font3;

  int currentSlot = 0;
  int currentPokemonId = 0;

  PImage[] sprites = new PImage[7];
  PImage[] type_sprites = new PImage[7];

  Sector[] sectors = new Sector[15];

  //The currently selected pokemon
  Pokemon[] p = new Pokemon[7];

  Graph() {
    font3 = loadFont(fontPokemon);

    table_1 = loadTable("types.csv", "header");

    for (int i=0; i<sectors.length; i++) {
      //Sets the type of each sector.
      TableRow row = table_1.getRow(i);
      set_typeid = row.getInt("type_id");
      sectors[i] = new Sector(set_typeid);
    }

    // Sets an initial pokemon
    for (int i = 0; i < p.length; i++) {
      p[i] = pokemon[0];
    }
  }

  void render() {
    color[] c = {#a8a878, #f08030, #6890f0, #f8d030, #77c850, #98d8d8, #c02f28, #a040a0, 
      #e0c068, #a890f0, #f85888, #a8b821, #b8a038, #705898, #7038f8};

    pushMatrix();
    translate(width*4/6, height/2);

    //Draws the sectors.
    noStroke();
    rotate(-(5 * TAU / 15));
    for (int i = 0; i < sectors.length; i++) {
      fill(c[i]);
      sectors[i].render();
      rotate(TAU / 15);
    }

    //Draws the circle to always show the "normal" height of a sector.
    pushStyle();
    noFill();
    stroke(0, 90);
    ellipse(0, 0, 300, 300);
    popStyle();

    popMatrix();
  }

  void selectSlot(int diff) {
    currentSlot = diff;
    if (currentSlot > 6) {
      currentSlot = 1;
    } else if (currentSlot < 1) {
      currentSlot = 6;
    }
  }

  void selectPokemonId(int diff) {
    currentPokemonId += diff;
    if (currentPokemonId > 151) {
      currentPokemonId = 1;
    } else if (currentPokemonId < 1) {
      currentPokemonId = 151;
    }

    updatePokemon(currentSlot, currentPokemonId);
  }

  void updatePokemon(int pkSlot, int pkId) {
    textFont(font3);
    p[pkSlot] = pokemon[currentPokemonId];
    for (int j = 0; j < p.length; j++) {
      sprites[j] = loadImage(p[j].id + ".png" );
      type_sprites[j] = loadImage("types_" + p[j].type + ".png" );
    } 
    if (currentSlot == 0) {
      currentSlot = 1;
    } else if (currentSlot == 1) {
      currentPokemonId = p[1].id;
      pushStyle();     
      textAlign(RIGHT);
      text(p[1].id, 102, 255);       
      popStyle();
      text(p[1].name, 150, 255);
      image(sprites[1], 110, 228);
      pushMatrix();
      scale(.3);
      image(type_sprites[1], 900, 803);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[2].id, 102, 335);       
      popStyle();
      text(p[2].name, 150, 335);
      image(sprites[2], 110, 308);
      pushMatrix();
      scale(.3);
      image(type_sprites[2], 900, 1070);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[3].id, 102, 415);       
      popStyle();
      text(p[3].name, 150, 415);
      image(sprites[3], 110, 388);
      pushMatrix();
      scale(.3);
      image(type_sprites[3], 900, 1337);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[4].id, 102, 495);       
      popStyle();
      text(p[4].name, 150, 495);
      image(sprites[4], 110, 468);
      pushMatrix();
      scale(.3);
      image(type_sprites[4], 900, 1604);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[5].id, 102, 575);       
      popStyle();
      text(p[5].name, 150, 575);
      image(sprites[5], 110, 548);
      pushMatrix();
      scale(.3);
      image(type_sprites[5], 900, 1871);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[6].id, 102, 655);       
      popStyle();
      text(p[6].name, 150, 655);
      image(sprites[6], 110, 628);
      pushMatrix();
      scale(.3);
      image(type_sprites[6], 900, 2138);
      popMatrix();
    } else if (currentSlot == 2) {
      currentPokemonId = p[2].id;
      pushStyle();     
      textAlign(RIGHT);
      text(p[1].id, 102, 255);       
      popStyle();
      text(p[1].name, 150, 255);
      image(sprites[1], 110, 228);
      pushMatrix();
      scale(.3);
      image(type_sprites[1], 900, 803);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[2].id, 102, 335);       
      popStyle();
      text(p[2].name, 150, 335);
      image(sprites[2], 110, 308);
      pushMatrix();
      scale(.3);
      image(type_sprites[2], 900, 1070);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[3].id, 102, 415);       
      popStyle();
      text(p[3].name, 150, 415);
      image(sprites[3], 110, 388);
      pushMatrix();
      scale(.3);
      image(type_sprites[3], 900, 1337);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[4].id, 102, 495);       
      popStyle();
      text(p[4].name, 150, 495);
      image(sprites[4], 110, 468);
      pushMatrix();
      scale(.3);
      image(type_sprites[4], 900, 1604);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[5].id, 102, 575);       
      popStyle();
      text(p[5].name, 150, 575);
      image(sprites[5], 110, 548);
      pushMatrix();
      scale(.3);
      image(type_sprites[5], 900, 1871);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[6].id, 102, 655);       
      popStyle();
      text(p[6].name, 150, 655);
      image(sprites[6], 110, 628);
      pushMatrix();
      scale(.3);
      image(type_sprites[6], 900, 2138);
      popMatrix();
    } else if (currentSlot == 3) {
      currentPokemonId = p[3].id;
      pushStyle();     
      textAlign(RIGHT);
      text(p[1].id, 102, 255);       
      popStyle();
      text(p[1].name, 150, 255);
      image(sprites[1], 110, 228);
      pushMatrix();
      scale(.3);
      image(type_sprites[1], 900, 803);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[2].id, 102, 335);       
      popStyle();
      text(p[2].name, 150, 335);
      image(sprites[2], 110, 308);
      pushMatrix();
      scale(.3);
      image(type_sprites[2], 900, 1070);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[3].id, 102, 415);       
      popStyle();
      text(p[3].name, 150, 415);
      image(sprites[3], 110, 388);
      pushMatrix();
      scale(.3);
      image(type_sprites[3], 900, 1337);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[4].id, 102, 495);       
      popStyle();
      text(p[4].name, 150, 495);
      image(sprites[4], 110, 468);
      pushMatrix();
      scale(.3);
      image(type_sprites[4], 900, 1604);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[5].id, 102, 575);       
      popStyle();
      text(p[5].name, 150, 575);
      image(sprites[5], 110, 548);
      pushMatrix();
      scale(.3);
      image(type_sprites[5], 900, 1871);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[6].id, 102, 655);       
      popStyle();
      text(p[6].name, 150, 655);
      image(sprites[6], 110, 628);
      pushMatrix();
      scale(.3);
      image(type_sprites[6], 900, 2138);
      popMatrix();
    } else if (currentSlot == 4) {
      currentPokemonId = p[4].id;
      pushStyle();     
      textAlign(RIGHT);
      text(p[1].id, 102, 255);       
      popStyle();
      text(p[1].name, 150, 255);
      image(sprites[1], 110, 228);
      pushMatrix();
      scale(.3);
      image(type_sprites[1], 900, 803);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[2].id, 102, 335);       
      popStyle();
      text(p[2].name, 150, 335);
      image(sprites[2], 110, 308);
      pushMatrix();
      scale(.3);
      image(type_sprites[2], 900, 1070);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[3].id, 102, 415);       
      popStyle();
      text(p[3].name, 150, 415);
      image(sprites[3], 110, 388);
      pushMatrix();
      scale(.3);
      image(type_sprites[3], 900, 1337);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[4].id, 102, 495);       
      popStyle();
      text(p[4].name, 150, 495);
      image(sprites[4], 110, 468);
      pushMatrix();
      scale(.3);
      image(type_sprites[4], 900, 1604);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[5].id, 102, 575);       
      popStyle();
      text(p[5].name, 150, 575);
      image(sprites[5], 110, 548);
      pushMatrix();
      scale(.3);
      image(type_sprites[5], 900, 1871);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[6].id, 102, 655);       
      popStyle();
      text(p[6].name, 150, 655);
      image(sprites[6], 110, 628);
      pushMatrix();
      scale(.3);
      image(type_sprites[6], 900, 2138);
      popMatrix();
    } else if (currentSlot == 5) {
      currentPokemonId = p[5].id;
      pushStyle();     
      textAlign(RIGHT);
      text(p[1].id, 102, 255);       
      popStyle();
      text(p[1].name, 150, 255);
      image(sprites[1], 110, 228);
      pushMatrix();
      scale(.3);
      image(type_sprites[1], 900, 803);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[2].id, 102, 335);       
      popStyle();
      text(p[2].name, 150, 335);
      image(sprites[2], 110, 308);
      pushMatrix();
      scale(.3);
      image(type_sprites[2], 900, 1070);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[3].id, 102, 415);       
      popStyle();
      text(p[3].name, 150, 415);
      image(sprites[3], 110, 388);
      pushMatrix();
      scale(.3);
      image(type_sprites[3], 900, 1337);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[4].id, 102, 495);       
      popStyle();
      text(p[4].name, 150, 495);
      image(sprites[4], 110, 468);
      pushMatrix();
      scale(.3);
      image(type_sprites[4], 900, 1604);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[5].id, 102, 575);       
      popStyle();
      text(p[5].name, 150, 575);
      image(sprites[5], 110, 548);
      pushMatrix();
      scale(.3);
      image(type_sprites[5], 900, 1871);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[6].id, 102, 655);       
      popStyle();
      text(p[6].name, 150, 655);
      image(sprites[6], 110, 628);
      pushMatrix();
      scale(.3);
      image(type_sprites[6], 900, 2138);
      popMatrix();
    } else if (currentSlot == 6) {
      currentPokemonId = p[6].id;
      pushStyle();     
      textAlign(RIGHT);
      text(p[1].id, 102, 255);       
      popStyle();
      text(p[1].name, 150, 255);
      image(sprites[1], 110, 228);
      pushMatrix();
      scale(.3);
      image(type_sprites[1], 900, 803);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[2].id, 102, 335);       
      popStyle();
      text(p[2].name, 150, 335);
      image(sprites[2], 110, 308);
      pushMatrix();
      scale(.3);
      image(type_sprites[2], 900, 1070);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[3].id, 102, 415);       
      popStyle();
      text(p[3].name, 150, 415);
      image(sprites[3], 110, 388);
      pushMatrix();
      scale(.3);
      image(type_sprites[3], 900, 1337);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[4].id, 102, 495);       
      popStyle();
      text(p[4].name, 150, 495);
      image(sprites[4], 110, 468);
      pushMatrix();
      scale(.3);
      image(type_sprites[4], 900, 1604);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[5].id, 102, 575);       
      popStyle();
      text(p[5].name, 150, 575);
      image(sprites[5], 110, 548);
      pushMatrix();
      scale(.3);
      image(type_sprites[5], 900, 1871);
      popMatrix();
      pushStyle();     
      textAlign(RIGHT);       
      text(p[6].id, 102, 655);       
      popStyle();
      text(p[6].name, 150, 655);
      image(sprites[6], 110, 628);
      pushMatrix();
      scale(.3);
      image(type_sprites[6], 900, 2138);
      popMatrix();
    }
    updateSectorHeights();
  }

  void updateSectorHeights() {
    for (int i = 0; i < sectors.length; i++) {
      sectors[i].sectorHeight = 1;
      for (int j = 1; j < p.length; j++) {
        sectors[i].sectorHeight *= p[j].strength[i];
        if (sectors[i].sectorHeight == 0) {
          sectors[i].sectorHeight = 0;
        } else if (sectors[i].sectorHeight <= 0.125) {
          sectors[i].sectorHeight = 0.125;
        }
        sectors[i].update();
      }
    }
  }

  void tooltip () {
    for (int i = 0; i < p.length; i++) {
      color c = get(mouseX, mouseY);
      if (c == color(#a8a878)) {
        textFont(font3);
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Normal", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[0].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#f08030)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Fire", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[1].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#6890f0)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Water", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[2].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#f8d030)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Electric", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[3].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#77c850)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Grass", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[4].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#98d8d8)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Ice", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[5].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#c02f28)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Fighting", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[6].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#a040a0)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Poison", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[7].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#e0c068)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Ground", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[8].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#a890f0)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Flying", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[9].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#f85888)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Psychic", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[10].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#a8b821)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Bug", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[11].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#b8a038)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Rock", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[12].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#705898)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Ghost", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[13].sectorHeight, mouseX + 18, mouseY - 2);
      } else if (c == color(#7038f8)) {
        fill(255);
        stroke(0);
        rect(mouseX + 10, mouseY - 45, 130, 50);
        fill(c);
        text("Dragon", mouseX + 18, mouseY - 24);
        fill(0);
        text("Weak: " + sectors[14].sectorHeight, mouseX + 18, mouseY - 2);
      }
    }
  }
}