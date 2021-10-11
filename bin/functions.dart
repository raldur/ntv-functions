import 'dart:io';
import 'dart:math' as math;

void main() {

  int shape;
  double area;
  List<int> params;

  print(
'''
What shape do you have?

  1. Rectangle
  2. Circle
  3. Triangle
  
'''
  );

  shape = int.parse(stdin.readLineSync());

  if(shape == 1) {

    params = getAnswers(['width', 'height']);
    area = calculateRectangleArea(params[0], params[1]).toDouble();

  } else if (shape == 2) {

    params = getAnswers(['radius']);
    area = calculateCircleArea(params[0]);

  } else if (shape == 3) {

    params = getAnswers(['width', 'height']);
    area = calculateTriangleArea(params[0], params[1]).toDouble();


  }

  print("The area is $area");

}

/// Query the user for the parameters
/// provided.
List<int> getAnswers(List<String> params) {
  List<int> providedAnswers = [];

  for(int i=0; i<params.length; i++) {
    print("Enter ${params[i]}:");
    providedAnswers.add(int.parse(stdin.readLineSync()));
  }

  return providedAnswers;
}


/// Calculate the area of a triangle
double calculateTriangleArea(int x, int y) {
  return (x*y) / 2;
}

/// Calculate the area of a circle
double calculateCircleArea(int radius) {
  return math.pi * math.pow(radius, 2);
}

/// Calculate the area of a rectangle
int calculateRectangleArea(int x, int y) {
  // Return the area of a rectangle
  return x * y;
}

