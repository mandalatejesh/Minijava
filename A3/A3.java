import syntaxtree.*;
import visitor.*;

public class A3 {
   public static void main(String [] args) {
      try {
         Node root = new MiniJavaParser(System.in).Goal();
         root.accept(new GJDepthFirstSecondPass(), root.accept(new GJDepthFirst(), null)); // Your assignment part is invoked here.
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 

