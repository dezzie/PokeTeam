class Sector {

  float x, y;
  int type;
  float easing;
  float sectorHeight;
  float sectorRadius;

  boolean needsUpdate;
  float newRadius;


  Sector(int _type) {
    x = 0;
    y = 0;
    sectorHeight = 1;
    sectorRadius = 300;
    newRadius = sectorRadius;
    type = _type;
    easing = 0.02;
    needsUpdate = true;
  }


  void render() {
    setNewRadius();
    arc(0, 0, sectorRadius, sectorRadius, -TAU/30, TAU/30);
    
  }

  void update() {
    if (needsUpdate) {
      // Check if position update is necessary for next frame
      float distance = newRadius - sectorRadius;

      // Increase coordinates only a fraction (easing) of their remaining distances
      sectorRadius += distance * easing;

      if (abs(distance)<0.1) {
        sectorRadius = newRadius;
        needsUpdate=false;
      }
    }
  }

  void setNewRadius() {
    if (sectorHeight == 0) {
    newRadius = 0;
    }  else if (sectorHeight <= .125) {
    newRadius = 50;
    } else if (sectorHeight <= .25) {
    newRadius = 100;
    } else if (sectorHeight <= .5) {
    newRadius = 180;
    } else if (sectorHeight == 1) {
    newRadius = 300;
    } else if (sectorHeight <= 2) {
    newRadius = 435;
    } else if (sectorHeight <= 4) {
    newRadius = 560;
    }  else if (sectorHeight > 4) {
    newRadius = 700;
    }
    
    needsUpdate = true;
  }
}