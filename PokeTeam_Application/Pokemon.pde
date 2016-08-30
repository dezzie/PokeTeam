class Pokemon {

  int id;
  String name;
  int type;
  float[] strength = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};

  Pokemon(int _id, String _name, int _type) {
    id = _id;
    name = _name;
    type = _type;
    
    effective();
  }
 
  void effective() {
    if (type == 0) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = 1;
      strength[3] = 1;
      strength[4] = 1;
      strength[5] = 1;
      strength[6] = 2;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = 1;
      strength[12] = 1;
      strength[13] = 0;
      strength[14] = 1;
    } 

    else if (type == 1) {

      strength[0] = 1;
      strength[1] = .5;
      strength[2] = 2;
      strength[3] = 1;
      strength[4] = .5;
      strength[5] = 1;
      strength[6] = 1;
      strength[7] = 1;
      strength[8] = 2;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = .5;
      strength[12] = 2;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 2) {

      strength[0] = 1;
      strength[1] = .5;
      strength[2] = .5;
      strength[3] = 2;
      strength[4] = 2;
      strength[5] = 1;
      strength[6] = 1;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = 1;
      strength[12] = 1;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 3) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = 1;
      strength[3] = .5;
      strength[4] = 1;
      strength[5] = 1;
      strength[6] = 1;
      strength[7] = 1;
      strength[8] = 2;
      strength[9] = .5;
      strength[10] = 1;
      strength[11] = 1;
      strength[12] = 1;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 4) {

      strength[0] = 1;
      strength[1] = 2;
      strength[2] = .5;
      strength[3] = .5;
      strength[4] = .5;
      strength[5] = 2;
      strength[6] = 1;
      strength[7] = 2;
      strength[8] = .5;
      strength[9] = 2;
      strength[10] = 1;
      strength[11] = 2;
      strength[12] = 1;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 5) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = 1;
      strength[3] = 1;
      strength[4] = 1;
      strength[5] = 1;
      strength[6] = 1;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 2;
      strength[10] = 2;
      strength[11] = .5;
      strength[12] = .5;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 6) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = 1;
      strength[3] = 1;
      strength[4] = .5;
      strength[5] = 1;
      strength[6] = .5;
      strength[7] = .5;
      strength[8] = 2;
      strength[9] = 1;
      strength[10] = 2;
      strength[11] = 2;
      strength[12] = 1;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 7) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = 2;
      strength[3] = 0;
      strength[4] = 2;
      strength[5] = 2;
      strength[6] = 1;
      strength[7] = .5;
      strength[8] = 1;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = 1;
      strength[12] = .5;
      strength[13] = 1;
      strength[14] = 1;
    }


    else if (type == 8) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = 1;
      strength[3] = 1;
      strength[4] = 1;
      strength[5] = 1;
      strength[6] = .5;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 1;
      strength[10] = .5;
      strength[11] = 2;
      strength[12] = 1;
      strength[13] = 0;
      strength[14] = 1;
    } 


    else if (type == 9) {

      strength[0] = 1;
      strength[1] = 2;
      strength[2] = 1;
      strength[3] = 1;
      strength[4] = .5;
      strength[5] = 1;
      strength[6] = .5;
      strength[7] = 2;
      strength[8] = .5;
      strength[9] = 2;
      strength[10] = 1;
      strength[11] = 1;
      strength[12] = 2;
      strength[13] = 1;
      strength[14] = 1;
    } 


    else if (type == 10) {

      strength[0] = 1;
      strength[1] = .5;
      strength[2] = .5;
      strength[3] = .5;
      strength[4] = .5;
      strength[5] = 2;
      strength[6] = 1;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = 1;
      strength[12] = 1;
      strength[13] = 1;
      strength[14] = 2;
    } 


    else if (type == 11) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = 1;
      strength[3] = 2;
      strength[4] = .5;
      strength[5] = 2;
      strength[6] = 1;
      strength[7] = 1;
      strength[8] = 0;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = .5;
      strength[12] = 2;
      strength[13] = 0;
      strength[14] = 1;
    } 

    else if (type == 12) {

      strength[0] = 1;
      strength[1] = .5;
      strength[2] = 2;
      strength[3] = 2;
      strength[4] = .25;
      strength[5] = 2;
      strength[6] = .5;
      strength[7] = 1;
      strength[8] = 0;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = .25;
      strength[12] = 4;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 13) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = .5;
      strength[3] = 2;
      strength[4] = 2;
      strength[5] = .25;
      strength[6] = 2;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = 1;
      strength[12] = 2;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 14) {

      strength[0] = 1;
      strength[1] = .5;
      strength[2] = .5;
      strength[3] = 2;
      strength[4] = 2;
      strength[5] = .5;
      strength[6] = 1;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 2;
      strength[10] = 2;
      strength[11] = .5;
      strength[12] = .5;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 15) {

      strength[0] = 1;
      strength[1] = .5;
      strength[2] = .5;
      strength[3] = 2;
      strength[4] = 1;
      strength[5] = .5;
      strength[6] = .5;
      strength[7] = .5;
      strength[8] = 2;
      strength[9] = 1;
      strength[10] = 2;
      strength[11] = 2;
      strength[12] = 1;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 16) {

      strength[0] = 1;
      strength[1] = .5;
      strength[2] = .5;
      strength[3] = 4;
      strength[4] = 1;
      strength[5] = 1;
      strength[6] = .5;
      strength[7] = 1;
      strength[8] = 0;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = .5;
      strength[12] = 2;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 17) {

      strength[0] = 1;
      strength[1] = .5;
      strength[2] = .5;
      strength[3] = 2;
      strength[4] = 2;
      strength[5] = .5;
      strength[6] = .5;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 1;
      strength[10] = .5;
      strength[11] = 2;
      strength[12] = 1;
      strength[13] = 0;
      strength[14] = 1;
    }

    else if (type == 18) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = 1;
      strength[3] = 1;
      strength[4] = .5;
      strength[5] = 2;
      strength[6] = .5;
      strength[7] = 1;
      strength[8] = 0;
      strength[9] = .5;
      strength[10] = 1;
      strength[11] = .5;
      strength[12] = 2;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 19) {

      strength[0] = 1;
      strength[1] = 2;
      strength[2] = .5;
      strength[3] = .5;
      strength[4] = .25;
      strength[5] = 2;
      strength[6] = .5;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 2;
      strength[10] = 2;
      strength[11] = 4;
      strength[12] = 1;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 20) {

      strength[0] = 1;
      strength[1] = 2;
      strength[2] = .5;
      strength[3] = .5;
      strength[4] = .5;
      strength[5] = 2;
      strength[6] = .5;
      strength[7] = 2;
      strength[8] = .5;
      strength[9] = 2;
      strength[10] = .5;
      strength[11] = 4;
      strength[12] = 1;
      strength[13] = 0;
      strength[14] = 1;
    }

    else if (type == 21) {

      strength[0] = 1;
      strength[1] = 2;
      strength[2] = 1;
      strength[3] = 2;
      strength[4] = .5;
      strength[5] = 1;
      strength[6] = 1;
      strength[7] = 1;
      strength[8] = 0;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = .5;
      strength[12] = 4;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 22) {

      strength[0] = 1;
      strength[1] = 2;
      strength[2] = 1;
      strength[3] = 1;
      strength[4] = 1;
      strength[5] = .5;
      strength[6] = 1;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 1;
      strength[10] = .5;
      strength[11] = 2;
      strength[12] = 2;
      strength[13] = 0;
      strength[14] = 1;
    } 

    else if (type == 23) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = 2;
      strength[3] = 0;
      strength[4] = 1;
      strength[5] = 2;
      strength[6] = .5;
      strength[7] = .25;
      strength[8] = 2;
      strength[9] = 1;
      strength[10] = 2;
      strength[11] = 2;
      strength[12] = .5;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 24) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = 1;
      strength[3] = 2;
      strength[4] = .25;
      strength[5] = 2;
      strength[6] = .25;
      strength[7] = .5;
      strength[8] = 0;
      strength[9] = 1;
      strength[10] = 2;
      strength[11] = 1;
      strength[12] = 2;
      strength[13] = 1;
      strength[14] = 1;
    }

    else if (type == 25) {

      strength[0] = .5;
      strength[1] = .5;
      strength[2] = 4;
      strength[3] = 0;
      strength[4] = 4;
      strength[5] = 2;
      strength[6] = 2;
      strength[7] = .25;
      strength[8] = 2;
      strength[9] = .5;
      strength[10] = 1;
      strength[11] = 1;
      strength[12] = .5;
      strength[13] = 1;
      strength[14] = 1;
    } 

    else if (type == 26) {

      strength[0] = 1;
      strength[1] = 4;
      strength[2] = .5;
      strength[3] = .5;
      strength[4] = .25;
      strength[5] = 2;
      strength[6] = .5;
      strength[7] = 4;
      strength[8] = .25;
      strength[9] = 4;
      strength[10] = 1;
      strength[11] = 2;
      strength[12] = 2;
      strength[13] = 1;
      strength[14] = 1;
    }

    else if (type == 27) {

      strength[0] = 1;
      strength[1] = 2;
      strength[2] = 1;
      strength[3] = 1;
      strength[4] = .25;
      strength[5] = 1;
      strength[6] = .25;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 2;
      strength[10] = 2;
      strength[11] = 2;
      strength[12] = 2;
      strength[13] = 1;
      strength[14] = 1;
    }

    else if (type == 28) {

      strength[0] = 1;
      strength[1] = 2;
      strength[2] = 1;
      strength[3] = 2;
      strength[4] = .25;
      strength[5] = 2;
      strength[6] = .25;
      strength[7] = 2;
      strength[8] = 0;
      strength[9] = 2;
      strength[10] = 1;
      strength[11] = .5;
      strength[12] = 1;
      strength[13] = 1;
      strength[14] = 1;
    }

    else if (type == 29) {

      strength[0] = .5;
      strength[1] = .25;
      strength[2] = 1;
      strength[3] = 2;
      strength[4] = 4;
      strength[5] = .5;
      strength[6] = 2;
      strength[7] = .5;
      strength[8] = 2;
      strength[9] = .5;
      strength[10] = 1;
      strength[11] = 1;
      strength[12] = 1;
      strength[13] = 1;
      strength[14] = 1;
    }

    else if (type == 30) {

      strength[0] = .5;
      strength[1] = .5;
      strength[2] = 4;
      strength[3] = 0;
      strength[4] = 4;
      strength[5] = 2;
      strength[6] = 2;
      strength[7] = .25;
      strength[8] = 2;
      strength[9] = .5;
      strength[10] = 1;
      strength[11] = 1;
      strength[12] = .5;
      strength[13] = 1;
      strength[14] = 1;
    }

    else if (type == 31) {

      strength[0] = .5;
      strength[1] = .5;
      strength[2] = 2;
      strength[3] = 2;
      strength[4] = 1;
      strength[5] = 2;
      strength[6] = 1;
      strength[7] = .5;
      strength[8] = 0;
      strength[9] = .5;
      strength[10] = 1;
      strength[11] = .5;
      strength[12] = 2;
      strength[13] = 1;
      strength[14] = 1;
    }

    else if (type == 32) {

      strength[0] = 0;
      strength[1] = 1;
      strength[2] = 1;
      strength[3] = 1;
      strength[4] = .5;
      strength[5] = 1;
      strength[6] = 0;
      strength[7] = .25;
      strength[8] = 2;
      strength[9] = 1;
      strength[10] = 2;
      strength[11] = 1;
      strength[12] = 1;
      strength[13] = 2;
      strength[14] = 1;
    } 

    else if (type == 33) {

      strength[0] = 1;
      strength[1] = .5;
      strength[2] = .5;
      strength[3] = 1;
      strength[4] = .25;
      strength[5] = 4;
      strength[6] = .5;
      strength[7] = 1;
      strength[8] = 0;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = .5;
      strength[12] = 2;
      strength[13] = 1;
      strength[14] = 2;
    } else if (type == 34) {

      strength[0] = 1;
      strength[1] = 1;
      strength[2] = 1;
      strength[3] = 1;
      strength[4] = 1;
      strength[5] = 1;
      strength[6] = 1;
      strength[7] = 1;
      strength[8] = 1;
      strength[9] = 1;
      strength[10] = 1;
      strength[11] = 1;
      strength[12] = 1;
      strength[13] = 1;
      strength[14] = 1;
    }
  }
}