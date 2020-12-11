int result;

void setup(){
String[] Input = loadStrings("Input.txt");

for(int i = 0; i < Input.length; i++){
  result += int(Input[i]);
  }
println("Duplicate = " + result);
print("Time " + millis());
}
