`timescale 1ns / 1ps
/*      
	
	Name: Preet Bhuptani.
	Roll No.: 201501013.
*/

module Inverse(out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,
					out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24);

//Declaring Outputs...
output reg [63:0]out0;
output reg [63:0]out1;
output reg [63:0]out2;
output reg [63:0]out3;
output reg [63:0]out4;
output reg [63:0]out5;
output reg [63:0]out6;
output reg [63:0]out7;
output reg [63:0]out8;
output reg [63:0]out9;
output reg [63:0]out10;
output reg [63:0]out11;
output reg [63:0]out12;
output reg [63:0]out13;
output reg [63:0]out14;
output reg [63:0]out15;
output reg [63:0]out16;
output reg [63:0]out17;
output reg [63:0]out18;
output reg [63:0]out19;
output reg [63:0]out20;
output reg [63:0]out21;
output reg [63:0]out22;
output reg [63:0]out23;
output reg [63:0]out24;

real mat[0:4][0:9];
real k;


/*
Input Matrix :
			       1  0  0  0  0    	
			       3  1  0  0  0  
			       5  9  1  0  0   	
			       9  16 15 6  0  
			       11 18 19 3  1    	
					 
*/



initial 
begin
//Assigning Values to Matrix...
mat[0][0] = 1.0;
mat[0][1] = 0.0;
mat[0][2] = 0.0;
mat[0][3] = 0.0;
mat[0][4] = 0.0;
mat[0][5] = 1.0;
mat[0][6] = 0.0;
mat[0][7] = 0.0;
mat[0][8] = 0.0;
mat[0][9] = 0.0;

mat[1][0] = 3.0;
mat[1][1] = 1.0;
mat[1][2] = 0.0;
mat[1][3] = 0.0;
mat[1][4] = 0.0;
mat[1][5] = 0.0;
mat[1][6] = 1.0;
mat[1][7] = 0.0;
mat[1][8] = 0.0;
mat[1][9] = 0.0;

mat[2][0] = 5.0;
mat[2][1] = 9.0;
mat[2][2] = 1.0;
mat[2][3] = 0.0;
mat[2][4] = 0.0;
mat[2][5] = 0.0;
mat[2][6] = 0.0;
mat[2][7] = 1.0;
mat[2][8] = 0.0;
mat[2][9] = 0.0;

mat[3][0] = 9.0;
mat[3][1] = 16.0;
mat[3][2] = 15.0;
mat[3][3] = 6.0;
mat[3][4] = 0.0;
mat[3][5] = 0.0;
mat[3][6] = 0.0;
mat[3][7] = 0.0;
mat[3][8] = 1.0;
mat[3][9] = 0.0;

mat[4][0] = 11.0;
mat[4][1] = 18.0;
mat[4][2] = 19.0;
mat[4][3] = 3.0;
mat[4][4] = 1.0;
mat[4][5] = 0.0;
mat[4][6] = 0.0;
mat[4][7] = 0.0;
mat[4][8] = 0.0;
mat[4][9] = 1.0;



end
always@(*)
begin

//Start Common For First Row...
	k = mat[0][0];
	
			if(k!=0)
			begin
				   mat[0][0] = mat[0][0] / mat[0][0];
				   mat[0][1] = mat[0][1] / mat[0][0];
					mat[0][2] = mat[0][2] / mat[0][0];
					mat[0][3] = mat[0][3] / mat[0][0];
					mat[0][4] = mat[0][4] / mat[0][0];
					mat[0][5] = mat[0][5] / mat[0][0];
					mat[0][6] = mat[0][6] / mat[0][0];
					mat[0][7] = mat[0][7] / mat[0][0];
					mat[0][8] = mat[0][8] / mat[0][0];
					mat[0][9] = mat[0][9] / mat[0][0];
		
			end
//End Common For First Row...			
			
//Start Multiply Below...
			k = mat[1][0];
				mat[1][0] = mat[1][0] - (k*mat[0][0]); 
				mat[1][1] = mat[1][1] - (k*mat[0][1]); 
				mat[1][2] = mat[1][2] - (k*mat[0][2]); 
				mat[1][3] = mat[1][3] - (k*mat[0][3]); 
				mat[1][4] = mat[1][4] - (k*mat[0][4]); 
				mat[1][5] = mat[1][5] - (k*mat[0][5]); 
				mat[1][6] = mat[1][6] - (k*mat[0][6]); 
				mat[1][7] = mat[1][7] - (k*mat[0][7]); 
				mat[1][8] = mat[1][8] - (k*mat[0][8]); 
				mat[1][9] = mat[1][9] - (k*mat[0][9]);

			k = mat[2][0];
				mat[2][0] = mat[2][0] - (k*mat[0][0]); 
				mat[2][1] = mat[2][1] - (k*mat[0][1]); 
				mat[2][2] = mat[2][2] - (k*mat[0][2]); 
				mat[2][3] = mat[2][3] - (k*mat[0][3]); 
				mat[2][4] = mat[2][4] - (k*mat[0][4]); 
				mat[2][5] = mat[2][5] - (k*mat[0][5]); 
				mat[2][6] = mat[2][6] - (k*mat[0][6]); 
				mat[2][7] = mat[2][7] - (k*mat[0][7]); 
				mat[2][8] = mat[2][8] - (k*mat[0][8]); 
				mat[2][9] = mat[2][9] - (k*mat[0][9]);

			k = mat[3][0];
				mat[3][0] = mat[3][0] - (k*mat[0][0]); 
				mat[3][1] = mat[3][1] - (k*mat[0][1]); 
				mat[3][2] = mat[3][2] - (k*mat[0][2]); 
				mat[3][3] = mat[3][3] - (k*mat[0][3]); 
				mat[3][4] = mat[3][4] - (k*mat[0][4]); 
				mat[3][5] = mat[3][5] - (k*mat[0][5]); 
				mat[3][6] = mat[3][6] - (k*mat[0][6]); 
				mat[3][7] = mat[3][7] - (k*mat[0][7]); 
				mat[3][8] = mat[3][8] - (k*mat[0][8]); 
				mat[3][9] = mat[3][9] - (k*mat[0][9]);

			k = mat[4][0];
				mat[4][0] = mat[4][0] - (k*mat[0][0]); 
				mat[4][1] = mat[4][1] - (k*mat[0][1]); 
				mat[4][2] = mat[4][2] - (k*mat[0][2]); 
				mat[4][3] = mat[4][3] - (k*mat[0][3]); 
				mat[4][4] = mat[4][4] - (k*mat[0][4]); 
				mat[4][5] = mat[4][5] - (k*mat[0][5]); 
				mat[4][6] = mat[4][6] - (k*mat[0][6]); 
				mat[4][7] = mat[4][7] - (k*mat[0][7]); 
				mat[4][8] = mat[4][8] - (k*mat[0][8]); 
				mat[4][9] = mat[4][9] - (k*mat[0][9]);



//Start Common For Second Row...
				
k = mat[1][1];
	
			if(k!=0)
			begin
				   mat[1][0] = mat[1][0] / mat[1][1];
				   mat[1][1] = mat[1][1] / mat[1][1];
					mat[1][2] = mat[1][2] / mat[1][1];
					mat[1][3] = mat[1][3] / mat[1][1];
					mat[1][4] = mat[1][4] / mat[1][1];
					mat[1][5] = mat[1][5] / mat[1][1];
					mat[1][6] = mat[1][6] / mat[1][1];
					mat[1][7] = mat[1][7] / mat[1][1];
					mat[1][8] = mat[1][8] / mat[1][1];
					mat[1][9] = mat[1][9] / mat[1][1];
		
			end

		
			k = mat[2][1];
				mat[2][0] = mat[2][0] - (k*mat[1][0]); 
				mat[2][1] = mat[2][1] - (k*mat[1][1]); 
				mat[2][2] = mat[2][2] - (k*mat[1][2]); 
				mat[2][3] = mat[2][3] - (k*mat[1][3]); 
				mat[2][4] = mat[2][4] - (k*mat[1][4]); 
				mat[2][5] = mat[2][5] - (k*mat[1][5]); 
				mat[2][6] = mat[2][6] - (k*mat[1][6]); 
				mat[2][7] = mat[2][7] - (k*mat[1][7]); 
				mat[2][8] = mat[2][8] - (k*mat[1][8]); 
				mat[2][9] = mat[2][9] - (k*mat[1][9]);

			k = mat[3][1];
				mat[3][0] = mat[3][0] - (k*mat[1][0]); 
				mat[3][1] = mat[3][1] - (k*mat[1][1]); 
				mat[3][2] = mat[3][2] - (k*mat[1][2]); 
				mat[3][3] = mat[3][3] - (k*mat[1][3]); 
				mat[3][4] = mat[3][4] - (k*mat[1][4]); 
				mat[3][5] = mat[3][5] - (k*mat[1][5]); 
				mat[3][6] = mat[3][6] - (k*mat[1][6]); 
				mat[3][7] = mat[3][7] - (k*mat[1][7]); 
				mat[3][8] = mat[3][8] - (k*mat[1][8]); 
				mat[3][9] = mat[3][9] - (k*mat[1][9]);

			k = mat[4][1];
				mat[4][0] = mat[4][0] - (k*mat[1][0]); 
				mat[4][1] = mat[4][1] - (k*mat[1][1]); 
				mat[4][2] = mat[4][2] - (k*mat[1][2]); 
				mat[4][3] = mat[4][3] - (k*mat[1][3]); 
				mat[4][4] = mat[4][4] - (k*mat[1][4]); 
				mat[4][5] = mat[4][5] - (k*mat[1][5]); 
				mat[4][6] = mat[4][6] - (k*mat[1][6]); 
				mat[4][7] = mat[4][7] - (k*mat[1][7]); 
				mat[4][8] = mat[4][8] - (k*mat[1][8]); 
				mat[4][9] = mat[4][9] - (k*mat[1][9]);


			k = mat[0][1];
				mat[0][0] = mat[0][0] - (k*mat[1][0]); 
				mat[0][1] = mat[0][1] - (k*mat[1][1]); 
				mat[0][2] = mat[0][2] - (k*mat[1][2]); 
				mat[0][3] = mat[0][3] - (k*mat[1][3]); 
				mat[0][4] = mat[0][4] - (k*mat[1][4]); 
				mat[0][5] = mat[0][5] - (k*mat[1][5]); 
				mat[0][6] = mat[0][6] - (k*mat[1][6]); 
				mat[0][7] = mat[0][7] - (k*mat[1][7]); 
				mat[0][8] = mat[0][8] - (k*mat[1][8]); 
				mat[0][9] = mat[0][9] - (k*mat[1][9]);

//End Multiply Above...

//Start Common For Third Row...
				
k = mat[2][2];
	
			if(k!=0)
			begin
				   mat[2][0] = mat[2][0] / mat[2][2];
				   mat[2][1] = mat[2][1] / mat[2][2];
					mat[2][2] = mat[2][2] / mat[2][2];
					mat[2][3] = mat[2][3] / mat[2][2];
					mat[2][4] = mat[2][4] / mat[2][2];
					mat[2][5] = mat[2][5] / mat[2][2];
					mat[2][6] = mat[2][6] / mat[2][2];
					mat[2][7] = mat[2][7] / mat[2][2];
					mat[2][8] = mat[2][8] / mat[2][2];
					mat[2][9] = mat[2][9] / mat[2][2];
		
			end

		
			
			k = mat[3][2];
				mat[3][0] = mat[3][0] - (k*mat[2][0]); 
				mat[3][1] = mat[3][1] - (k*mat[2][1]); 
				mat[3][2] = mat[3][2] - (k*mat[2][2]); 
				mat[3][3] = mat[3][3] - (k*mat[2][3]); 
				mat[3][4] = mat[3][4] - (k*mat[2][4]); 
				mat[3][5] = mat[3][5] - (k*mat[2][5]); 
				mat[3][6] = mat[3][6] - (k*mat[2][6]); 
				mat[3][7] = mat[3][7] - (k*mat[2][7]); 
				mat[3][8] = mat[3][8] - (k*mat[2][8]); 
				mat[3][9] = mat[3][9] - (k*mat[2][9]);

			k = mat[4][2];
				mat[4][0] = mat[4][0] - (k*mat[2][0]); 
				mat[4][1] = mat[4][1] - (k*mat[2][1]); 
				mat[4][2] = mat[4][2] - (k*mat[2][2]); 
				mat[4][3] = mat[4][3] - (k*mat[2][3]); 
				mat[4][4] = mat[4][4] - (k*mat[2][4]); 
				mat[4][5] = mat[4][5] - (k*mat[2][5]); 
				mat[4][6] = mat[4][6] - (k*mat[2][6]); 
				mat[4][7] = mat[4][7] - (k*mat[2][7]); 
				mat[4][8] = mat[4][8] - (k*mat[2][8]); 
				mat[4][9] = mat[4][9] - (k*mat[2][9]);

			k = mat[1][2];
				mat[1][0] = mat[1][0] - (k*mat[2][0]); 
				mat[1][1] = mat[1][1] - (k*mat[2][1]); 
				mat[1][2] = mat[1][2] - (k*mat[2][2]); 
				mat[1][3] = mat[1][3] - (k*mat[2][3]); 
				mat[1][4] = mat[1][4] - (k*mat[2][4]); 
				mat[1][5] = mat[1][5] - (k*mat[2][5]); 
				mat[1][6] = mat[1][6] - (k*mat[2][6]); 
				mat[1][7] = mat[1][7] - (k*mat[2][7]); 
				mat[1][8] = mat[1][8] - (k*mat[2][8]); 
				mat[1][9] = mat[1][9] - (k*mat[2][9]);

				k = mat[0][2];
				mat[0][0] = mat[0][0] - (k*mat[2][0]); 
				mat[0][1] = mat[0][1] - (k*mat[2][1]); 
				mat[0][2] = mat[0][2] - (k*mat[2][2]); 
				mat[0][3] = mat[0][3] - (k*mat[2][3]); 
				mat[0][4] = mat[0][4] - (k*mat[2][4]); 
				mat[0][5] = mat[0][5] - (k*mat[2][5]); 
				mat[0][6] = mat[0][6] - (k*mat[2][6]); 
				mat[0][7] = mat[0][7] - (k*mat[2][7]); 
				mat[0][8] = mat[0][8] - (k*mat[2][8]); 
				mat[0][9] = mat[0][9] - (k*mat[2][9]);


k = mat[3][3];
	
			if(k!=0)
			begin
				   mat[3][0] = mat[3][0] / mat[3][3];
				   mat[3][1] = mat[3][1] / mat[3][3];
					mat[3][2] = mat[3][2] / mat[3][3];
					mat[3][3] = mat[3][3] / mat[3][3];
					mat[3][4] = mat[3][4] / mat[3][3];
					mat[3][5] = mat[3][5] / mat[3][3];
					mat[3][6] = mat[3][6] / mat[3][3];
					mat[3][7] = mat[3][7] / mat[3][3];
					mat[3][8] = mat[3][8] / mat[3][3];
					mat[3][9] = mat[3][9] / mat[3][3];
		
			end

		k = mat[4][3];
				mat[4][0] = mat[4][0] - (k*mat[3][0]); 
				mat[4][1] = mat[4][1] - (k*mat[3][1]); 
				mat[4][2] = mat[4][2] - (k*mat[3][2]); 
				mat[4][3] = mat[4][3] - (k*mat[3][3]); 
				mat[4][4] = mat[4][4] - (k*mat[3][4]); 
				mat[4][5] = mat[4][5] - (k*mat[3][5]); 
				mat[4][6] = mat[4][6] - (k*mat[3][6]); 
				mat[4][7] = mat[4][7] - (k*mat[3][7]); 
				mat[4][8] = mat[4][8] - (k*mat[3][8]); 
				mat[4][9] = mat[4][9] - (k*mat[3][9]);

//End Multiply Below...		

//Start Multiply Above...		
			
			k = mat[2][3];
				mat[2][0] = mat[2][0] - (k*mat[3][0]); 
				mat[2][1] = mat[2][1] - (k*mat[3][1]); 
				mat[2][2] = mat[2][2] - (k*mat[3][2]); 
				mat[2][3] = mat[2][3] - (k*mat[3][3]); 
				mat[2][4] = mat[2][4] - (k*mat[3][4]); 
				mat[2][5] = mat[2][5] - (k*mat[3][5]); 
				mat[2][6] = mat[2][6] - (k*mat[3][6]); 
				mat[2][7] = mat[2][7] - (k*mat[3][7]); 
				mat[2][8] = mat[2][8] - (k*mat[3][8]); 
				mat[2][9] = mat[2][9] - (k*mat[3][9]);

			k = mat[1][3];
				mat[1][0] = mat[1][0] - (k*mat[3][0]); 
				mat[1][1] = mat[1][1] - (k*mat[3][1]); 
				mat[1][2] = mat[1][2] - (k*mat[3][2]); 
				mat[1][3] = mat[1][3] - (k*mat[3][3]); 
				mat[1][4] = mat[1][4] - (k*mat[3][4]); 
				mat[1][5] = mat[1][5] - (k*mat[3][5]); 
				mat[1][6] = mat[1][6] - (k*mat[3][6]); 
				mat[1][7] = mat[1][7] - (k*mat[3][7]); 
				mat[1][8] = mat[1][8] - (k*mat[3][8]); 
				mat[1][9] = mat[1][9] - (k*mat[3][9]);

				k = mat[0][3];
				mat[0][0] = mat[0][0] - (k*mat[3][0]); 
				mat[0][1] = mat[0][1] - (k*mat[3][1]); 
				mat[0][2] = mat[0][2] - (k*mat[3][2]); 
				mat[0][3] = mat[0][3] - (k*mat[3][3]); 
				mat[0][4] = mat[0][4] - (k*mat[3][4]); 
				mat[0][5] = mat[0][5] - (k*mat[3][5]); 
				mat[0][6] = mat[0][6] - (k*mat[3][6]); 
				mat[0][7] = mat[0][7] - (k*mat[3][7]); 
				mat[0][8] = mat[0][8] - (k*mat[3][8]); 
				mat[0][9] = mat[0][9] - (k*mat[3][9]);

//End Multiply Above...		


//Start Common For Fifth Row...

k = mat[4][4];
	
			if(k!=0)
			begin
				   mat[4][0] = mat[4][0] / mat[4][4];
				   mat[4][1] = mat[4][1] / mat[4][4];
					mat[4][2] = mat[4][2] / mat[4][4];
					mat[4][3] = mat[4][3] / mat[4][4];
					mat[4][4] = mat[4][4] / mat[4][4];
					mat[4][5] = mat[4][5] / mat[4][4];
					mat[4][6] = mat[4][6] / mat[4][4];
					mat[4][7] = mat[4][7] / mat[4][4];
					mat[4][8] = mat[4][8] / mat[4][4];
					mat[4][9] = mat[4][9] / mat[4][4];
		
			end
//End Common For Fifth Row...


		
			
			k = mat[3][4];
				mat[3][0] = mat[3][0] - (k*mat[4][0]); 
				mat[3][1] = mat[3][1] - (k*mat[4][1]); 
				mat[3][2] = mat[3][2] - (k*mat[4][2]); 
				mat[3][3] = mat[3][3] - (k*mat[4][3]); 
				mat[3][4] = mat[3][4] - (k*mat[4][4]); 
				mat[3][5] = mat[3][5] - (k*mat[4][5]); 
				mat[3][6] = mat[3][6] - (k*mat[4][6]); 
				mat[3][7] = mat[3][7] - (k*mat[4][7]); 
				mat[3][8] = mat[3][8] - (k*mat[4][8]); 
				mat[3][9] = mat[3][9] - (k*mat[4][9]);


			k = mat[2][4];
				mat[2][0] = mat[2][0] - (k*mat[4][0]); 
				mat[2][1] = mat[2][1] - (k*mat[4][1]); 
				mat[2][2] = mat[2][2] - (k*mat[4][2]); 
				mat[2][3] = mat[2][3] - (k*mat[4][3]); 
				mat[2][4] = mat[2][4] - (k*mat[4][4]); 
				mat[2][5] = mat[2][5] - (k*mat[4][5]); 
				mat[2][6] = mat[2][6] - (k*mat[4][6]); 
				mat[2][7] = mat[2][7] - (k*mat[4][7]); 
				mat[2][8] = mat[2][8] - (k*mat[4][8]); 
				mat[2][9] = mat[2][9] - (k*mat[4][9]);

			k = mat[1][4];
				mat[1][0] = mat[1][0] - (k*mat[4][0]); 
				mat[1][1] = mat[1][1] - (k*mat[4][1]); 
				mat[1][2] = mat[1][2] - (k*mat[4][2]); 
				mat[1][3] = mat[1][3] - (k*mat[4][3]); 
				mat[1][4] = mat[1][4] - (k*mat[4][4]); 
				mat[1][5] = mat[1][5] - (k*mat[4][5]); 
				mat[1][6] = mat[1][6] - (k*mat[4][6]); 
				mat[1][7] = mat[1][7] - (k*mat[4][7]); 
				mat[1][8] = mat[1][8] - (k*mat[4][8]); 
				mat[1][9] = mat[1][9] - (k*mat[4][9]);

				k = mat[0][4];
				mat[0][0] = mat[0][0] - (k*mat[4][0]); 
				mat[0][1] = mat[0][1] - (k*mat[4][1]); 
				mat[0][2] = mat[0][2] - (k*mat[4][2]); 
				mat[0][3] = mat[0][3] - (k*mat[4][3]); 
				mat[0][4] = mat[0][4] - (k*mat[4][4]); 
				mat[0][5] = mat[0][5] - (k*mat[4][5]); 
				mat[0][6] = mat[0][6] - (k*mat[4][6]); 
				mat[0][7] = mat[0][7] - (k*mat[4][7]); 
				mat[0][8] = mat[0][8] - (k*mat[4][8]); 
				mat[0][9] = mat[0][9] - (k*mat[4][9]);

//End Multiply Above...		


//Assigning Outputs...

out0 = mat[0][5];
out1 = mat[0][6];
out2 = mat[0][7];
out3 = mat[0][8];
out4 = mat[0][9];
out5 = mat[1][5];
out6 = mat[1][6];
out7 = mat[1][7];
out8 = mat[1][8];
out9 = mat[1][9];
out10 = mat[2][5];
out11 = mat[2][6];
out12 = mat[2][7];
out13 = mat[2][8];
out14 = mat[2][9];
out15 = mat[3][5];
out16 = mat[3][6];
out17 = mat[3][7];
out18 = mat[3][8];
out19 = mat[3][9];
out20 = mat[4][5];
out21 = mat[4][6];
out22 = mat[4][7];
out23 = mat[4][8];
out24 = mat[4][9];


/* Answer Format:
						out0  out1  out2  out3  out4
						out5  out6  out7  out8  out9
						out10 out11 out12 out13 out14
						out15 out16 out17 out18 out19
						out20 out21 out22 out23 out24
						
Answer :
						1    0   0   0   0	
					       -3    1   0   0   0	
						22  -9   1   0   0	
					       -48   20 -3   0   0	
					       -230  94 -12  0   1	
*/
	
end

endmodule