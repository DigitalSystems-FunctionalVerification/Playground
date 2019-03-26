`include "../SV/packet.sv"
program test;
    
    import packet::*;
    
    Packet pkt;

    initial begin
        pkt = new(5);
        pkt.print();
        $display("Size of packet %0d", pkt.getSize());
    end
    
endprogram