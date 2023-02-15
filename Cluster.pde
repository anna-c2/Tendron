public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster
  
  public Cluster(int len, int x, int y)
  {
    // your code here
    //theta = (float)(Math.random() * 2 * PI);

          Tendril ted = new Tendril(len, (float)(Math.random() * 2 * PI), x, y);
        
          ted.show();
  }
}
