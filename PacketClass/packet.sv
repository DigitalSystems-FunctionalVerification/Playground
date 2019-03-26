program class_t;
    
    class packet;
        
        // Class members
        integer size;
        integer payload[];
        integer i;

        // Class constructor
        function new(integer size);
            begin
                this.size = size;
                payload = new[size];
                for (i = 0; i < this.size; i++) begin
                    payload[i] = $random;
                end
            end          
        endfunction

        // Function in class
        task print();
        begin
            $write("Payload: ");
            for (i = 0; i < size; i ++) 
            begin
                $write("%x", payload[i]);
            end
            $write("\n");
        end
        endtask

    endclass //packet

    packet pkt;

    initial begin
        pkt = new(5);
        pkt.print();
        // $$display("Size of packet %0d");
    end
    
endprogram