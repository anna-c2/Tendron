public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
       Tendril ted = new Tendril(NUM_STEMS, (int)(Math.random() * (2 * Math.PI)), x, y);
       ted.show();
    }
}
