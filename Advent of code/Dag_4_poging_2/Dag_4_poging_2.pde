ArrayList<ArrayList<Boolean>> shifts = new ArrayList<ArrayList<Boolean>>();
ArrayList<Integer> Guard = new ArrayList<Integer>();
ArrayList<Integer> Calendar = new ArrayList<Integer>();
ArrayList<Integer> Sleep = new ArrayList<Integer>();
ArrayList<Integer> Wake = new ArrayList<Integer>();

int date;
void setup() {
  String[] Input = loadStrings ("Input.txt");


  for (int i = 0; i < Input.length /3; i++) {
    Guard.add(-1);
    Sleep.add(-1);
    Wake.add(-1);
  }

  for (int i =0; i < Input.length; i++) {
    
      date = int(Input[i].substring(6, 8)) * 100;
      date += int(Input[i].substring(9, 11));
      if (int(Input[i].substring(12, 14)) > 1) {
        date += 1;
      }
      Calendar.add(date);    
  }
  java.util.Collections.sort(Calendar);

  for (int i = 0; i < Input.length; i++) {
    date = int(Input[i].substring(6, 8)) * 100;
    date += int(Input[i].substring(9, 11));

    for (int q = 0; q < Calendar.size(); q++) {

      if (date == Calendar.get(q)) {
        if (Input[i].indexOf("#") != -1) {

          Guard.set(q, int(Input[i].substring(Input[i].indexOf("#") +1, Input[i].indexOf("b") -1)));
        }
        if (Input[i].indexOf("wakes up") != -1) {
          Wake.set(q, int(Input[i].substring(15, 17)));
        }
        if (Input[i].indexOf("falls asleep") != -1) {
          Sleep.set(q, int(Input[0].substring(15, 17)));
        }
      }
    }
  }
}






/*    if (Calendar.indexOf(date) == -1) {
 if (Calendar.length <1) {
 for (int q = Calendar.length; i >= 0; i--) {
 int compareDate;
 compareDate = Calendar.get(q);
 if (date > compareDate){
 
 Calendar.add(date);
 }
 }
 }
 } */
