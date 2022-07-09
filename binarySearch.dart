// expected value are compared to mid value then list is diveded to half for continue to search

int binarySearch<T extends Comparable>(List<T> stack, T needle){
  var min = 0;
  var max = stack.length;
  while(min<max){
    var mid = min + ((max- min)>>1);
    var comparison = stack[mid].compareTo(needle);
    if (comparison == 0)return mid;
    if(comparison <0){
      min= mid +1;
    }else{
      max = mid;
    }
  }
  return -1;
}
void main() {
	print(binarySearch([25,12,50,70,90,30],50));
}
