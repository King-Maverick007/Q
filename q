import java.util.*;
class Main
{
  public static void main(String ar[])
  {
    int a=10;
    int b=0;
    float c=0;
    int br[]={1,2};
    System.out.println("start");
  try
   {
     System.out.println(br[2]);
    c=a/b;//here no exception when b!=0
    System.out.println("div done");
    System.out.println(c);
    System.out.println("end");
   }
    catch(ArithmeticException re)
    {
      System.out.println("wrong its infinity");
    }
    catch(ArrayIndexOutOfBoundsException r)//array bounce
    {
      System.out.println("AIobe exception occured");
    }
    System.out.println(c);
    System.out.println("finish");
  }
}

import java.util.*;
class Circle extends Exception//custom exception class
{
  String a;
  Circle(String b)
  {
    a=b;
  }
  public String toString()//over
  {
    return(a);
  }
}
class Main
{
  public static void main(String ar[])
  {
  float a;
  float b;
  float area=0;
  System.out.println("Main start");
  Scanner sc=new Scanner(System.in);
  System.out.println("Enter radius values");
  a=sc.nextFloat();
  System.out.println("Enter pie value");
  b=sc.nextFloat();
  try//custom exception
  {
    if(a<=0)
    {
      throw new Circle("invalid radius");
    }
    else
    {
      area=b*a*a;
      
    }
   
      
  }
  catch(Circle h)
  {
    System.out.println("Catch");
    System.out.println("Exception "+h.toString());
  }
  if(a<=0)
  {
  System.out.println("main ends");
  }
  else
  {
    System.out.println("Radius="+area);
  }
}  
}

