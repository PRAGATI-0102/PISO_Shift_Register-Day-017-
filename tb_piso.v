`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 10:19:01 PM
// Design Name: 
// Module Name: tb_piso
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module piso_tb;

        reg clk,load;
        reg  [3:0] pin;
        wire  sout;

        piso dut(.clk(clk), .pin(pin), .sout(sout), .load(load));

        initial
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        initial
        begin
            $monitor("pin = %b, sout = %b, load = %b",pin,sout,load);
        end

        initial
        begin
            clk = 0;
            pin = 4'b1010;
            load = 1'b1;
            #10;
            load = 1'b0;
            #50;
            load = 1'b1;
            pin = 4'b0101;
            #10;
            load = 1'b0;
        end

endmodule 
