package UnmannedRobots;

    typedef struct {
        
        int     id;
        string  taskk;

    } Device_s;

    class Robot;
        
        // Class members
        string      name;
        int         typ;
        Device_s    devices[2];
        
        // Class constructor
        function new(string name, int typ);
        begin

            this.name       = name;
            this.typ        = typ;
            this.devices    = '{'{1, "task"}, '{2, "taskee"}};

        end          
        endfunction

        // Function in class
        function void display();
        begin
            $write("Robot name: %s \n"                          , this.name                         );
            $write("Robot type: %d \n"                          , this.typ                          );
            $write("Robot amount of devices: %d \n"             , $size(this.devices)               );
            foreach (this.devices[i]) $write("Device %d: %s \n" , devices[i].id, devices[i].taskk   );
            $display;            
        end
        endfunction

    endclass // Robot



endpackage
