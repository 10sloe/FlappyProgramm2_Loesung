class Figur
{
  // Attribute
  float x;
  float y;
  float breite;
  float hoehe;
  float vx;
  float vy;
  
  boolean kollisionMitFigur(Figur f2)
  {
    if (x + breite >= f2.x &&     
      x <= f2.x + f2.breite &&       
      y + hoehe >= f2.y &&       
      y <= f2.y + f2.hoehe) {       
      return true;
    } else
    {
      return false;
    }
  }
  
  void setX(float x_)
{
 x = x_;
}
void setY(float y_)
{
   y = y_;
}
  
}
