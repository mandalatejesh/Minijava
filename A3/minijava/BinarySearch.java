class BinarySearch{
    public static void main(String[] a){
	System.out.println(new BS().Compare(0,1));
    }
}
// This class contains an array of integers and
// methods to initialize, print and search the array
// using Binary Search

class BS{
    int[] number ;
    int size ;
    
    // This method compares two integers and
    // returns true if they are equal and false
    // otherwise
    public boolean Compare(int num1 , int num2){
	boolean retval ;
	int aux02 ;

	retval = false ;
	// aux02 = num2 + 1 ;
	// if (num1 <= (num2-1)) retval = false ;
	// else if (!(num1 <= (aux02-1))) retval = false ;
	// else retval = true ;
	return retval ;
    }

}