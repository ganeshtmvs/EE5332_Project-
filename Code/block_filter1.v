module block_filter (
    input clk,
    input reset,
    input [15:0] in0,
    input [15:0] in_1,
    input [15:0] in_2,
    input [15:0] in_3,
    input [15:0] in_4,
    output [15:0] out0,
    output [15:0] out_1,
    output [15:0] out_2,
    output [15:0] out_3,
    output [15:0] out_4
);

    wire signed [15:0] in0;
    wire signed [15:0] in_1;
    wire signed [15:0] in_2;
    wire signed [15:0] in_3;
    wire signed [15:0] in_4;
    reg signed [15:0] in_5;
    reg signed [15:0] in_6;
    reg signed [15:0] in_7;
    reg signed [15:0] in_8;
    wire signed [15:0] out0;
    wire signed [15:0] out_1;
    wire signed [15:0] out_2;
    wire signed [15:0] out_3;
    wire signed [15:0] out_4;

    wire signed [31:0] in0times_21;
    wire signed [31:0] in0times220;
    wire signed [31:0] in0times469;
    wire signed [31:0] in0times143;

    wire signed [31:0] in_1times_21;
    wire signed [31:0] in_1times220;
    wire signed [31:0] in_1times469;
    wire signed [31:0] in_1times143;
    wire signed [31:0] in_1times8;
    wire signed [31:0] in_1times302;
    wire signed [31:0] in_1times437;
    wire signed [31:0] in_1times79;

    wire signed [31:0] in_2times_21;
    wire signed [31:0] in_2times220;
    wire signed [31:0] in_2times469;
    wire signed [31:0] in_2times143;
    wire signed [31:0] in_2times8;
    wire signed [31:0] in_2times302;
    wire signed [31:0] in_2times437;
    wire signed [31:0] in_2times79;
    wire signed [31:0] in_2times34;
    wire signed [31:0] in_2times378;

    wire signed [31:0] in_3times_21;
    wire signed [31:0] in_3times220;
    wire signed [31:0] in_3times469;
    wire signed [31:0] in_3times143;
    wire signed [31:0] in_3times8;
    wire signed [31:0] in_3times302;
    wire signed [31:0] in_3times437;
    wire signed [31:0] in_3times79;
    wire signed [31:0] in_3times34;
    wire signed [31:0] in_3times378;

    wire signed [31:0] in_4times_21;
    wire signed [31:0] in_4times220;
    wire signed [31:0] in_4times469;
    wire signed [31:0] in_4times143;
    wire signed [31:0] in_4times8;
    wire signed [31:0] in_4times302;
    wire signed [31:0] in_4times437;
    wire signed [31:0] in_4times79;
    wire signed [31:0] in_4times34;
    wire signed [31:0] in_4times378;

    wire signed [31:0] in_5times_21;
    wire signed [31:0] in_5times220;
    wire signed [31:0] in_5times469;
    wire signed [31:0] in_5times143;
    wire signed [31:0] in_5times8;
    wire signed [31:0] in_5times302;
    wire signed [31:0] in_5times437;
    wire signed [31:0] in_5times79;
    wire signed [31:0] in_5times34;
    wire signed [31:0] in_5times378;

    wire signed [31:0] in_6times_21;
    wire signed [31:0] in_6times220;
    wire signed [31:0] in_6times469;
    wire signed [31:0] in_6times143;
    wire signed [31:0] in_6times8;
    wire signed [31:0] in_6times302;
    wire signed [31:0] in_6times437;
    wire signed [31:0] in_6times79;
    wire signed [31:0] in_6times34;
    wire signed [31:0] in_6times378;

    wire signed [31:0] in_7times_21;
    wire signed [31:0] in_7times220;
    wire signed [31:0] in_7times469;
    wire signed [31:0] in_7times143;
    wire signed [31:0] in_7times8;
    wire signed [31:0] in_7times302;
    wire signed [31:0] in_7times437;
    wire signed [31:0] in_7times79;

    wire signed [31:0] in_8times_21;
    wire signed [31:0] in_8times220;
    wire signed [31:0] in_8times469;
    wire signed [31:0] in_8times143;

    wire signed [31:0] r0[0:4];
    wire signed [31:0] r1[0:4];
    wire signed [31:0] r2[0:4];
    wire signed [31:0] r3[0:4];

    reg signed [31:0] r3r2[0:4];
    reg signed [31:0] r2r1[0:4];
    reg signed [31:0] r1r0[0:4];

    always @(posedge clk) begin
        if(reset) begin
            in_5 <= 0;
            in_6 <= 0;
            in_7 <= 0;
            in_8 <= 0;
            r3r2[0] <= 0;
            r3r2[1] <= 0;
            r3r2[2] <= 0;
            r3r2[3] <= 0;
            r3r2[4] <= 0;
            r2r1[0] <= 0;
            r2r1[1] <= 0;
            r2r1[2] <= 0;
            r2r1[3] <= 0;
            r2r1[4] <= 0;
            r1r0[0] <= 0;
            r1r0[1] <= 0;
            r1r0[2] <= 0;
            r1r0[3] <= 0;
            r1r0[4] <= 0;
        end
        else begin
            in_5 <= in0;
            in_6 <= in_1;
            in_7 <= in_2;
            in_8 <= in_3;
            r3r2[0] <= r3[0];
            r3r2[1] <= r3[1];
            r3r2[2] <= r3[2];
            r3r2[3] <= r3[3];
            r3r2[4] <= r3[4];
            r2r1[0] <= r3r2[0] + r2[0];
            r2r1[1] <= r3r2[1] + r2[1];
            r2r1[2] <= r3r2[2] + r2[2];
            r2r1[3] <= r3r2[3] + r2[3];
            r2r1[4] <= r3r2[4] + r2[4];
            r1r0[0] <= r2r1[0] + r1[0];
            r1r0[1] <= r2r1[1] + r1[1];
            r1r0[2] <= r2r1[2] + r1[2];
            r1r0[3] <= r2r1[3] + r1[3];
            r1r0[4] <= r2r1[4] + r1[4];
        end
    end

    MCM4 in0MCM (
        .in({{16{in0[15]}}, in0}),
        .times_21(in0times_21),
        .times220(in0times220),
        .times469(in0times469),
        .times143(in0times143)
    );

    MCM8 in_1MCM (
        .in({{16{in_1[15]}}, in_1}),
        .times_21(in_1times_21),
        .times220(in_1times220),
        .times469(in_1times469),
        .times143(in_1times143),
        .times8(in_1times8),
        .times302(in_1times302),
        .times437(in_1times437),
        .times79(in_1times79)
    );

    MCM10 in_2MCM (
        .in({{16{in_2[15]}}, in_2}),
        .times_21(in_2times_21),
        .times220(in_2times220),
        .times469(in_2times469),
        .times143(in_2times143),
        .times8(in_2times8),
        .times302(in_2times302),
        .times437(in_2times437),
        .times79(in_2times79),
        .times34(in_2times34),
        .times378(in_2times378)
    );

    MCM10 in_3MCM (
        .in({{16{in_3[15]}}, in_3}),
        .times_21(in_3times_21),
        .times220(in_3times220),
        .times469(in_3times469),
        .times143(in_3times143),
        .times8(in_3times8),
        .times302(in_3times302),
        .times437(in_3times437),
        .times79(in_3times79),
        .times34(in_3times34),
        .times378(in_3times378)
    );

    MCM10 in_4MCM (
        .in({{16{in_4[15]}}, in_4}),
        .times_21(in_4times_21),
        .times220(in_4times220),
        .times469(in_4times469),
        .times143(in_4times143),
        .times8(in_4times8),
        .times302(in_4times302),
        .times437(in_4times437),
        .times79(in_4times79),
        .times34(in_4times34),
        .times378(in_4times378)
    );

    MCM10 in_5MCM (
        .in({{16{in_5[15]}}, in_5}),
        .times_21(in_5times_21),
        .times220(in_5times220),
        .times469(in_5times469),
        .times143(in_5times143),
        .times8(in_5times8),
        .times302(in_5times302),
        .times437(in_5times437),
        .times79(in_5times79),
        .times34(in_5times34),
        .times378(in_5times378)
    );

    MCM10 in_6MCM (
        .in({{16{in_6[15]}}, in_6}),
        .times_21(in_6times_21),
        .times220(in_6times220),
        .times469(in_6times469),
        .times143(in_6times143),
        .times8(in_6times8),
        .times302(in_6times302),
        .times437(in_6times437),
        .times79(in_6times79),
        .times34(in_6times34),
        .times378(in_6times378)
    );

    MCM8 in_7MCM (
        .in({{16{in_7[15]}}, in_7}),
        .times_21(in_7times_21),
        .times220(in_7times220),
        .times469(in_7times469),
        .times143(in_7times143),
        .times8(in_7times8),
        .times302(in_7times302),
        .times437(in_7times437),
        .times79(in_7times79)
    );

    MCM4 in_8MCM (
        .in({{16{in_8[15]}}, in_8}),
        .times_21(in_8times_21),
        .times220(in_8times220),
        .times469(in_8times469),
        .times143(in_8times143)
    );

    // r0 vector adder trees.
    adderTree5 r00 (
        .in1(in0times_21),
        .in2(in_1times8),
        .in3(in_2times34),
        .in4(in_3times79),
        .in5(in_4times143),
        .out(r0[0])
    );

    adderTree5 r01 (
        .in1(in_1times_21),
        .in2(in_2times8),
        .in3(in_3times34),
        .in4(in_4times79),
        .in5(in_5times143),
        .out(r0[1])
    );

    adderTree5 r02 (
        .in1(in_2times_21),
        .in2(in_3times8),
        .in3(in_4times34),
        .in4(in_5times79),
        .in5(in_6times143),
        .out(r0[2])
    );

    adderTree5 r03 (
        .in1(in_3times_21),
        .in2(in_4times8),
        .in3(in_5times34),
        .in4(in_6times79),
        .in5(in_7times143),
        .out(r0[3])
    );

    adderTree5 r04 (
        .in1(in_4times_21),
        .in2(in_5times8),
        .in3(in_6times34),
        .in4(in_7times79),
        .in5(in_8times143),
        .out(r0[4])
    );

    // r1 vector adder trees.
    adderTree5 r10 (
        .in1(in0times220),
        .in2(in_1times302),
        .in3(in_2times378),
        .in4(in_3times437),
        .in5(in_4times469),
        .out(r1[0])
    );

    adderTree5 r11 (
        .in1(in_1times220),
        .in2(in_2times302),
        .in3(in_3times378),
        .in4(in_4times437),
        .in5(in_5times469),
        .out(r1[1])
    );

    adderTree5 r12 (
        .in1(in_2times220),
        .in2(in_3times302),
        .in3(in_4times378),
        .in4(in_5times437),
        .in5(in_6times469),
        .out(r1[2])
    );

    adderTree5 r13 (
        .in1(in_3times220),
        .in2(in_4times302),
        .in3(in_5times378),
        .in4(in_6times437),
        .in5(in_7times469),
        .out(r1[3])
    );

    adderTree5 r14 (
        .in1(in_4times220),
        .in2(in_5times302),
        .in3(in_6times378),
        .in4(in_7times437),
        .in5(in_8times469),
        .out(r1[4])
    );

    // r2 vector adder trees.
    adderTree5 r20 (
        .in1(in_4times220),
        .in2(in_3times302),
        .in3(in_2times378),
        .in4(in_1times437),
        .in5(in0times469),
        .out(r2[0])
    );

    adderTree5 r21 (
        .in1(in_5times220),
        .in2(in_4times302),
        .in3(in_3times378),
        .in4(in_2times437),
        .in5(in_1times469),
        .out(r2[1])
    );

    adderTree5 r22 (
        .in1(in_6times220),
        .in2(in_5times302),
        .in3(in_4times378),
        .in4(in_3times437),
        .in5(in_2times469),
        .out(r2[2])
    );

    adderTree5 r23 (
        .in1(in_7times220),
        .in2(in_6times302),
        .in3(in_5times378),
        .in4(in_4times437),
        .in5(in_3times469),
        .out(r2[3])
    );

    adderTree5 r24 (
        .in1(in_8times220),
        .in2(in_7times302),
        .in3(in_6times378),
        .in4(in_5times437),
        .in5(in_4times469),
        .out(r2[4])
    );

    // r3 vector adder trees.
    adderTree5 r30 (
        .in1(in_4times_21),
        .in2(in_3times8),
        .in3(in_2times34),
        .in4(in_1times79),
        .in5(in0times143),
        .out(r3[0])
    );

    adderTree5 r31 (
        .in1(in_5times_21),
        .in2(in_4times8),
        .in3(in_3times34),
        .in4(in_2times79),
        .in5(in_1times143),
        .out(r3[1])
    );

    adderTree5 r32 (
        .in1(in_6times_21),
        .in2(in_5times8),
        .in3(in_4times34),
        .in4(in_3times79),
        .in5(in_2times143),
        .out(r3[2])
    );

    adderTree5 r33 (
        .in1(in_7times_21),
        .in2(in_6times8),
        .in3(in_5times34),
        .in4(in_4times79),
        .in5(in_3times143),
        .out(r3[3])
    );

    adderTree5 r34 (
        .in1(in_8times_21),
        .in2(in_7times8),
        .in3(in_6times34),
        .in4(in_5times79),
        .in5(in_4times143),
        .out(r3[4])
    );

    assign out0 = (r1r0[0] + r0[0])>>>12;
    assign out_1 = (r1r0[1] + r0[1])>>>12;
    assign out_2 = (r1r0[2] + r0[2])>>>12;
    assign out_3 = (r1r0[3] + r0[3])>>>12;
    assign out_4 = (r1r0[4] + r0[4])>>>12;

