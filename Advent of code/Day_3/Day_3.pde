ArrayList<Integer> Space;
int startLoc, kommaLoc, startSize, xLoc;
int x, y;
int w, h;
int overlap;
void setup() {
  String[] Input = loadStrings ("Input.txt");

  Space = new ArrayList<Integer>();
  for (int i = 0; i <= 1210000; i++){
    Space.add(0);
  }

  for (int s = 0; s < Input.length; s++) {
    startLoc = Input[s].indexOf("@") + 1;
    kommaLoc = Input[s].indexOf(",");
    startSize = Input[s].indexOf(":");
    xLoc = Input[s].indexOf("x");

    x = int(Input[s].substring(startLoc + 1, kommaLoc));
    y = int(Input[s].substring(kommaLoc + 1, startSize));
    w = int(Input[s].substring(startSize + 2, xLoc));
    h = int(Input[s].substring(xLoc + 1));



    for (int i = 0; i < h; i++) {
      for (int q = 0; q < w; q++) {
        int localY = i * 1100 + y * 1100 + 1100;
        int localX = q + x + 1;
        Space.set(localY + localX, Space.get(localY + localX) + 1);
      }
    }
  }
  for (int i = Space.size(); i > 0; i--){
    if (Space.get(i-1) > 1){
      overlap += 1;
    }
  }
  println("Duplicate = " + overlap);
  print("Time " + millis());
}
