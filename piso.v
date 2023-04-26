`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 10:14:48 PM
// Design Name: 
// Module Name: piso
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


module piso(clk,pin,sout,load);
        
        input [3:0]pin;
        input clk,load;
        output reg sout;
        
        reg [3:0]temp = 0;
        
        always @(posedge clk)
        begin
            if(load)
            temp<=pin;
            else
            begin
                sout<=temp[3];
                temp<={temp[2:0],1'b0};
            end
       end
endmodule

