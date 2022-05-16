module block_filter_tb;
    
    reg [15:0] mem[0:999];
    reg [31:0] i;
    integer j;
    integer outfile;
    reg clk;
    reg reset;
    reg [15:0] in;
    wire [15:0] out;
    reg [15:0] outmem[0:999];

    FIR_filter DUT (
        .clk(clk),
        .rst(reset),
        .OUT(out),
        .IN(in)
    );

    always #5 clk = !clk;

    initial begin $readmemh("sine200_input_data.txt", mem); end

    initial begin
        $display(mem[0]);
        //$monitor("%x %x %x %x %x", in[0], in[1], in[2], in[3], in[4]);
        reset = 1;
        clk = 1;
        #16 reset = 0;
        outfile = $fopen("direct_fir_tb_sine200_output_data.txt","w");
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
            in <= 0;
        end
        if(i<1000) begin
            i <= i + 1;
            in <= mem[i];
        end
        else begin
            in <= 0;
        end
    end

    always @(negedge clk ) begin
        if(i<1000) begin
            outmem[i] <= out;
        end
    end


endmodule