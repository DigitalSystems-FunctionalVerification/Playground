`include "../SV/UnmannedRobots.sv"
program test;
    
    import UnmannedRobots::*;
    
    initial begin
        
        Device_s devices[] = '{ '{0, "Localization"}, 
                                '{1, "Motion"}};
        // Robot                   robot;
        UnmannedAerialVehicle   uav;
        UnmannedGroundVehicle   ugv;
        UnmannedMarineVehicle   umv;

        Robot robots[$];

        // robot = new("rbt1", devices);
        // robot.display();
        // robot.define_mission();

        uav = new("uav1", devices);
        uav.display();
        uav.define_mission();

        ugv = new("ugv1", devices);
        ugv.display();
        ugv.define_mission();

        umv = new("umv1", devices);
        umv.display();
        umv.define_mission();

        // robots.push_front(robot);
        
        robots.push_front(ugv);
        robots.push_front(umv);
        robots.push_front(uav);

        foreach (robots[i]) $write("Robot: %s Efficiency: %d\n", robots[i].name, robots[i].get_efficiency());
        $write("################################################################ After Reverse Sorting\n");
        $display();

        robots.rsort with (item.get_efficiency());

        foreach (robots[i]) $write("Robot: %s Efficiency: %d\n", robots[i].name, robots[i].get_efficiency());
        $write("################################################################\n");
        $display();

    end
    
endprogram