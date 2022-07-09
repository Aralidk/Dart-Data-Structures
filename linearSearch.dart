//start with first index to search then compare to next
int linearSearch<T extends Comparable>(List<T> stack, T value){
 for(var i=0; i<stack.length; i++){
   if(stack[i]==value)return i;
 }
  return -1;
}
void main() {
	print(linearSearch([25,12,50,70,90,30],30));
}
