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

public class allocation{ 
	   int spilled;String register;int flag;
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

   class regPool {
      List<String> av;
      regPool(){
         av = new ArrayList<String>();
      }
      public void put(String s){
         av.add(s);
      }
      public String fetch(){
         String s = av.get(0);
         av.remove(0);
         return s;
      }
   };
    
	int sallocated;
   int tallocated;
   int spilledallocated;
   Integer sCount;
   int maxArgs;
   HashMap < String,Integer> label; // label -> stmtNumber
   HashMap <Integer, Set<Integer> > nxt=new HashMap <Integer, Set<Integer> > (); // stores the index of child nodes
   HashMap <Integer, Set<Integer> > def=new HashMap <Integer, Set<Integer> > (); // definitions in a node
   HashMap <Integer, Set<Integer> > use=new HashMap <Integer, Set<Integer> > (); // uses in a node
   regPool registerpool;
   HashMap<Integer, allocation> mappings;
   List<liveness> globalLiveRange;
   List<liveness> activeIntervals;

   public class funcData{
      String funcName; 
      Integer argcalls;
      Integer spilled;
      Integer start;
      Integer end;
      HashMap<Integer, allocation> regallocation;
      HashMap<Integer, Set<Integer>> lvin;
      HashMap<Integer, Set<Integer>> lvout;
      HashMap<Integer,Integer> lvrStart;
      HashMap<Integer,Integer> lvrEnd;

      funcData(){
         funcName="";
         regallocation = new HashMap<Integer, allocation>();
         lvin = new HashMap<Integer, Set<Integer>> ();
         lvout = new HashMap<Integer, Set<Integer>> ();
         argcalls=spilled=start=end=0;
      }
   };   
   HashMap<String, funcData> globalRecord = new HashMap<String, funcData>();

