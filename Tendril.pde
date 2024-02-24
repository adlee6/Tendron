class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    double startX = myX;
    double startY = myY;
    for(int i = 0; i < myNumSegments; i++) {
      double endX = startX + SEG_LENGTH*Math.cos(myAngle);
      double endY = startY + SEG_LENGTH*Math.sin(myAngle);
      line((float)startX, (float)startY, (float)endX, (float)endY);
      startX = endX;
      startY = endY;
      myAngle += (Math.random()*0.4-0.2);
      if(i == myNumSegments-1){
       ArrayList <Cluster> tom = new ArrayList <Cluster>();
        if(myNumSegments >= 10)
      tom.add(new Cluster(myNumSegments/3, (int)endX, (int)endY));
        else{
        fill(#FCC2F5);
       ellipse((float)endX, (float)endY, 10,10);
        }
      }
    }
  }
}
