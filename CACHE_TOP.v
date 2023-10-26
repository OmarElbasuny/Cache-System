`include "cache_control.v"
`include "cache_memory.v"
`include "Data_memory.v"

module Cache (
   input wire reset, 
   input wire clk, 
   input wire Mem_read,
   input wire Mem_write,
   input wire [9:0]Address,
   input wire [31:0]Data_in,
   output wire Stall,
   output wire  [31:0]Data_out
);

    

wire  ready,   valid,  read_en,  write_en,  mem_read_access,  mem_write_access,  update ;
wire  [127:0]  update_data;
wire  [2:0]   cache_tag;


cache_controller cache_controller(
                    .clk                (clk),
                    .reset              (reset),
                    .Address           (Address),
                    .ready              (ready),
                    .mem_read           (Mem_read),
                    .mem_write          (Mem_write),
                    .write_data         (Data_in),
                    .valid              (valid),
                    .cache_tag          (cache_tag),
                    .read_en            (read_en),
                    .write_en           (write_en),
                    .mem_read_access    (mem_read_access),
                    .mem_write_access   (mem_write_access),
                    .stall              (Stall),
                    .update             (update)
);

memorycache memorycache (

                     .clk               (clk),
                     .reset             (reset),
                     .Address           (Address),
                     .write_en          (write_en),
                     .write_data        (Data_in),
                     .update_data       (update_data),
                     .update            (update),
                     .read_data_out     (Data_out),
                     .read_en           (read_en),
                     .valid             (valid),
                     .cache_tag         (cache_tag)
);



Data_Memory Data_Memory(
                    .Address          (Address),
                    .clk               (clk),
                    .reset             (reset),
                    .mem_read_access   (mem_read_access),
                    .mem_write_access  (mem_write_access),
                    .control_data      (Data_in),
                    .ready             (ready),
                    .mem_data_out      (update_data)
);

endmodule