//
// Generated by JTB 1.3.2
//

package visitor;
import syntaxtree.*;
import java.util.*;

/**
 * Provides default methods which visit each node in the tree in depth-first
 * order.  Your visitors may extend this class.
 */
public class GJDepthFirst<R,A> implements GJVisitor<R,A> {
   //
   // Auto class visitors--probably don't need to be overridden.

public class allocation{ // #####
	   int spilled;String register;int flag;
   };
int spilltobereported=0; // for comment at the end of procedures

public class tobepassed{
	   int spilltobereported;
	   HashMap<String,Integer> maxargcall;
	   HashMap<String,Integer> maxnumcall;
	   HashMap<String,HashMap<Integer, allocation> > registerallocation;
	   HashMap<String,Integer> spillallocatedforfunc;
	};
    public class liveness implements Comparator<liveness>,Comparable<liveness> { // #####
		int st,end,tempnumber;
		public int compare(liveness d, liveness d1){
		      if(d.st==d1.st) 
		    	  if(d.end<d1.end)
		    		 return -1;
		    	  else if (d.end==d1.end)
		    		  return 0;
		    	  else
		    		  return 1;
		      if(d.st<d1.st)
		    	  		return -1;
		      else
		    	  		return 1;
		   }
		public int compareTo(liveness d1){
			if(st==d1.st) 
		    	  if(end<d1.end)
		    		 return -1;
		    	  else if (end==d1.end)
		    		  return 0;
		    	  else
		    		  return 1;
		      if(st<d1.st)
		    	  		return -1;
		      else
		    	  		return 1;
		}
	}; 
    
	int sallocated=0,tallocated=0, spilledallocated=0;
   Integer stmtcount;
   HashMap<String,Integer> maxargcall=new HashMap<String,Integer>();
   int maxargcalltemp;
   HashMap<String,Integer> maxnumcall=new HashMap<String,Integer>();
   int maxnumcalltemp;
   HashMap<String,HashMap<Integer, allocation> > registerallocation=new HashMap<String,HashMap<Integer, allocation> >();
   HashMap<String,Integer> spillallocatedforfunc=new HashMap<String,Integer>();
   HashMap < String,Integer> label;
   HashMap <Integer, Set<Integer> > succ=new HashMap <Integer, Set<Integer> > (); // stores the index of child nodes
   HashMap <Integer, Set<Integer> > def=new HashMap <Integer, Set<Integer> > (); // definitions in a node
   HashMap <Integer, Set<Integer> > use=new HashMap <Integer, Set<Integer> > (); // uses in a node
   HashMap <String,HashMap<Integer, Set<Integer> > > livein= new HashMap <String,HashMap<Integer, Set<Integer> > >();
   HashMap <String,HashMap<Integer, Set<Integer> > > liveout= new HashMap <String,HashMap<Integer, Set<Integer> > >();
   public R visit(NodeList n, A argu) {
      R _ret=null;
      int _count=0;
      for ( Enumeration<Node> e = n.elements(); e.hasMoreElements(); ) {
         e.nextElement().accept(this,argu);
         _count++;
      }
      return _ret;
   }

   public class intervalNode{
     HashMap<Integer,Integer> lrstart;
      HashMap<Integer,Integer> lrend;
   }

   public R visit(NodeListOptional n, A argu) {
       if ( n.present() ) {
         R _ret=null;
         int _count=0;
         LinkedList<R> l = new LinkedList<R>();
         for ( Enumeration<Node> e = n.elements(); e.hasMoreElements(); ) {
            l.add(e.nextElement().accept(this,argu));
            _count++;
         }
         return (R) l;
      }
      else
         return null;
   }

   public R visit(NodeOptional n, A argu) {
      if ( n.present() )
         return n.node.accept(this,argu);
      else
         return null;
   }

   public R visit(NodeSequence n, A argu) {
      R _ret=null;
      int _count=0;
      for ( Enumeration<Node> e = n.elements(); e.hasMoreElements(); ) {
         e.nextElement().accept(this,argu);
         _count++;
      }
      return _ret;
   }

   public R visit(NodeToken n, A argu) { return (R) n.tokenImage; }

   //
   // User-generated visitor methods below
   //

