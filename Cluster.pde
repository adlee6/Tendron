public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
      Tendril[] bob = new Tendril [NUM_STEMS];
      for(int i = 0; i < bob.length; i++){
        bob[i] = new Tendril(len, (2*PI*i/7), x, y);
        bob[i].show();
      }
    }
}
