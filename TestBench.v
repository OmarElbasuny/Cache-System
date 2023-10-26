module Cache_Test();

    reg Mem_read;
    reg Mem_write;
    reg [9:0] Address;
    reg clk;
    reg reset;
    reg [31:0] Data_in;

    wire Stall;
    wire [31:0] Data_out;

    Cache  UUT (
        .Mem_read(Mem_read),
        .Mem_write(Mem_write),
        .Address(Address),
        .clk(clk),
        .reset(reset),
        .Data_in(Data_in),
        .Stall(Stall),
        .Data_out(Data_out)
    );

    // Clock generation
    always begin
        #50 clk = ~clk;
    end

    // Test scenario
    initial begin
        // Initialize inputs
        Mem_read = 0;
        Mem_write = 0;
        Address = 0;
        clk = 0;
        reset = 0;
        Data_in = 0;

        // Apply a reset
        reset = 0;
        #50;
        reset = 1;
        clk =1;

        // Test Case 1:  Write Miss
        Mem_read = 0;
        Mem_write = 1;
        Address = 10'b0000000011;
        Data_in = 32'h12345678;
        #400;

        // Test Case 2:  Read Miss
        Mem_read = 1;
        Mem_write = 0;
        Address = 10'b0000000011;
        #400;

        // Test Case 3:  Write Miss
        Mem_read = 0;
        Mem_write = 1;
        Address = 10'b0000000100;
        Data_in = 32'hAABBCCDD;
        #400;

        // Test Case 4: Read Miss
        Mem_read = 1;
        Mem_write = 0;
        Address = 10'b0000000100;
        #400;

        // Test Case 5: Write Miss
        Mem_read = 0;
        Mem_write = 1;
        Address = 10'b0000000111;
        Data_in = 32'hFFFFFFFF;
        #400;

        // Test Case 6: Read Miss
        Mem_read = 1;
        Mem_write = 0;
        Address = 10'b0000000111;
        #400;

        // Test Case 7: Write Hit
        Mem_read = 0;
        Mem_write = 1;
        Address = 10'b0000000011;
        Data_in = 32'h87654321;
        #400;

        // Test Case 8: Write Miss
        Mem_read = 0;
        Mem_write = 1;
        Address = 10'b0000001000;
        Data_in = 32'hABCDEF01;
        #400;

        
            $dumpfile("mine.vcd");
            $dumpvars(0);

        $finish;
    end
endmodule