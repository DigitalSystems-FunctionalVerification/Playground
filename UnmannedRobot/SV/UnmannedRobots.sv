package UnmannedRobots;

    typedef struct {
        
        int     id;
        string  taskk;

    } Device_s;

    virtual class Robot;
        
        // Class members
        string      name;
        Device_s    devices[];  // Dynamic array declaration
        string      mission;

        int  efficiency = 1;
        
        // Class constructor
        function new(string name = "", Device_s devices[] = '{}, string mission = "exist");
        begin

            this.name       = name;
            this.devices    = devices;
            this.mission    = mission;

        end          
        endfunction

        function int get_efficiency();
        begin
            return this.efficiency;
        end
        endfunction;

        // Function in class
        function void display();
        begin
            $write("################################################################\n");
            $write("Robot name: %s \n"                          , this.name                                 );        
            $write("Robot amount of devices: %d \n"             , $size(this.devices)                       );
            foreach (this.devices[i]) $write("Device %d: %s \n" , this.devices[i].id, this.devices[i].taskk );
            $write("My efficiency is: %d \n"                    , this.efficiency);
            $display;            
        end
        endfunction

        function void define_mission();
        begin
            $write("Robot: %s \n", this.name);
            $write("My mission is to %s.\n", this.mission);
            $write("################################################################\n");
            $display;
        end
        endfunction

    endclass // Robot

    class UnmannedAerialVehicle extends Robot;        

        function new(string name, Device_s devices[] = '{}, string mission = "fly through the skies");
        begin
            super.new(name, devices, mission);
            this.efficiency = 2;
        end
        endfunction

        function void display();
        begin
            super.display();
        end
        endfunction

    endclass

    class UnmannedGroundVehicle extends Robot;        

        function new(string name, Device_s devices[] = '{}, string mission = "explore the ground surface");
        begin
            super.new(name, devices, mission);
            this.efficiency = 3;
        end
        endfunction

        function void display();
        begin
            super.display();
        end
        endfunction

    endclass


    class UnmannedMarineVehicle extends Robot;        

        function new(string name, Device_s devices[] = '{}, string mission = "navigate through the oceans");
        begin
            super.new(name, devices, mission);
            this.efficiency = 4;
        end
        endfunction

        function void display();
        begin
            super.display();
        end
        endfunction

    endclass


endpackage