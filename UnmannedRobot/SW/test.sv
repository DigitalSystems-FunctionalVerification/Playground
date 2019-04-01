`include "../SV/UnmannedRobots.sv"
program test;
    
    import UnmannedRobots::*;
    
    initial begin
        Robot robot;
        Device_s devices[] = '{ '{0, "Localization"}, 
                                '{1, "Motion"}};
        UnmannedAerialVehicle uav;

        robot = new("robot1", devices);
        robot.display();
        robot.define_mission();
        uav = new("uav1", devices);
        uav.define_mission();
    end
    
endprogram