module memorycache (
  input wire clk,
  input wire reset,
  input wire [9:0] Address,
  input wire write_en,
  input wire [31:0] write_data,
  input wire[127:0] update_data,
  input wire update,
  output reg [31:0] read_data_out,
  input wire read_en,
  output wire valid,
  output wire [2:0] cache_tag

);


reg [31:0] cache_memory[127:0];
integer i;
reg valid_array [127:0];
reg [2:0] cache_tag_array [127:0];

assign valid = valid_array[Address[6:0]];
assign cache_tag = cache_tag_array[Address[6:0]];

always @(posedge clk or negedge reset) begin
    if(!reset)begin 
        for (i =0 ;i < 127 ;i = i+1 ) begin
            cache_memory[i]        =  32'b0;
            valid_array[i]         =  1'b0;
            cache_tag_array[i]     =  3'b0;
        end

    end

      else if (write_en && (!read_en)) begin
           cache_memory        [Address[6:0]] <= write_data;
           cache_tag_array     [Address[6:0]] <= Address[9:7];
           valid_array         [Address[6:0]] <= 1;
           
           

        end

      else if (read_en && (!write_en)) begin
          read_data_out         <=  cache_memory[Address[6:0]];
          
      end
       else if (update)begin
        cache_memory     [Address[{Address[6:2],2'b00}]]  <= update_data[31:0];
        cache_memory     [Address[{Address[6:2],2'b01}]]  <= update_data[63:32];
        cache_memory     [Address[{Address[6:2],2'b10}]]  <= update_data[95:64];
        cache_memory     [Address[{Address[6:2],2'b11}]]  <= update_data[127:96];
        cache_tag_array  [Address  [6:0]]                 <= Address[9:7];
        valid_array      [Address  [6:0]]                 <= 1'b1;

        read_data_out<= cache_memory[Address[6:0]];

end

end
 
 endmodule
 

 