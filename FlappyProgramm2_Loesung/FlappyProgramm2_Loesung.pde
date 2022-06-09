Vogel vogel;
Roehre r1;
Roehre r2;
Boden b;

boolean laufend = false;

void setup()
{
  size(600, 400);
  vogel = new Vogel(50, 200);
  r1 = new Roehre(600,0);
  r2 = new Roehre(600,300);
  b = new Boden(0,400);
}

void draw()
{
  if(laufend)
  {
    vogel.bewegen(); 
    r1.bewegen();
    r2.bewegen();
  }
  
  if(vogel.kollisionMitFigur(r1))
  {
    laufend = false;
  }
  if(vogel.kollisionMitFigur(r2))
  {
    laufend = false;
  }
  if(vogel.kollisionMitFigur(b))
  {
    laufend = false;
  }

  //Alles zeichnen
  background(255);
  vogel.zeichnen();
  r1.zeichnen();
  r2.zeichnen();
}

void mouseClicked()
{
  if (laufend == false)
  {
    laufend = true;
    vogel.setY(200);
    r1.setX(600);
    r2.setX(600);
  }
  else
  {
    vogel.flattern(); 
  }
}
