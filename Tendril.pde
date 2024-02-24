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
        if(myNumSegments >= 3)
      tom.add(new Cluster(myNumSegments/3, (int)endX, (int)endY));
        else{
        fill(#FCC2F5);
       ellipse((float)endX, (float)endY, 5,5);
        }
      }
    }
  }
}
