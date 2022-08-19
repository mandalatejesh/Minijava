import syntaxtree.*;
import visitor.*;

public class A5 {
   public static void main(String [] args) {
      try {
         Node root = new MiniRAParser(System.in).Goal();
         //System.out.println("Program parsed successfully");
         root.accept(new GJDepthFirst(), null); // Your assignment part is invoked here.
        // Object temp2=root.accept(new GJDepthFirst2(),tempno);
       //  root.accept(new GJDepthFirst3(),temp2);
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 