    void spillatinterval(List<liveness> liverange,int i,List<liveness> active,HashMap<Integer, allocation> mappings,List<String> registerpool){ // standard spill at interval procedure
	 int j;
	 
	 liveness spill=active.get(active.size()-1);
	 if( spill.end>liverange.get(i).end){
		 	allocation temp=new allocation ();
		 	temp.spilled=spilledallocated++;
		 	temp.flag=-1;
		 	mappings.put(liverange.get(i).tempnumber,mappings.get(spill.tempnumber));
		 	mappings.put(spill.tempnumber, temp);
		 	active.remove(spill);
		 	for(j=0;j<active.size();j++){
		    	 if(active.get(j).end>liverange.get(i).end)
		    		 break;
					 
		     }
			 active.add(j,liverange.get(i));
		 	
		 	
	 }
	 else{
		 allocation temp=new allocation ();
		 	temp.spilled=spilledallocated++;
		 	temp.flag=-1;
		 	mappings.put(liverange.get(i).tempnumber,temp);
		 	
	 }
 }
 void expireoldintervals(List<liveness> liverange,int i,List<liveness> active,HashMap<Integer, allocation> mappings,List<String> registerpool){// standard expire old interval procedure
	 int j;
	 for(j=0;j<active.size();j++){
		 if(active.get(j).end>=liverange.get(i).st )
			 return;
		 registerpool.add(mappings.get(active.get(j).tempnumber).register);
		 active.remove(j);
		 j--;
	 }
 }


  public Integer linearScan(List<liveness> liverange, int size, HashMap<Integer, allocation> mappings){ // linear scan algo
      Integer numspilled = 0;
      List<String> registerpool = new ArrayList<String> ();
      int i,j; int Rnum = 18-sallocated;

      for(i=sallocated;i<8;i++){
         registerpool.add("s"+i);
      }
      for(i=0;i<10;i++){
         registerpool.add("t"+i);
      }
      List<liveness> active = new ArrayList<liveness> ();
      for(i = 0;i<size;i++){
		 expireoldintervals(liverange,i,active,mappings,registerpool);
         if(active.size()==Rnum){
            numspilled++;
            spillatinterval(liverange,i,active,mappings,registerpool);
         }
         else{
            allocation temp = new allocation();
            temp.register = registerpool.get(0);
            registerpool.remove(0);
            temp.flag=1;
            mappings.put(liverange.get(i).tempnumber, temp); // temporary to register mapping
            for(j=0;j<active.size();j++){
		    	 if(active.get(j).end>liverange.get(i).end)
		    		 break;
					 
		     }
			 active.add(j,liverange.get(i));
         }
      }

      return numspilled;

  }


