package UnmannedRobots;

    typedef struct {
        
        int     id;
        string  taskk;

    } Device_s;

    class Robot;
        
        // Class members
        string      name;
        Device_s    devices[];  // Dynamic array declaration
        string      mission;
        
        // Class constructor
        function new(string name = "", Device_s devices[] = '{}, string mission = "exist");
        begin

            this.name       = name;
            this.devices    = devices;
            this.mission    = mission;

        end          
        endfunction

        // Function in class
        function void display();
        begin
            $write("Robot name: %s \n"                          , this.name                                 );        
            $write("Robot amount of devices: %d \n"             , $size(this.devices)                       );
            foreach (this.devices[i]) $write("Device %d: %s \n" , this.devices[i].id, this.devices[i].taskk );
            $display;            
        end
        endfunction

        function void define_mission();
        begin
            $write("Robot: %s \n", this.name);
            $write("My mission is to %s.\n", this.mission);
            $display;
        end
        endfunction

    endclass // Robot

    class UnmannedAerialVehicle extends Robot;

        

        function new(string name, Device_s devices[] = '{}, string mission = "fly");
        begin
            super.new(name, devices, mission);
        end
        endfunction

    endclass



endpackage
