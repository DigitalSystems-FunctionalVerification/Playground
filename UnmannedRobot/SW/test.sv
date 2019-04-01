`include "../SV/UnmannedRobots.sv"
program test;
    
    import UnmannedRobots::*;
    
    initial begin
        
        Device_s devices[] = '{ '{0, "Localization"}, 
                                '{1, "Motion"}};
        Robot                   robot;
        UnmannedAerialVehicle   uav;
        UnmannedGroundVehicle   ugv;
        UnmannedMarineVehicle   umv;

        robot = new("robot1", devices);
        // robot.display();
        robot.define_mission();

        uav = new("uav1", devices);
        uav.define_mission();

        ugv = new("ugv1", devices);
        ugv.define_mission();

        umv = new("umv1", devices);
        umv.define_mission();


    end
    
endprogram