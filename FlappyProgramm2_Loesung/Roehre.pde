class Roehre extends Figur
{  
  // Konstruktor
  Roehre(float x_, float y_)
  {
    x = x_;
    y = y_;
    breite = 40;
    hoehe = 100;
    vx = -2;
  }

  // Methoden
  void bewegen()
  {  
    x = x + vx;
    if (x < 0)
    {
      x = 600;
    }
  }

  void zeichnen()
  {
    fill(0, 255, 0);
    rect(x,y,breite,hoehe);
  }
 
}
