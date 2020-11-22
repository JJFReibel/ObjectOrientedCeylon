/*
MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
class Car(wheels, doors, cylinders) {
    shared variable Integer wheels;
    shared variable Integer doors;
    shared variable Integer cylinders;

    shared void addWheels(Integer wheelsIn) {
        this.wheels += wheelsIn;
    }
    shared void addDoors(Integer doorsIn) {
        this.doors += doorsIn;
    }
    shared void addCylinders(Integer cylindersIn) {
        this.cylinders += cylindersIn;
    }
    shared void deleteWheels(Integer wheelsIn) {
        this.wheels -= wheelsIn;
    }
    shared void deleteDoors(Integer doorsIn) {
        this.doors -= doorsIn;
    }
    shared void deleteCylinders(Integer cylindersIn) {
        this.cylinders -= cylindersIn;
    }
    shared void printParts() {
        print("Wheel check: " + this.wheels.string);
        print("Door check: " + this.doors.string);
        print("Cylinder check: " + this.cylinders.string);
        print("\n");
    }
}

print("Creating car.");
Car subaru = Car(4, 4, 4);
subaru.printParts();
print("Adding wheel directly to car object.");
subaru.wheels = 5;
subaru.printParts();
print("Removing wheel using object method.");
subaru.deleteWheels(1);
subaru.printParts();

