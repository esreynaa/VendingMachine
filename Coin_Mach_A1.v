`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:42:45 07/28/2016 
// Design Name: 
// Module Name:    Coin_Mach_A1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Coin_Mach_A1(
    input coin_5,
    input coin_10,
    input coin_25,
    input CLK,
	 output reg Disp_W,
    output reg Disp_Wo
    );
	
	reg slow_clk;     // 1Hz clock cycle
	reg [6:0] count;  // counter for slow_clock
	
	wire [2:0] dep;    // deposit 
	reg [5:0] dep_val; // deposit value 0'b110010 50
	reg [1:0] state, Nstate;
	reg [5:0] balance;
	
	assign dep = {coin_25,coin_10,coin_5};
	initial begin
	     count = 7'h0000000; // starts counter at zero
	     slow_clk = 0;      // sets button clk state
	     Disp_W = 0;
		  Disp_Wo = 0;
	     dep_val = 6'b000000;
		  balance = 6'b000000;
	     state = 2'b00;
		end
	
	// Slows the CLK to 1 clock cycle per second
	always @(CLK)begin
	     if (count <= 7'h0000002) begin //count>=0'h19BFCC0
	         count <= count + 1;
			 end
		  else begin
	         count <= 7'h0000000;
	         slow_clk <= ~slow_clk; 
	       end
	end   
// sets the deposited coin value
	always@(dep)begin
	   case (dep)   
	       3'b000: dep_val <= 6'b000000; // zero coins deposited 
	       3'b001: dep_val <= 6'b000101;// 5 cents deposited
	       3'b010: dep_val <= 6'b001010;// 10 cents deposited 
	       3'b100: dep_val <= 6'b011001;// 25 cents deposited   
	       default: begin dep_val <= 6'b000000;        end
	     endcase
	end

	always @ (posedge slow_clk) begin
	     state <= Nstate;
	end  

	always @(state) begin
	     case (state)
	       2'b00: begin if (dep_val==6'b000000)
	                      begin Nstate <= 2'b01; end  
	                    else begin Nstate <= 2'b01; end
	                    Nstate <= 2'b01;
							  Disp_W <= 0; 
	                    Disp_Wo <= 0;
	              end
			 2'b01: begin balance <= balance + dep_val;
	                    Nstate <= 2'b10;
                 end
	       2'b10: begin if (balance < 6'b011110)// bal less than 30 cents 
	                      begin    Nstate <= 2'b00; end
	                    else begin Nstate <= 2'b11; end 
	              end
	       2'b11: begin balance <= balance - 6'b011110;
	                    if (balance ==6'b011110) begin 
	                      Disp_W <= 0;
	                      Disp_Wo <= 1;     end
	                    else begin 
	                      Disp_W <= 1;
	                      Disp_Wo <= 0;     end
	                    Nstate <= 2'b00;
	              end
	       default: begin Nstate <= 2'b00; end 
	     endcase
	end     
	
	endmodule



























