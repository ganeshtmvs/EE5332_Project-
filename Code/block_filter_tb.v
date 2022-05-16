module block_filter_tb;
    
    reg [15:0] mem[0:999];
    reg [31:0] i;
    integer j;
    integer outfile;
    reg clk;
    reg reset;
    reg [15:0] in[0:4];
    wire [15:0] out[0:4];
    reg [15:0] outmem[0:999];

    block_filter DUT (
        .clk(clk),
        .reset(reset),
        .in0(in[4]),
        .in_1(in[3]),
        .in_2(in[2]),
        .in_3(in[1]),
        .in_4(in[0]),
        .out0(out[4]),
        .out_1(out[3]),
        .out_2(out[2]),
        .out_3(out[1]),
        .out_4(out[0])
    );

    always #5 clk = !clk;

    initial begin $readmemh("sine200_input_data.txt", mem); end

    initial begin
        $display(mem[0]);
        //$monitor("%x %x %x %x %x", in[0], in[1], in[2], in[3], in[4]);
        reset = 1;
        clk = 1;
        #16 reset = 0;
        outfile = $fopen("tb_sine200_output_data.txt","w");
        @(posedge clk);
        for (j=0; j<1000; j=j+1) begin
            @(posedge clk);
        end
        for(j = 0; j<1000; j = j+1) begin
            $fdisplay(outfile, "%d:%x",j, outmem[j]);
        end
        $fclose(outfile);
        $finish;

    end

    always @(posedge clk ) begin
        if(reset) begin
            i <= 0;
            in[0] <= 0;
            in[1] <= 0;
            in[2] <= 0;
            in[3] <= 0;
            in[4] <= 0;
        end
        if(i<1000) begin
            i <= i + 5;
            in[0] <= mem[i];
            in[1] <= mem[i+1];
            in[2] <= mem[i+2];
            in[3] <= mem[i+3];
            in[4] <= mem[i+4];
        end
        else begin
            in[0] <= 0;
            in[1] <= 0;
            in[2] <= 0;
            in[3] <= 0;
            in[4] <= 0;
        end
    end

    always @(negedge clk ) begin
        if(i<1000) begin
            outmem[i] <= out[0];
            outmem[i+1] <= out[1];
            outmem[i+2] <= out[2];
            outmem[i+3] <= out[3];
            outmem[i+4] <= out[4];
        end
    end


endmodule