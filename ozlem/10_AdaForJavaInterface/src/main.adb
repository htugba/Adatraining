with Ada.Text_IO; use Ada.Text_IO;
with VehiclePackage; use VehiclePackage;

procedure Main is

   type Car is new ConcreteVehicles with null record;
   overriding
   function start(vehicleObj : Car) return String is
   begin
      return "Car is starting.";
   end start;

   type Tractor is new ConcreteVehicles with null record;
   overriding
   function start(vehicleObj : Tractor) return String is
   begin
      return "Tractor is starting.";
   end start;

   procedure testVehicle  (vehicleObj : ConcreteVehicles'Class) is
   begin
      Put("Testing Vehicle. ");
      Put_Line(start(vehicleObj));
   end testVehicle ;

   carObj : Car;
   tractorObj : Tractor;

begin
   testVehicle(carObj);
   testVehicle(tractorObj);

end Main;
