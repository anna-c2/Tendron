class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private float myAngle;
  private float startX, startY, endX, endY;

  /**
   Class constructor
   -len is how many segments in this tendril (each a fixed length, 4 is a good start)
   -theta is tendril starting angle in radians 
   -x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, float theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    if(myNumSegments < 10){
      stroke(#A865B2);
    }
    else if(myNumSegments < 20){
      stroke(#6BB265);
    }
    else{
      stroke(#3E5F3B);
    }
    startX = myX;
    startY= myY;
    for (int i =0; i < myNumSegments; i++) {
      myAngle = myAngle + (float)((Math.random()*0.4)-0.2); // how to get -0.2 to 0,2
      endX = startX + (float)Math.cos(myAngle) * SEG_LENGTH;
      endY = startY + (float)Math.sin(myAngle) * SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    
    if(myNumSegments >= SEG_LENGTH){
       Cluster d = new Cluster(myNumSegments/4, (int)endX, (int)endY);
    }
  }
  
}
