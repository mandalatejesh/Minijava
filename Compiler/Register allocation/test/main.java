import syntaxtree.*;
import visitor.*;

public class main {
   public static void main(String [] args) {
      try {
         Node root = new MiniRAParser(System.in).Goal();
         root.accept(new GJDepthFirst(), null); // Your assignment part is invoked here.
         System.out.println(1);
      }
      catch (ParseException e) {
         System.err.println(e.toString());
         System.out.println(0);
      }
   }
} 

