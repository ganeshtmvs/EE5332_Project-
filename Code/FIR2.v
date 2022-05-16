
`default_nettype none
// FIR filter
module FIR_filter(OUT, IN, clk, rst);

	output wire signed [15:0] 	OUT;
	input  wire	signed [15:0] 	IN;
	input  wire	clk, rst;

	reg  signed  [31:0]	R[19:0];
    wire signed  [15:0] coeff[9:0];
    reg  signed [31:0] acc[19:0];

    integer i;

	always @(posedge clk)
		if (rst) begin // Reset Register Map
			for(i=0;i<20;i=i+1)
            begin
                R[i] <=0 ;
            end
		end
		else begin	// Shift Register Map to Right
			for(i=0;i<19;i=i+1)
            begin
                R[i] <= R[i+1] ;
            end
			R[19] <= IN;
		end

    assign coeff[0] = 16'hffeb ;
    assign coeff[1] = 16'h0008;
    assign coeff[2] = 16'h0022 ;
    assign coeff[3] = 16'h004f ;
    assign coeff[4] = 16'h008f ;
    assign coeff[5] = 16'h00dc ;
    assign coeff[6] = 16'h012e ;
    assign coeff[7] = 16'h017a ;
    assign coeff[8] = 16'h01b5 ;
    assign coeff[9] = 16'h01d5 ;



	assign OUT = (R[0]*coeff[0] + R[1]*coeff[1] +R[2]*coeff[2] + R[3]*coeff[3]
     + R[4]*coeff[4] + R[5]*coeff[5] + R[6]*coeff[6] + R[7]*coeff[7]
     + R[8]*coeff[8] + R[9]*coeff[9] + R[10]*coeff[9] +R[11]*coeff[8] + R[12]*coeff[7] + 
     R[13]*coeff[6] +R[14]*coeff[5] + R[15]*coeff[4] + 
     R[16]*coeff[3] + R[17]*coeff[2] + 
    R[18]*coeff[1] + R[19]*coeff[0])>>>12; // y = R[4] + 2R[3] + 4R[2] + 2R[1] + R[0]
endmodule
