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
public class GJDepthFirstCheckPass<R,A> extends GJDepthFirst<R,A> {
   //
   // Auto class visitors--probably don't need to be overridden.
   //
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
         for ( Enumeration<Node> e = n.elements(); e.hasMoreElements(); ) {
            e.nextElement().accept(this,argu);
            _count++;
         }
         return _ret;
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
     

   public void typeError(){
      System.out.println("Type error");
      System.exit(0);
   }

   public String findType(String id, Table a){
    if(a==null){
       typeError();
    }
    if(a.var.get(id)!=null)
        return a.var.get(id);
    if(a.level == 2){
       Table classTable = symbolTable.get(a.parent);
       if(classTable == null || classTable.methodParam == null){
          typeError();
       }
       return findType(id, classTable.methodParam.get(a.name));
    }
    else{
       return findType(id, symbolTable.get(a.parent));
    }
    }

   public void compare(LinkedList<R> instance, LinkedList<R> record){
      int i;
      int sz=record.size();
      boolean flag;
      if(instance==null){
        if(sz!=1){
           
        typeError();
        }
      }
      if(sz!=instance.size()+1){
        
        typeError();
        }
      for(i=1;i<sz;i++){
        flag = false;
        String a = (String) record.get(i);
        String b = (String) instance.get(i-1);
        if(a.equals(b)){ // same type
           continue;
        }
        Table x=symbolTable.get(b);
        while(x!=null){ // check if a is a parent of b
            if(a.equals(x.parent)){
               flag = true;
               break;
            }
            x=symbolTable.get(x.parent);
         }
         if(!flag){ // if not then error
            typeError();
         }
      }
   }

   public String findRet(Table symTable, String a,LinkedList<R> instance){
    if(symTable==null){
        typeError();
    }
   
    if(symTable.signature.get(a)==null){
        if(symTable.parent==null){
             typeError();
        }
        return findRet(symbolTable.get(symTable.parent), a, instance);
      }
      // signature found, comparing with params
       LinkedList<R> record =symTable.signature.get(a);
       if(instance==null && record.size()==1){
           return (String) record.get(0);
       }
       compare(instance, record);
      return (String)record.get(0);
    }

   public void checkOverloading(String mName, LinkedList<R> sign, Table argu){
      // it is ensured that there is no circular inheritance
      int sz;
      int i;
      if(argu==null || argu.parent==null){
         return;
      }
      Table x = symbolTable.get(argu.parent);
      LinkedList<R> bSign = x.signature.get(mName);
      if(bSign==null){
         checkOverloading(mName, sign, x);
      }
      else if(bSign.size()!=sign.size()){
         typeError();
      }
      else{
         sz = bSign.size();
         i = 0;
         while(i<sz){
            if(!(((String) bSign.get(i)).equals((String) sign.get(i)))){
               typeError();
            }
            i++;
         }
      }
   }
   /**
    * f0 -> MainClass()
    * f1 -> ( TypeDeclaration() )*
    * f2 -> <EOF>
    */
   public R visit(Goal n, A argu) {
      R _ret=null;
      symbolTable = (HashMap<String, Table>) argu;
      argu = (A) null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      System.out.println("Program type checked successfully");
      return _ret;
   }