   public R visit(NodeList n, A argu) {
      R _ret=null;
      int _count=0;
      for ( Enumeration<Node> e = n.elements(); e.hasMoreElements(); ) {
         e.nextElement().accept(this,argu);
         _count++;
      }
      return _ret;
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

    void spillatinterval(int i){ // standard spill at interval procedure
	 int j;
	 
	 liveness spill=activeIntervals.get(activeIntervals.size()-1);
	 if( spill.end>globalLiveRange.get(i).end){
		 	allocation temp=new allocation ();
		 	temp.spilled=spilledallocated++;
		 	temp.flag=-1;
		 	mappings.put(globalLiveRange.get(i).tempnumber,mappings.get(spill.tempnumber));
		 	mappings.put(spill.tempnumber, temp);
		 	activeIntervals.remove(spill);
		 	for(j=0;j<activeIntervals.size();j++){
		    	 if(activeIntervals.get(j).end>globalLiveRange.get(i).end)
		    		 break;
					 
		     }
			 activeIntervals.add(j,globalLiveRange.get(i));
		 	
		 	
	 }
	 else{
		 allocation temp=new allocation ();
		 	temp.spilled=spilledallocated++;
		 	temp.flag=-1;
		 	mappings.put(globalLiveRange.get(i).tempnumber,temp);
		 	
	 }
 }
 void expireoldintervals(int i){// standard expire old interval procedure
	 int j;
	 for(j=0;j<activeIntervals.size();j++){
		 if(activeIntervals.get(j).end>=globalLiveRange.get(i).st )
			 return;
		 registerpool.put(mappings.get(activeIntervals.get(j).tempnumber).register);
		 activeIntervals.remove(j);
		 j--;
	 }
 }


  public Integer linearScan(int size){ // linear scan algo
      Integer numspilled = 0;
      registerpool = new regPool();
      int i,j; int available = 18-sallocated;

      for(i=sallocated;i<8;i++){
         registerpool.put("s"+i);
      }
      for(i=0;i<10;i++){
         registerpool.put("t"+i);
      }
      activeIntervals = new ArrayList<liveness> ();
      for(i = 0;i<size;i++){
		 expireoldintervals(i);
         if(activeIntervals.size()==available){
            numspilled++;
            spillatinterval(i);
         }
         else{
            allocation temp = new allocation();
            temp.register = registerpool.fetch();
            temp.flag=1;
            mappings.put(globalLiveRange.get(i).tempnumber, temp); // temporary to register mapping
            for(j=0;j<activeIntervals.size();j++){
		    	 if(activeIntervals.get(j).end>globalLiveRange.get(i).end)
		    		 break;
					 
		     }
			 activeIntervals.add(j,globalLiveRange.get(i));
         }
      }

      return numspilled;

  }


   public void livenessAnalysis(String funcName){
      // have the use and def stored 
      // initialize in[] and out[] of each stmt node to Phi
      // in[] -> set of Integer, need a mapping from stmtNum :-> in[], same for out
      funcData fd = globalRecord.get(funcName);
      Integer blockStart = fd.start;
      Integer blockEnd = fd.end;
      Integer i;
      HashMap<Integer, Set<Integer>> fIn = new HashMap<Integer, Set<Integer>> ();
      HashMap<Integer, Set<Integer>> fOut = new HashMap<Integer, Set<Integer>> ();
      HashMap<Integer,Integer> liverangestart=new HashMap<Integer,Integer>(); // construct live ranges
      HashMap<Integer,Integer> liverangeend=new HashMap<Integer,Integer>();
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
            for(Integer s: nxt.get(i)){
               if(s!=null && s!=-1){ // ######
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
      fd.lvin = fIn; // live in variables in the procedure CFG
      fd.lvout = fOut; // live out variables in the procedure CFG

      for( i=blockStart;i<=blockEnd;i++){ // #####

    	  for(Integer j : def.get(i)){
  	  		if(!liverangestart.containsKey(j)){
  	  			liverangestart.put(j,i);
  	  			liverangeend.put(j,i);
  	  		}
  	  		else if(liverangeend.get(j)<i){
  	  			liverangeend.put(j, i);
  	  		}
    	  
    	  	for(Integer k : fIn.get(i)){
    	  		if(!liverangeend.containsKey(k)){
    	  				liverangeend.put(k,i);
    	  		}
    	  		else if(liverangeend.get(k)<i){
    	  			liverangeend.put(k,i);
            }
    	  	}
    	  } 	
      }
      fd.lvrStart = liverangestart;
      fd.lvrEnd = liverangeend;
   }

   void setNext(Integer stNum, Integer next){
      Set<Integer> scc = nxt.get(stNum);
      if(scc==null){
         scc = new HashSet<Integer>();
      }
      scc.add(next);
      nxt.put(stNum, scc);
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
      maxArgs=0;
      sCount = 0;
      label = (HashMap<String, Integer>) argu; // label info
      HashMap<Integer, allocation> localMappings = new HashMap<Integer, allocation> ();
      funcData fd = new funcData();
      fd.start = 1;
      String funcName = "MAIN";
      fd.funcName = funcName;
      Integer param=0;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      fd.argcalls = maxArgs;
      fd.end = sCount;
      globalRecord.put(funcName, fd);
      Set<Integer> t = nxt.get(sCount);
      t.remove(sCount+1);
      t.add(-1);
      livenessAnalysis(funcName);
      HashMap<Integer, Integer> lrstart = globalRecord.get(funcName).lvrStart;
      HashMap<Integer, Integer> lrend = globalRecord.get(funcName).lvrEnd;
      sallocated = 0;tallocated =0;spilledallocated=0;
      for(int i=0;i<param;i++){
         if(i<=3){
            allocation temp = new allocation();
            temp.register = "s"+sallocated++;
            temp.flag = 1;
            localMappings.put(i,temp);
         }
         else{
            allocation t2 = new allocation();
            t2.spilled = spilledallocated++;
            t2.flag = -1;
            localMappings.put(i,t2);
         }
         lrstart.remove(i);
         lrend.remove(i);
      }
    List<liveness> liverange=new ArrayList<liveness>();
    int m=0;
    for(Integer l : lrstart.keySet()){
    	liveness b=new liveness();
    	b.st=lrstart.get(l);
    	b.end=lrend.get(l);
    	b.tempnumber=l;
    	liverange.add(b);	
    }
    
    int size=lrstart.keySet().size();
    Collections.sort(liverange);
      mappings = localMappings;
      globalLiveRange = liverange;
      Integer spillCount = linearScan(size);  
      fd.regallocation = new HashMap<Integer, allocation> (localMappings);
      fd.spilled = spilledallocated;
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      return (R)globalRecord;
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
      maxArgs = 0;
      HashMap<Integer, allocation> localMappings = new HashMap<Integer, allocation> ();
      funcData fd = new funcData();
      sCount++;
      fd.start = sCount;

      setNext(sCount, sCount+1);
      Set<Integer> defSet = new HashSet<Integer> ();
      use.put(sCount, new HashSet<Integer>());
      def.put(sCount, defSet);

      String funcName = (String) n.f0.accept(this, argu);
      fd.funcName = funcName;
      n.f1.accept(this, argu);
      R p = n.f2.accept(this, argu);
      Integer param = Integer.valueOf((String)p);
      for(Integer i=0;i<param;i++){
         defSet.add(i);
      }
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      fd.argcalls = maxArgs;
      fd.end = sCount;
      globalRecord.put(funcName, fd);
      livenessAnalysis(funcName);
      HashMap<Integer, Integer> lrstart = fd.lvrStart;
      HashMap<Integer, Integer> lrend = fd.lvrEnd;

      sallocated = 0;tallocated =0;spilledallocated=0;
      for(int i=0;i<param;i++){
         if(i<=3){
            allocation temp = new allocation();
            temp.register = "s"+sallocated++;
            temp.flag = 1;
            localMappings.put(i,temp);
         }
         else{
            allocation t2 = new allocation();
            t2.spilled = spilledallocated++;
            t2.flag = -1;
            localMappings.put(i,t2);
         }
         lrstart.remove(i);
         lrend.remove(i);
      }
      spilledallocated += 8;

    List<liveness> liverange=new ArrayList<liveness>();
    for(Integer l : lrstart.keySet()){
    	liveness b=new liveness();
    	b.st=lrstart.get(l);
    	b.end=lrend.get(l);
    	b.tempnumber=l;
    	liverange.add(b);	
    }
    
    int size=lrstart.keySet().size();
    Collections.sort(liverange);
    mappings = localMappings;
    globalLiveRange = liverange;
    Integer spillCount = linearScan(size);  

    fd.regallocation = new HashMap<Integer, allocation> (localMappings);
    fd.spilled = spilledallocated;
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
      sCount++;
      use.put(sCount,new HashSet<Integer>());
      def.put(sCount,new HashSet<Integer>());
      n.f0.accept(this, (A) sCount);
      return _ret;
   }

   /**
    * f0 -> "NOOP"
    */
   public R visit(NoOpStmt n, A argu) {
      R _ret=null;
      setNext(sCount, sCount+1);
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "ERROR"
    */
   public R visit(ErrorStmt n, A argu) {
      R _ret=null;
      setNext(sCount, sCount+1);
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
      useSet.add(Integer.valueOf((String)u));
      String l = (String) n.f2.accept(this, argu);
      setNext(sCount, sCount+1);
      setNext(sCount, label.get(l));
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
      setNext(sCount, label.get((String)l));
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
      setNext(sCount, sCount+1);
      Set<Integer> useSet = use.get((Integer)argu);
      n.f0.accept(this, argu);
      R u1 = n.f1.accept(this, argu);
      useSet.add(Integer.valueOf((String)u1));
      n.f2.accept(this, argu);
      R u2 = n.f3.accept(this, argu);
      useSet.add(Integer.valueOf((String)u2));
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
      setNext(sCount, sCount+1);
      Set<Integer> useSet = use.get((Integer)argu);
      Set<Integer> defSet = def.get((Integer)argu);
      n.f0.accept(this, argu);
      R d = n.f1.accept(this, argu); // definition
      defSet.add(Integer.valueOf((String)d));
      R u = n.f2.accept(this, argu); // use
      useSet.add(Integer.valueOf((String)u));
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
      setNext(sCount, sCount+1);
      Set<Integer> defSet = def.get((Integer)argu);
      n.f0.accept(this, argu);
      R t1 = n.f1.accept(this, argu);
      defSet.add(Integer.valueOf((String)t1));
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "PRINT"
    * f1 -> SimpleExp()
    */
   public R visit(PrintStmt n, A argu) {
      R _ret=null;
      setNext(sCount, sCount+1);
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
      Set<Integer> useSet=new HashSet<Integer>();
      Set<Integer> defSet=new HashSet<Integer>();
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      sCount++;
      setNext(sCount, -1);
      use.put(sCount,useSet);
      def.put(sCount,defSet);
      argu = (A) sCount;
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
      spilledallocated+=10;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      LinkedList<R> l = (LinkedList<R>) n.f3.accept(this, argu);
      if(l==null)l = new LinkedList<R>();
      Set<Integer> useSet = use.get((Integer)argu);
      maxArgs = Math.max(l.size(), maxArgs);
      for(int i=0;i<l.size();i++){
         R elem = l.get(i);
         useSet.add(Integer.valueOf((String)elem));
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
      useSet.add(Integer.valueOf(t));
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
         useSet.add(Integer.valueOf((String)_ret));
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
