package bean;

public class Box {
	double length;
    double width;
    double height;
    public Box()
    {
       length=0;
       width=0;
       height=0;
    }
    public void setLength(double length)
    {
       this.length=length;
    }
    public double getLength()
    {
       return length;
    }
    public void setWidth(double width)
    {
    this.width=width;
    }
    public double getWidth()
    {
       return width;
    }
    public void setHeight(double height)
    {
      this.height=height;
    }
    public double getHeight()
    {
       return height;
    }
    public double volumn()
    {
       double volumnValue;
       volumnValue=length*width*height;
       return volumnValue; 
    }
    public double surfaceArea()
    {
       double surfaceAreaValue;
       surfaceAreaValue=length*width*2+length*height*2+height*width*2;
       return surfaceAreaValue;
    }

}