   /**
    * f0 -> "class"
    * f1 -> Identifier()
    * f2 -> "{"
    * f3 -> "public"
    * f4 -> "static"
    * f5 -> "void"
    * f6 -> "main"
    * f7 -> "("
    * f8 -> "String"
    * f9 -> "["
    * f10 -> "]"
    * f11 -> Identifier()
    * f12 -> ")"
    * f13 -> "{"
    * f14 -> PrintStatement()
    * f15 -> "}"
    * f16 -> "}"
    */
   public R visit(MainClass n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String className = (String) n.f1.accept(this, argu);
      Table cTable = symbolTable.get(className);
      argu = (A)((cTable).methodBody.get((String)"main"));
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      n.f5.accept(this, argu);
      n.f6.accept(this, argu);
      n.f7.accept(this, argu);
      n.f8.accept(this, argu);
      n.f9.accept(this, argu);
      n.f10.accept(this, argu);
      n.f11.accept(this, argu);
      n.f12.accept(this, argu);
      n.f13.accept(this, argu);
      n.f14.accept(this, argu);
      n.f15.accept(this, argu);
      n.f16.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ClassDeclaration()
    *       | ClassExtendsDeclaration()
    */
   public R visit(TypeDeclaration n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "class"
    * f1 -> Identifier()
    * f2 -> "{"
    * f3 -> ( VarDeclaration() )*
    * f4 -> ( MethodDeclaration() )*
    * f5 -> "}"
    */
   public R visit(ClassDeclaration n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String className = (String) n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      argu = (A) symbolTable.get(className);
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      n.f5.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "class"
    * f1 -> Identifier()
    * f2 -> "extends"
    * f3 -> Identifier()
    * f4 -> "{"
    * f5 -> ( VarDeclaration() )*
    * f6 -> ( MethodDeclaration() )*
    * f7 -> "}"
    */
   public R visit(ClassExtendsDeclaration n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String className = (String) n.f1.accept(this, argu);
      argu = (A)symbolTable.get(className);
      if(symbolTable.get(((Table)argu).parent)==null){ // base class does not exist
         
         
         typeError();
      }
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      n.f5.accept(this, argu);
      n.f6.accept(this, argu);
      n.f7.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Type()
    * f1 -> Identifier()
    * f2 -> ";"
    */
   public R visit(VarDeclaration n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> AccessType()
    * f1 -> Type()
    * f2 -> Identifier()
    * f3 -> "("
    * f4 -> ( FormalParameterList() )?
    * f5 -> ")"
    * f6 -> "{"
    * f7 -> ( VarDeclaration() )*
    * f8 -> ( Statement() )*
    * f9 -> "return"
    * f10 -> Expression()
    * f11 -> ";"
    * f12 -> "}"
    */
   public R visit(MethodDeclaration n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String mName = (String) n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      n.f5.accept(this, argu);
      n.f6.accept(this, argu);
      LinkedList<R> sign = ((Table)argu).signature.get(mName);
      checkOverloading(mName, sign, (Table)argu);
      argu = (A) ((Table)argu).methodBody.get(mName);
      n.f7.accept(this, argu);
      n.f8.accept(this, argu);
      n.f9.accept(this, argu);
      n.f10.accept(this, argu);
      n.f11.accept(this, argu);
      n.f12.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> FormalParameter()
    * f1 -> ( FormalParameterRest() )*
    */
   public R visit(FormalParameterList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Type()
    * f1 -> Identifier()
    */
   public R visit(FormalParameter n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ","
    * f1 -> FormalParameter()
    */
   public R visit(FormalParameterRest n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ArrayType()
    *       | BooleanType()
    *       | IntegerType()
    *       | Identifier()
    */
   public R visit(Type n, A argu) {
      String _ret = (String) n.f0.accept(this, argu);
      if(n.f0.which==3){
         Set<String> classNames = symbolTable.keySet();
         for(String s: classNames){
            if(_ret.equals(s)){
               return (R) _ret;
            }
         }
         
         
         typeError();
      }
      return (R) _ret;
   }

   /**
    * f0 -> PublicType()
    *       | PrivateType()
    *       | ProtectedType()
    */
   public R visit(AccessType n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

  /**
    * f0 -> "int"
    * f1 -> "["
    * f2 -> "]"
    */
   public R visit(ArrayType n, A argu) {
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      String _ret = (String) "int[]";
      return (R) _ret;
   }

   /**
    * f0 -> "boolean"
    */
   public R visit(BooleanType n, A argu) {
      n.f0.accept(this, argu);
      String _ret=(String) "boolean";
      return (R) _ret;
   }

   /**
    * f0 -> "int"
    */
   public R visit(IntegerType n, A argu) {
      n.f0.accept(this, argu);
      String _ret = (String) "int";
      return (R) _ret;
   }

   /**
    * f0 -> "public"
    */
   public R visit(PublicType n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "private"
    */
   public R visit(PrivateType n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "protected"
    */
   public R visit(ProtectedType n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Block()
    *       | AssignmentStatement()
    *       | ArrayAssignmentStatement()
    *       | IfStatement()
    *       | WhileStatement()
    *       | PrintStatement()
    */
   public R visit(Statement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "{"
    * f1 -> ( Statement() )*
    * f2 -> "}"
    */
   public R visit(Block n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Identifier()
    * f1 -> "="
    * f2 -> Expression()
    * f3 -> ";"
    */
   public R visit(AssignmentStatement n, A argu) {
      R _ret=null;
      String id = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String e = (String) n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      String a = (String) findType(id,(Table)argu);
      String b = (String) e;
      if(a.equals(b)){ // same type
         return _ret;
      }
      Table x=symbolTable.get(b);
      while(x!=null){ // check if a is a parent of b
          if(a.equals(x.parent)){
             return _ret;
          }
          x=symbolTable.get(x.parent);
       }
      typeError();
      return _ret;
   }

   /**
    * f0 -> Identifier()
    * f1 -> "["
    * f2 -> Expression()
    * f3 -> "]"
    * f4 -> "="
    * f5 -> Expression()
    * f6 -> ";"
    */
   public R visit(ArrayAssignmentStatement n, A argu) {
      R _ret=null;
      String id = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String e1 = (String) n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      String e2 = (String) n.f5.accept(this, argu);
      n.f6.accept(this, argu);
      String s = findType(id,(Table)argu);
      if(!(findType(id,(Table)argu).equals("int[]") && e1.equals("int") && e2.equals("int"))){
        
        
        typeError();
        }
      return _ret;
   }

   /**
    * f0 -> IfthenElseStatement()
    *       | IfthenStatement()
    */
   public R visit(IfStatement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "if"
    * f1 -> "("
    * f2 -> Expression()
    * f3 -> ")"
    * f4 -> Statement()
    */
   public R visit(IfthenStatement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String e1 = (String) n.f2.accept(this, argu);
      if(!e1.equals("boolean")){
         
         
         typeError();
      }
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "if"
    * f1 -> "("
    * f2 -> Expression()
    * f3 -> ")"
    * f4 -> Statement()
    * f5 -> "else"
    * f6 -> Statement()
    */
   public R visit(IfthenElseStatement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String e1 = (String) n.f2.accept(this, argu);
      if(!e1.equals("boolean")){
         
         
         typeError();
      }
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      n.f5.accept(this, argu);
      n.f6.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "while"
    * f1 -> "("
    * f2 -> Expression()
    * f3 -> ")"
    * f4 -> Statement()
    */
   public R visit(WhileStatement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String e1 = (String) n.f2.accept(this, argu);
      if(!e1.equals("boolean")){
         
         
         typeError();
      }
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> "
    * f1 -> "("
    * f2 -> Expression()
    * f3 -> ")"
    * f4 -> ";"
    */
   public R visit(PrintStatement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String e1 = (String) n.f2.accept(this, argu);
      if(!e1.equals("int")){
         
         
         typeError();
      }
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> OrExpression()-
    *       | AndExpression()-
    *       | CompareExpression()-
    *       | neqExpression()-
    *       | PlusExpression()-
    *       | MinusExpression()-
    *       | TimesExpression()-
    *       | DivExpression()-
    *       | ArrayLookup()-
    *       | ArrayLength()-
    *       | MessageSend()
    *       | TernaryExpression()
    *       | PrimaryExpression()
    */
   public R visit(Expression n, A argu) {
      R _ret=null;
      _ret = n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "&&"
    * f2 -> PrimaryExpression()
    */
   public R visit(AndExpression n, A argu) {
      /* assume corresponding table is received as argu */
      R _ret=null;
      String p1 = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String p2 = (String) n.f2.accept(this, argu);
      if(!(p1.equals("boolean") && p2.equals("boolean"))){
         
         
         typeError();
      }
      return (R) "boolean";
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "||"
    * f2 -> PrimaryExpression()
    */
   public R visit(OrExpression n, A argu) {
       R _ret=null;
      String p1 = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String p2 = (String) n.f2.accept(this, argu);
      if(!(p1.equals("boolean") && p2.equals("boolean"))){
         
         
         typeError();
      }
      return (R) "boolean";
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "<="
    * f2 -> PrimaryExpression()
    */
   public R visit(CompareExpression n, A argu) {
       R _ret=null;
      String p1 = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String p2 = (String) n.f2.accept(this, argu);
      if(!(p1.equals("int") && p2.equals("int"))){
         typeError();
      }
      return (R) "boolean";
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "!="
    * f2 -> PrimaryExpression()
    */
   public R visit(neqExpression n, A argu) {
       R _ret=null;
      String p1 = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String p2 = (String) n.f2.accept(this, argu);
      if(!(p1.equals("int") && p2.equals("int"))){
         typeError();
      }
      return (R) "boolean";
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "+"
    * f2 -> PrimaryExpression()
    */
   public R visit(PlusExpression n, A argu) {
      R _ret=null;
      String p1 = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String p2 = (String) n.f2.accept(this, argu);
      if(!(p1.equals("int") && p2.equals("int"))){
         
         
         typeError();
      }
      return (R) "int";
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "-"
    * f2 -> PrimaryExpression()
    */
   public R visit(MinusExpression n, A argu) {
      R _ret=null;
      String p1 = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String p2 = (String) n.f2.accept(this, argu);
      if(!(p1.equals("int") && p2.equals("int"))){
         typeError();
      }
      return (R) "int";
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "*"
    * f2 -> PrimaryExpression()
    */
   public R visit(TimesExpression n, A argu) {
     R _ret=null;
      String p1 = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String p2 = (String) n.f2.accept(this, argu);
      if(!(p1.equals("int") && p2.equals("int"))){
         typeError();
      }
      return (R) "int";
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "/"
    * f2 -> PrimaryExpression()
    */
   public R visit(DivExpression n, A argu) {
      R _ret=null;
      String p1 = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String p2 = (String) n.f2.accept(this, argu);
      if(!(p1.equals("int") && p2.equals("int"))){ 
         typeError();
      }
      return (R) "int";
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "["
    * f2 -> PrimaryExpression()
    * f3 -> "]"
    */
   public R visit(ArrayLookup n, A argu) {
      R _ret=null;
      String p1 = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String p2 = (String) n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      if(!(p1.equals("int[]") && p2.equals("int"))){
         typeError();
      }
      return (R) "int";
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "."
    * f2 -> "length"
    */
   public R visit(ArrayLength n, A argu) {
      R _ret=null;
      String p1 = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String p2 = (String) n.f2.accept(this, argu);
      if(!(p1.equals("int[]"))){
         typeError();
      }
      return (R) "int";
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "."
    * f2 -> Identifier()
    * f3 -> "("
    * f4 -> ( ExpressionList() )?
    * f5 -> ")"
    */
   public R visit(MessageSend n, A argu) {
      R _ret=null;
      Table classTable;
      Table mTable;
      String cName = (String) n.f0.accept(this, argu);
      classTable = (Table) symbolTable.get(cName);
      if(classTable==null){
         typeError();
      }
      n.f1.accept(this, argu);
      String mName = (String) n.f2.accept(this, argu);
      mTable = classTable.methodBody.get(mName);
      if(mTable == null){
         typeError();
      }
      String access = mTable.accessType;
      if(access.equals("private")){
         String curClass = (String) ((Table)argu).parent;
         if(!curClass.equals(cName)){ // paremt of method is not same as calling class
            typeError();
         }
      }
      else if(access.equals("protected")){
         String curClass = (String) ((Table)argu).parent;
         String parentClass = (symbolTable.get(curClass)).parent;
         if(!(curClass.equals(cName) || parentClass.equals(cName))){
         typeError();
         }
      }
      n.f3.accept(this, argu);
      LinkedList<R> params = (LinkedList<R>)n.f4.accept(this, argu);
      n.f5.accept(this, argu);
      return (R) findRet( symbolTable.get(cName), mName, params);
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> "?"
    * f2 -> PrimaryExpression()
    * f3 -> ":"
    * f4 -> PrimaryExpression()
    */
   public R visit(TernaryExpression n, A argu) {
      R _ret=null;
      boolean valid = false;
      String t0 = (String) n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      String t1 = (String) n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      String t2 = (String) n.f4.accept(this, argu);

      if(!t0.equals("boolean")){
         typeError();
      }

      if(t1.equals(t2)){
         return (R) t1;
      }

      LinkedList<String> trace = new LinkedList<String>();
      Table x=symbolTable.get(t1);
      if(x!=null)trace.add(t1);
      while(x!=null){
          trace.add(x.parent);
          x=symbolTable.get(x.parent);
      }
      Table y=symbolTable.get(t2);
      if(trace.contains(t2)){
         return (R) t2;
      }
      while(y!=null){
         if(trace.contains(y.parent)){
            _ret = (R) y.parent;
            return _ret;
         }
         y=symbolTable.get(y.parent);
      }
         typeError();
         return (R) null;
   }

   /**
    * f0 -> Expression()
    * f1 -> ( ExpressionRest() )*
    */
   public R visit(ExpressionList n, A argu) {
      R _ret=null;
      R expr = n.f0.accept(this, argu);
      R lst = n.f1.accept(this, argu);
      if(lst==null){
         lst = (R) new LinkedList<R>(); 
      }
      if(expr!=null){
         ((LinkedList<R>)lst).addFirst(expr);
      }
      return (R) lst;
   }

   /**
    * f0 -> ","
    * f1 -> Expression()
    */
   public R visit(ExpressionRest n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      _ret = n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> IntegerLiteral()
    *       | TrueLiteral()
    *       | FalseLiteral()
    *       | Identifier()
    *       | ThisExpression()
    *       | ArrayAllocationExpression()
    *       | AllocationExpression()
    *       | NotExpression()
    *       | BracketExpression()
    */
   public R visit(PrimaryExpression n, A argu) {
      String _ret = (String) n.f0.accept(this, argu);
      if(n.f0.which==3){
         return (R) findType(_ret, (Table)argu);
      }
      return (R)_ret;
   }

   /**
    * f0 -> <INTEGER_LITERAL>
    */
   public R visit(IntegerLiteral n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return (R) "int";
   }

   /**
    * f0 -> "true"
    */
   public R visit(TrueLiteral n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return (R) "boolean";
   }

   /**
    * f0 -> "false"
    */
   public R visit(FalseLiteral n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return (R) "boolean";
   }

   /**
    * f0 -> <IDENTIFIER>
    */
   public R visit(Identifier n, A argu) {
      // identifier could be class identifier
      // or a variable 
      String id = (String) n.f0.accept(this, argu);
      return (R) id;
   }

   /**
    * f0 -> "this"
    */
   public R visit(ThisExpression n, A argu) {
      R _ret=null;
      // #doit have to return the corresponding method or class
      n.f0.accept(this, argu);
      if(argu!=null){
         return (R) ((Table)argu).parent;
      }
      
      typeError();
      return (R) null;
   }

   /**
    * f0 -> "new"
    * f1 -> "int"
    * f2 -> "["
    * f3 -> Expression()
    * f4 -> "]"
    */
   public R visit(ArrayAllocationExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      String type = (String) n.f3.accept(this, argu);
      if(!(type.equals("int"))){
         typeError();
      }
      n.f4.accept(this, argu);
      return (R) "int[]";
   }

   /**
    * f0 -> "new"
    * f1 -> Identifier()
    * f2 -> "("
    * f3 -> ")"
    */
   public R visit(AllocationExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String id = (String) n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      if(symbolTable.get(id)==null){
         typeError();
      }
      return (R) id;
   }

   /**
    * f0 -> "!"
    * f1 -> Expression()
    */
   public R visit(NotExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String type = (String) n.f1.accept(this, argu);
      if(!type.equals("boolean")){
         typeError();
      }
      return (R) "boolean";
   }

   /**
    * f0 -> "("
    * f1 -> Expression()
    * f2 -> ")"
    */
   public R visit(BracketExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String type = (String) n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return (R) type;
   }

   /**
    * f0 -> Identifier()
    * f1 -> ( IdentifierRest() )*
    */
   
   public R visit(IdentifierList n, A argu) {
      R _ret=null;

      String f = (String) n.f0.accept(this, argu);
      LinkedList<R> lst = (LinkedList<R>) n.f1.accept(this, argu);
      lst.addFirst((R) f);
      return  (R) lst;
   }

   /**
    * f0 -> ","
    * f1 -> Identifier()
    */
   public R visit(IdentifierRest n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      String id = (String) n.f1.accept(this, argu);
      return (R) id;
   }

}
