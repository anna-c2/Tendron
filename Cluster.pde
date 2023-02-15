public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster
  private float angle;
  public Cluster(int len, int x, int y)
  {
    // your code here
    angle = (float)(Math.random() * 2 * PI);
    Tendril ted = new Tendril(len, angle + (2*PI)/7, x, y);
    Tendril ted2 = new Tendril(len, angle + (4*PI)/7, x, y);
    Tendril ted3 = new Tendril(len, angle + (6*PI)/7, x, y);
    Tendril ted4 = new Tendril(len, angle + (8*PI)/7, x, y);
    Tendril ted5 = new Tendril(len, angle + (10*PI)/7, x, y);
    Tendril ted6 = new Tendril(len, angle + (12*PI)/7, x, y);
    Tendril ted7 = new Tendril(len, angle + (14*PI)/7, x, y);
    ted.show();
    ted2.show();
    ted3.show();
    ted4.show();
    ted5.show();
    ted6.show();
    ted7.show();
    //int num = 2;
    //for(int i = 0; i < 7; i++){
    //  Tendril ted = new Tendril(len, angle + (num * PI)/7, x, y);
    //  ted.show();
    //  num*=2;
    //}
  }
}