endmodule

module MCM4 (
    input signed [31:0] in,
    output signed [31:0] times_21,
    output signed [31:0] times220,
    output signed [31:0] times469,
    output signed [31:0] times143
);
    
    wire signed [31:0] in;
    wire signed [31:0] times_21;
    wire signed [31:0] times220;
    wire signed [31:0] times469;
    wire signed [31:0] times143;

    wire signed [31:0] x1;
    wire signed [31:0] x2;

    assign x1 = (in<<3) - in;
    assign x2 = (in<<2) + in;

    assign times_21 = -in -(x2<<2);
    assign times220 = -(in<<2) + (x1<<5);
    assign times469 = in + (x2<<2) + (x1<<6);
    assign times143 = -in + (in<<4) + (in<<7);

endmodule

module MCM8 (
    input [31:0] in,
    output [31:0] times_21,
    output [31:0] times220,
    output [31:0] times469,
    output [31:0] times143,
    output [31:0] times8,
    output [31:0] times302,
    output [31:0] times437,
    output [31:0] times79
);
    
    wire signed [31:0] in;
    wire signed [31:0] times_21;
    wire signed [31:0] times220;
    wire signed [31:0] times469;
    wire signed [31:0] times143;
    wire signed [31:0] times8;
    wire signed [31:0] times302;
    wire signed [31:0] times437;
    wire signed [31:0] times79;

    wire signed [31:0] x1;
    wire signed [31:0] x2;
    wire signed [31:0] x3;

    assign x1 = (in<<3) - in;
    assign x2 = (in<<2) + in;
    assign x3 = in + (in<<3);

    assign times_21 = -in -(x2<<2);
    assign times220 = -(in<<2) + (x1<<5);
    assign times469 = in + (x2<<2) + (x1<<6);
    assign times143 = -in + (in<<4) + (in<<7);
    assign times8 = (in<<3);
    assign times302 = (x2<<6) - (x3<<1);
    assign times437 = x2 - (x2<<4) + (in<<9);
    assign times79 = -in + (x2<<4);