   public intervalNode livenessAnalysis(String funcName, Integer blockStart, Integer blockEnd){
      // have the use and def stored 
      // initialize in[] and out[] of each stmt node to Phi
      // in[] -> set of Integer, need a mapping from stmtNum :-> in[], same for out
      Integer i;
      HashMap<Integer, Set<Integer>> fIn = new HashMap<Integer, Set<Integer>> ();
      HashMap<Integer, Set<Integer>> fOut = new HashMap<Integer, Set<Integer>> ();
      for(i=blockStart;i<=blockEnd;i++){
         fIn.put(i,new HashSet<Integer>());
         fOut.put(i,new HashSet<Integer>());
      }// initialized in an out of every stmt node to null
      boolean possible = true;
      while(possible){
         possible = false;
         for(i=blockStart;i<=blockEnd;i++){
            Set<Integer> in = fIn.get(i);
            Set<Integer> out = fOut.get(i);
            Set<Integer> inP = new HashSet<Integer>(in); // copy of in
            Set<Integer> outP = new HashSet<Integer>(out); // copy of out
            Set<Integer> inNew = new HashSet<Integer>(out);
            Set<Integer> outNew = new HashSet<Integer>();
            inNew.removeAll(def.get(i));
            inNew.addAll(use.get(i)); // in[i] <- use[i] U (out[i] - def[i])
            for(Integer s: succ.get(i)){
               if(s!=-1){
                  outNew.addAll(fIn.get(s)); // out[i] <- U in[s] for all successors of s
               }
            }
            // new in and new out computed
            // for all nodes inP=inNew and outP=outNew then terminate the outer while loop
            if(inP.equals(inNew) && outP.equals(outNew))
               continue;
            else {
               fIn.put(i, inNew);
               fOut.put(i,outNew);
               possible = true;
            }
         }
      }
      livein.put(funcName, fIn); // live in variables in the procedure CFG
      liveout.put(funcName, fOut); // live out variables in the procedure CFG

      HashMap<Integer,Integer> liverangestart=new HashMap<Integer,Integer>(); // construct live ranges
      HashMap<Integer,Integer> liverangeend=new HashMap<Integer,Integer>();
      for( i=blockStart;i<=blockEnd;i++){ // #####
    	  
    	  Set<Integer> st1=def.get(i);
    	  for(Integer j : st1){
  	  		if(!liverangestart.containsKey(j)){
  	  			liverangestart.put(j,i);
  	  			liverangeend.put(j,i);
  	  		}
  	  		else
  	  			if(liverangeend.get(j)<i){
  	  				liverangeend.put(j, i);
  	  		}
    	  
    	  	for(Integer k : fIn.get(i)){
    	  			if(!liverangeend.containsKey(k)){
    	  					liverangeend.put(k,i);
    	  			}
    	  			else
    	  				if(liverangeend.get(k)<i)
    	  					liverangeend.put(k,i);
    	  	}
    	  } 	
      }
      intervalNode ii = new intervalNode();
      ii.lrstart = liverangestart;
      ii.lrend = liverangeend;
      return ii;
   }
   /**
    * f0 -> "MAIN"
    * f1 -> StmtList()
    * f2 -> "END"
    * f3 -> ( Procedure() )*
    * f4 -> <EOF>
    */
   public R visit(Goal n, A argu) {
      R _ret=null;
      maxargcalltemp=0;
      maxnumcalltemp=0;
      stmtcount = 0;
      label = (HashMap<String, Integer>) argu; // label info
      HashMap<Integer, allocation> mappings = new HashMap<Integer, allocation> ();
      Integer blockStart = 1;
      String funcName = "MAIN";
      Integer param=0;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      maxargcall.put(funcName, maxargcalltemp);
      maxnumcall.put(funcName, maxnumcalltemp);
      Integer blockEnd = stmtcount;
      Set<Integer> t = succ.get(stmtcount);
      t.remove(stmtcount+1);
      t.add(-1);
      intervalNode ii = livenessAnalysis(funcName, blockStart, blockEnd);
      HashMap<Integer, Integer> lrstart = ii.lrstart;
      HashMap<Integer, Integer> lrend = ii.lrend;
      sallocated = 0;tallocated =0;spilledallocated=0;
      for(int i=0;i<param;i++){
         if(i<=3){
            allocation temp = new allocation();
            temp.register = "s"+sallocated++;
            temp.flag = 1;
            mappings.put(i,temp);
         }
         else{
            allocation t2 = new allocation();
            t2.spilled = spilledallocated++;
            t2.flag = -1;
            mappings.put(i,t2);
         }
         lrstart.remove(i);
         lrend.remove(i);
      }
      Set<Integer> alltempnumbers=lrstart.keySet();
    List<liveness> liverange=new ArrayList<liveness>();
    int m=0;
    for(Integer l : alltempnumbers){
    	liveness b=new liveness();
    	b.st=lrstart.get(l);
    	b.end=lrend.get(l);
    	b.tempnumber=l;
    	liverange.add(b);	
    }
    
    int size=alltempnumbers.size();
    Collections.sort(liverange);

    spilltobereported+= linearScan(liverange,size,mappings);  
    registerallocation.put(funcName, mappings);
    spillallocatedforfunc.put(funcName, spilledallocated);


      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
       tobepassed pass=new tobepassed();
      pass.spilltobereported=spilltobereported;
      pass.maxargcall=maxargcall;
      pass.maxnumcall=maxnumcall;
      pass.registerallocation=registerallocation;
      pass.spillallocatedforfunc=spillallocatedforfunc;

      return (R)pass;
   }

