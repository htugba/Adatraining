package VehiclePackage is

   type Vehicle is interface;
   
   function start(vehicleObj : Vehicle) return String is abstract;  --interface function must be abstract
   
   type ConcreteVehicles is abstract new Vehicle with null record;
     
end VehiclePackage;
