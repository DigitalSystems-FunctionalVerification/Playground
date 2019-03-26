package packet;
    class Packet;
        
    // Class members
    integer size;
    integer payload[];
    integer i;

    // Class constructor
    function new(integer size);
    begin
        this.size = size;
        payload = new[size];
        for (i = 0; i < this.size; i++) 
        begin
            payload[i] = $random;
        end
    end          
    endfunction

    // Function in class
    task print();
    begin
        $write("Payload: ");
        for (i = 0; i < this.size; i++) 
        begin
            $write("%x", payload[i]);
        end
        $write("\n");
    end
    endtask

    // return packet size
    function int getSize();
        return this.size;
    endfunction


endclass // Packet
endpackage