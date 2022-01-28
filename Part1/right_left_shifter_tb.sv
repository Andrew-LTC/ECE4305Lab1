`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2022 04:41:22 PM
// Design Name: 
// Module Name: right_left_shifter_tb
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


module right_left_shifter_tb(

    );
    
    parameter N = 3;
    logic [2**N - 1:0] a;
    logic [2:0] amt;
    logic [2**N - 1:0] y0,y1;
    
    param_right_shifter uut0(
        .a(a),
        .amt(amt),
        .y(y0)
    );
    
    param_left_shifter uut1(
        .a(a),
        .amt(amt),
        .y(y1)
    );
    
    initial
    begin
        a = 8'b1101_0010;
        amt = 0;
        
        #10
        amt = 1;
        
        #10
        amt = 2;  
        
        #10
        amt = 3;
        
        #10
        amt = 4;
        
        #10
        amt = 5;
        
        #10
        amt = 6;
        
        #10
        amt = 7;
        
        #10
        $stop;
    end
    
endmodule
