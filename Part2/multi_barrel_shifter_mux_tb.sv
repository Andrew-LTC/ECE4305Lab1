`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2022 11:05:35 AM
// Design Name: 
// Module Name: multi_barrel_shifter_mux_tb
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


module multi_barrel_shifter_mux_tb(

    );
    parameter N = 3;
    logic [2**N - 1:0] A;
    logic [2:0] AMT;
    logic s;
    logic [2**N - 1:0] Y ;
    
    multi_barrel_shifter_mux uut (
        .A(A),
        .AMT(AMT),
        .s(s),
        .Y(Y)
    );
    
    initial
    begin
        A = 8'b1101_0010;
        s = 1'b0;
        AMT = 0;
        
        #10
        AMT = 1;
        
        #10
        AMT = 2;  
        
        #10
        AMT = 3;
        
        #10
        AMT = 4;
        
        #10
        AMT = 5;
        
        #10
        AMT = 6;
        
        #10
        AMT = 7;
        
        #10
        s = 1'b1;
        AMT = 0;
        
        #10
        AMT = 1;
        
        #10
        AMT = 2;  
        
        #10
        AMT = 3;
        
        #10
        AMT = 4;
        
        #10
        AMT = 5;
        
        #10
        AMT = 6;
        
        #10
        AMT = 7;
        
        #10
        $stop;
    end
    
endmodule
