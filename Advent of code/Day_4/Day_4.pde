ArrayList<ArrayList<Boolean>> shifts = new ArrayList<ArrayList<Boolean>>();
ArrayList<Integer> guard = new ArrayList<Integer>();
ArrayList<Integer> Calendar = new ArrayList<Integer>();
ArrayList<Integer> Sleep = new ArrayList<Integer>();
ArrayList<Integer> Wake = new ArrayList<Integer>();

int date;
void setup(){
    String[] Input = loadStrings ("Input.txt");
    
      date = int(Input[0].substring(6,8)) * 100;
      date = int(Input[0].substring(9,11));
      Calendar.add(date);
      if (Input[0].indexOf("falls asleep") != -1){
        Sleep.add(int(Input[0].substring(15,17)));
      } else {
        Sleep.add(-1);
      }
      if (Input[0].indexOf("#") != -1){
        guard.add(int(Input[0].substring(Input[0].indexOf("#") +1, Input[0].indexOf("b") -1)));
      } else {
        guard.add(-1);
      }
      if (Input[0].indexOf("wakes up") != -1){
        Wake.add(int(Input[0].substring(15,17)));
      } else {
        Wake.add(-1);
      }
      
      
    for (int i = 1; i < Input.length; i++){
      
      date = int(Input[i].substring(6,8)) * 100;
      date = int(Input[i].substring(9,11));
      Calendar.add(date);
      if (Input[i].indexOf("falls asleep") != -1){
        Sleep.add(int(Input[0].substring(15,17)));
      } else {
        Sleep.add(-1);
      }
      if (Input[i].indexOf("#") != -1){
        guard.add(int(Input[i].substring(Input[0].indexOf("#") +1, Input[i].indexOf("b") -1)));
      } else {
        guard.add(-1);
      }
      if (Input[i].indexOf("wakes up") != -1){
        Wake.add(int(Input[i].substring(15,17)));
      } else {
        Wake.add(-1);
      }
      
    }
    println("Time " + millis());
}
