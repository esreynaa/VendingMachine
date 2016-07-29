`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:11:19 07/28/2016
// Design Name:   Coin_Mach_A1
// Module Name:   C:/Users/Ed/Documents/UTSA/UTSA_classes_Summer_2016/homework/Assignment_4/Problem_A/Coin_machine_A/Coin_Mach_A1_tb.v
// Project Name:  Coin_machine_A
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Coin_Mach_A1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Coin_Mach_A1_tb;

	// Inputs
	reg coin_5;
	reg coin_10;
	reg coin_25;
	reg CLK;

	// Outputs
	//wire slow_clk;
	wire Disp_W;
	wire Disp_Wo;
	//wire [1:0]state, Nstate;
	//wire [2:0] dep;
	//wire [5:0] dep_val;
	//wire [5:0] balance;
	// Instantiate the Unit Under Test (UUT)
	Coin_Mach_A1 uut (
		.coin_5(coin_5), 
		.coin_10(coin_10), 
		.coin_25(coin_25), 
		.CLK(CLK),
	   .Disp_W(Disp_W), 
		.Disp_Wo(Disp_Wo)
	);

	initial begin
		// Initialize Inputs
		coin_5 = 0;
		coin_10 = 1;
		coin_25 = 0;
		CLK = 0;
				
		// Wait 100 ns for global reset to finish
		CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
	   CLK = 1; #10; CLK = 0; #10;		
      CLK = 1; #10; CLK = 0; #10;
		//coin_5 = 0;                  
		coin_10 = 0;
		//coin_25 = 0;
		CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
	   CLK = 1; #10; CLK = 0; #10;		
      CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;		
      CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;	
      CLK = 1; #10; CLK = 0; #10;
		//coin_5 = 0;
		//coin_10 = 0;
		coin_25 = 1;
		CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
	   CLK = 1; #10; CLK = 0; #10;
      CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
	   CLK = 1; #10; CLK = 0; #10;		
      CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
	   CLK = 1; #10; CLK = 0; #10;		
      CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
	   CLK = 1; #10; CLK = 0; #10;		
      coin_25 = 0;
		CLK = 1; #10; CLK = 0; #10;
	   CLK = 1; #10; CLK = 0; #10;		
      CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
	   CLK = 1; #10; CLK = 0; #10;		
      CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
	   CLK = 1; #10; CLK = 0; #10;		
      CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
		CLK = 1; #10; CLK = 0; #10;
	   CLK = 1; #10; CLK = 0; #10;		
      CLK = 1; #10; CLK = 0; #10;
		
end		
		// Add stimulus here

	
	
//always begin forever #10 CLK = ~CLK; end
      
endmodule

