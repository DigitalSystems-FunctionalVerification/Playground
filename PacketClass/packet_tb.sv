`include "packet.sv"
module Packet_TB;

    //clock and reset signal declaration
    bit clk;
    bit reset;

    //clock generation
    always #5 clk = ~clk;

    //reset Generation
    initial begin
    reset       =   1;
    #5 reset    =   0;
    end

endmodule