   /**
    * f0 -> ( ( Label() )? Stmt() )*
    */
   public R visit(StmtList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Label()
    * f1 -> "["
    * f2 -> IntegerLiteral()
    * f3 -> "]"
    * f4 -> StmtExp()
    */
   public R visit(Procedure n, A argu) { // ###
      R _ret=null;
      maxargcalltemp = 0;
      maxnumcalltemp = 0;
      HashMap<Integer, allocation> mappings = new HashMap<Integer, allocation> ();
      Integer blockStart = ++stmtcount;

      Set<Integer> t = new HashSet<Integer>();
      t.add(stmtcount+1);
      succ.put(stmtcount, t);
      Set<Integer> defSet = new HashSet<Integer> ();
      use.put(stmtcount, new HashSet<Integer>());
      def.put(stmtcount, defSet);

      String funcName = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      R p = n.f2.accept(this, argu);
      Integer param = Integer.parseInt((String)p);
      for(Integer i=0;i<param;i++){
         defSet.add(i);
      }
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      maxargcall.put(funcName, maxargcalltemp);
      maxnumcall.put(funcName, maxnumcalltemp);
      Integer blockEnd = stmtcount;
      intervalNode ii = livenessAnalysis(funcName, blockStart, blockEnd);
      HashMap<Integer, Integer> lrstart = ii.lrstart;
      HashMap<Integer, Integer> lrend = ii.lrend;

      sallocated = 0;tallocated =0;spilledallocated=0;
      for(int i=0;i<param;i++){
         if(i<=3){
            allocation temp = new allocation();
            temp.register = "s"+sallocated++;
            temp.flag = 1;
            mappings.put(i,temp);
         }
         else{
            allocation t2 = new allocation();
            t2.spilled = spilledallocated++;
            t2.flag = -1;
            mappings.put(i,t2);
         }
         lrstart.remove(i);
         lrend.remove(i);
      }
      spilledallocated += 18;

    Set<Integer> alltempnumbers=lrstart.keySet();
    List<liveness> liverange=new ArrayList<liveness>();
    int m=0;
    for(Integer l : alltempnumbers){
    	liveness b=new liveness();
    	b.st=lrstart.get(l);
    	b.end=lrend.get(l);
    	b.tempnumber=l;
    	liverange.add(b);	
    }
    
    int size=alltempnumbers.size();
    Collections.sort(liverange);

    spilltobereported+= linearScan(liverange,size,mappings);  
    registerallocation.put(funcName, mappings);
    spillallocatedforfunc.put(funcName, spilledallocated);

      return _ret;
   }

   /**
    * f0 -> NoOpStmt()
    *       | ErrorStmt()
    *       | CJumpStmt()
    *       | JumpStmt()
    *       | HStoreStmt()
    *       | HLoadStmt()
    *       | MoveStmt()
    *       | PrintStmt()
    */
   public R visit(Stmt n, A argu) {
      R _ret=null;
      stmtcount++;
      use.put(stmtcount,new HashSet<Integer>());
      def.put(stmtcount,new HashSet<Integer>());
      n.f0.accept(this, (A) stmtcount);
      return _ret;
   }

   /**
    * f0 -> "NOOP"
    */
   public R visit(NoOpStmt n, A argu) {
      R _ret=null;
      Set<Integer> t = new HashSet<Integer> ();
      t.add(stmtcount+1);
      succ.put(stmtcount, t); // next instruction is the only child
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "ERROR"
    */
   public R visit(ErrorStmt n, A argu) {
      R _ret=null;
      Set<Integer> t = new HashSet<Integer> ();
      t.add(stmtcount+1);
      succ.put(stmtcount, t); // next instruction is the only child
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "CJUMP"
    * f1 -> Temp()
    * f2 -> Label()
    */
   public R visit(CJumpStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      Set<Integer> useSet = use.get((Integer)argu);
      R u = n.f1.accept(this, argu);
      useSet.add(Integer.parseInt((String)u));
      String l = (String) n.f2.accept(this, argu);
      Set<Integer> t = new HashSet<Integer> ();
      t.add(stmtcount+1);
      t.add(label.get(l));
      succ.put(stmtcount, t); // may go to the instr that follows or to the label
      return _ret;
   }

   /**
    * f0 -> "JUMP"
    * f1 -> Label()
    */
   public R visit(JumpStmt n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      R l = n.f1.accept(this, argu);
      Set<Integer> t = new HashSet<Integer> ();
      t.add(label.get((String)l));
      succ.put(stmtcount, t); // label is the next instruction
      return _ret;
   }

   /**
    * f0 -> "HSTORE"
    * f1 -> Temp()
    * f2 -> IntegerLiteral()
    * f3 -> Temp()
    */
   public R visit(HStoreStmt n, A argu) {
      R _ret=null;
      Set<Integer> t = new HashSet<Integer> ();
      t.add(stmtcount+1);
      succ.put(stmtcount, t); // next instruction is the only child
      Set<Integer> useSet = use.get((Integer)argu);
      n.f0.accept(this, argu);
      R u1 = n.f1.accept(this, argu);
      useSet.add(Integer.parseInt((String)u1));
      n.f2.accept(this, argu);
      R u2 = n.f3.accept(this, argu);
      useSet.add(Integer.parseInt((String)u2));
      return _ret;
   }

   /**
    * f0 -> "HLOAD"
    * f1 -> Temp()
    * f2 -> Temp()
    * f3 -> IntegerLiteral()
    */
   public R visit(HLoadStmt n, A argu) {
      R _ret=null;
      Set<Integer> t = new HashSet<Integer> ();
      t.add(stmtcount+1);
      succ.put(stmtcount, t); // next instruction is the only child
      Set<Integer> useSet = use.get((Integer)argu);
      Set<Integer> defSet = def.get((Integer)argu);
      n.f0.accept(this, argu);
      R d = n.f1.accept(this, argu); // definition
      defSet.add(Integer.parseInt((String)d));
      R u = n.f2.accept(this, argu); // use
      useSet.add(Integer.parseInt((String)u));
      n.f3.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "MOVE"
    * f1 -> Temp()
    * f2 -> Exp()
    */
   public R visit(MoveStmt n, A argu) {
      R _ret=null;
      Set<Integer> t = new HashSet<Integer> ();
      t.add(stmtcount+1);
      succ.put(stmtcount, t); // next instruction is the only child
      Set<Integer> defSet = def.get((Integer)argu);
      n.f0.accept(this, argu);
      R t1 = n.f1.accept(this, argu);
      defSet.add(Integer.parseInt((String)t1));
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "PRINT"
    * f1 -> SimpleExp()
    */
   public R visit(PrintStmt n, A argu) {
      R _ret=null;
      Set<Integer> t = new HashSet<Integer> ();
      t.add(stmtcount+1);
      succ.put(stmtcount, t); // next instruction is the only child
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Call()
    *       | HAllocate()
    *       | BinOp()
    *       | SimpleExp()
    */
   public R visit(Exp n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "BEGIN"
    * f1 -> StmtList()
    * f2 -> "RETURN"
    * f3 -> SimpleExp()
    * f4 -> "END"
    */
   public R visit(StmtExp n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      stmtcount++;
      Set<Integer> t = new HashSet<Integer>();
      t.add(-1);
      succ.put(stmtcount, t); // this is the last node, no next node
      Set<Integer> useSet=new HashSet<Integer>();
      Set<Integer> defSet=new HashSet<Integer>();
      use.put(stmtcount,useSet);
      def.put(stmtcount,defSet);
      argu = (A) stmtcount;
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "CALL"
    * f1 -> SimpleExp()
    * f2 -> "("
    * f3 -> ( Temp() )*
    * f4 -> ")"
    */
   public R visit(Call n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      LinkedList<R> l = (LinkedList<R>) n.f3.accept(this, argu);
      Set<Integer> useSet = use.get((Integer)argu);
      maxnumcalltemp++; // ##
      if(l != null){
         maxargcalltemp = Math.max(l.size(), maxargcalltemp);
         Iterator<R> it = l.iterator();
         while(it.hasNext()){
            useSet.add(Integer.parseInt((String)it.next()));
         }
      }
      n.f4.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "HALLOCATE"
    * f1 -> SimpleExp()
    */
   public R visit(HAllocate n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Operator()
    * f1 -> Temp()
    * f2 -> SimpleExp()
    */
   public R visit(BinOp n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String t = (String) n.f1.accept(this, argu);
      Set<Integer> useSet = use.get((Integer)argu);
      useSet.add(Integer.parseInt(t));
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "LE"
    *       | "NE"
    *       | "PLUS"
    *       | "MINUS"
    *       | "TIMES"
    *       | "DIV"
    */
   public R visit(Operator n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Temp()
    *       | IntegerLiteral()
    *       | Label()
    */
   public R visit(SimpleExp n, A argu) {
      R _ret=null;
      _ret = n.f0.accept(this, argu);
      if(n.f0.which==0){
         Set<Integer> useSet = use.get((Integer) argu);
         useSet.add(Integer.parseInt((String)_ret));
      }
      return _ret;
   }

   /**
    * f0 -> "TEMP"
    * f1 -> IntegerLiteral()
    */
   public R visit(Temp n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      _ret = n.f1.accept(this, argu); // return the index of the temporary
      return _ret;
   }

   /**
    * f0 -> <INTEGER_LITERAL>
    */
   public R visit(IntegerLiteral n, A argu) {
      R _ret=null;
      _ret = n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <IDENTIFIER>
    */
   public R visit(Label n, A argu) {
      R _ret=null;
      _ret = n.f0.accept(this, argu);
      return _ret;
   }

}
