`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2022 11:56:08 AM
// Design Name: 
// Module Name: reverser
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


module reverser
    #(parameter N = 3)(
    input logic [2**N - 1:0] x,
    input logic s,
    output logic [2**N - 1:0] out
    );
    
    logic [2**N - 1:0] reversed;
    
    //iterate through all the elments of the input and reverse them
    always_comb
    begin
        for (int i = 0; i < 2**N; i = i + 1)
        //start with LSB of input and put it 
        //in the MSB for reversed
            reversed[(2**N - 1) - i] = x[i];
    end
    
    //decide whether or not to output reversed input based on s input
    always_comb
    begin   
        if(s)   //if enabled output is reversed
            begin
                out = reversed;
            end
        else    //otherwise remains the same
            begin
                out = x;
            end
    end
endmodule
