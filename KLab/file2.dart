class Product{
  String name;
  int price;

Product(this.name,this.price);
String toString()
{
  return'{Name:${this.name}, Price:${this.price}}';
}
}

void main (){
  var list=[];
  var List2=[];
  var List3=[];
  int sum1 = 0,sum2 =0;
  var sortedByValueMap;
Map item =
{
  'Bike':100, 
  'TV':200,
  'Album':10,
  'Book':5, 
  'Phone':500, 
  'Computer':1000
};
item.forEach((key, value) => list.add(Product(key, value)));
print('Given Product:$list');
sortedByValueMap=Map.fromEntries(item.entries.toList()..sort((e1,e2)=> e1.value.compareTo(e2.value)));
print("Sorted item:$sortedByValueMap");
sortedByValueMap.forEach((key,value)=>List2.add(value));
print('the product cheap is :${sortedByValueMap.keys.toList().first}');
print('the Expensive product  is :${sortedByValueMap.keys.toList().last}');
for ( int i in List2){
  sum1 +=i;
  if ( i > 10 )
  {
   List3.add(i);
  }
};
print('Sum of total price of product is:$sum1');
for( int j in List3){
  sum2 +=j;
};
print('The total price of product after removing the ones less than 10 :$sum2');
}