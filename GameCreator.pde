String recentFilename = "index.txt";
String [] indexLines;
PImage background;

boolean start = false;

void setup () {
  indexLines = loadStrings(recentFilename);
  size(800, 600);
  for(int i = 0; i < indexLines.length; i++){
    println(indexLines[i]);
  }
}

void draw(){
  if(start){
    image(background, 0, 0);
  } else {
    readIndexBeforeStart();
  }
}

void readIndexBeforeStart(){
  for(int i = 0; i < indexLines.length; i++){
    command(indexLines[i]);
  }
}

void command(String text){
  String [] commandLine = split(text, ",");
  switch(commandLine[0]) {
    case "#b":
      background = loadImage(commandLine[1]);
    case "##Start":
      start = true;
      return;
    default:
  }
}
