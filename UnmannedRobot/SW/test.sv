`include "../SV/UnmannedRobots.sv"
program test;
    
    import UnmannedRobots::*;
    
    Robot robot;

    initial begin
        robot = new("robot1", 1);
        robot.display();
    end
    
endprogram