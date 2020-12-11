int box2 = 0;
int box3 = 0;
ArrayList<Character> checkedLetters = new ArrayList<Character>();
ArrayList<Integer> amount = new ArrayList<Integer>();

void setup() {
  String[] Input = loadStrings("Input.txt");

  for (int i = 0; i < Input.length; i++) {
    for (int q = 0; q < Input[i].length(); q++) {

      if (checkedLetters.indexOf(Input[i].charAt(q)) != -1) {
        for (int w = 0; w < Input[i].length(); w++) {
          if (q != w) {           
            if (Input[i].charAt(q) == Input[i].charAt(w)) {
              amount.set(checkedLetters.indexOf(Input[i].charAt(w)), amount.get(checkedLetters.indexOf(Input[i].charAt(w))) + 1);
            }
          }
        }
      }
      amount.add(1);
      checkedLetters.add(Input[i].charAt(q));
    }
    if (amount.contains(2)) {
      box2++;
    }
    if (amount.contains(3)) {
      box3++;
    }
    checkedLetters.clear();
    amount.clear();
  }

  println("result = " + box2 * box3);
  print("Time " + millis());
}
