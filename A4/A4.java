import syntaxtree.*;
import visitor.*;

public class A4 {
   public static void main(String [] args) {
      try {
         Node root = new microIRParser(System.in).Goal();
         //System.out.println("Program parsed successfully");
         root.accept(new GJDepthFirstSecondPass(), root.accept(new GJDepthFirst(), root.accept(new GJNoArguDepthFirst()))); // Your assignment part is invoked here.
        // Object temp2=root.accept(new GJDepthFirst2(),tempno);
       //  root.accept(new GJDepthFirst3(),temp2);
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 

