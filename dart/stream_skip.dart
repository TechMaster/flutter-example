// asynchronous data 
main() async {
  Duration interval = Duration(seconds: 1);
  Stream<int> stream = Stream<int>.periodic(interval,transform);
  stream = stream.skip(2);
  stream = stream.take(5);
  
  

  await for(int i in stream){
      print(i);
   }
}
int transform(int x){
  return (x + 1) * 2;
}