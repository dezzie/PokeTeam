/* 
 Programming Basics
 Kevin Casas
 casas.k@husky.neu.edu
 Final
 "PokeTeam"
 
 */

Table table;
int set_id;
String set_name;
int set_type;

boolean hasStart = true;

Graph _graph;
Interface _interface;

Pokemon[] pokemon = new Pokemon[152];


void setup() {
  size(1280, 720);
  background(#ffffff);

  table = loadTable("pokemon.csv", "header");

  for (int i=0; i<pokemon.length; i++) {

    TableRow row = table.getRow(i);
    set_id = row.getInt("id");
    set_name = row.getString("name");
    set_type = row.getInt("type");

    pokemon[i] = new Pokemon(set_id, set_name, set_type);
  }

  _graph = new Graph();
  _interface = new Interface();
}


void draw() {
  background(255);


  _graph.render();
  _graph.tooltip();
  _interface.render();
  _graph.updatePokemon(0, 0);
}


void keyPressed() {
  if (key == '1') {
    _graph.selectSlot(1);
  } else if (key == '2') {
    _graph.selectSlot(2);
  } else if (key == '3') {
    _graph.selectSlot(3);
  } else if (key == '4') {
    _graph.selectSlot(4);
  } else if (key == '5') {
    _graph.selectSlot(5);
  } else if (key == '6') {
    _graph.selectSlot(6);
  }

  if (key == CODED) {
    if (keyCode == RIGHT) {
      _graph.selectPokemonId(1);
    } else if (keyCode == LEFT) {
      _graph.selectPokemonId(-1);
    } else if (keyCode == UP) {
      _graph.selectPokemonId(-10);
    } else if (keyCode == DOWN) {
      _graph.selectPokemonId(10);
    }
  }
}