endmodule

module MCM10 (
    input [31:0] in,
    output [31:0] times_21,
    output [31:0] times220,
    output [31:0] times469,
    output [31:0] times143,
    output [31:0] times8,
    output [31:0] times302,
    output [31:0] times437,
    output [31:0] times79,
    output [31:0] times34,
    output [31:0] times378
);
    
    wire signed [31:0] in;
    wire signed [31:0] times_21;
    wire signed [31:0] times220;
    wire signed [31:0] times469;
    wire signed [31:0] times143;
    wire signed [31:0] times8;
    wire signed [31:0] times302;
    wire signed [31:0] times437;
    wire signed [31:0] times79;
    wire signed [31:0] times34;
    wire signed [31:0] times378;

    wire signed [31:0] x1;
    wire signed [31:0] x2;
    wire signed [31:0] x3;
    wire signed [31:0] x4;

    assign x1 = (in<<3) - in;
    assign x2 = (in<<2) + in;
    assign x3 = in + (in<<3);
    assign x4 = (in<<2) - in;

    assign times_21 = -in -(x2<<2);
    assign times220 = -(in<<2) + (x1<<5);
    assign times469 = in + (x2<<2) + (x1<<6);
    assign times143 = -in + (in<<4) + (in<<7);
    assign times8 = (in<<3);
    assign times302 = (x2<<6) - (x3<<1);
    assign times437 = x2 -(x2<<4) + (in<<9);
    assign times79 = -in + (x2<<4);
    assign times34 = (in<<1) + (in<<5);
    assign times378 = (x4<<7) - (x4<<1);

endmodule

module adderTree5 (
    input [31:0] in1,
    input [31:0] in2,
    input [31:0] in3,
    input [31:0] in4,
    input [31:0] in5,
    output [31:0] out
);
    
    wire signed [31:0] in1;
    wire signed [31:0] in2;
    wire signed [31:0] in3;
    wire signed [31:0] in4;
    wire signed [31:0] in5;
    wire signed [31:0] out;
    wire signed [31:0] t1;
    wire signed [31:0] t2;
    wire signed [31:0] t3;

    assign t1 = in1 + in2;
    assign t2 = in3 + in4;
    assign t3 = t1 + t2;
    assign out = t3 + in5;

endmodule