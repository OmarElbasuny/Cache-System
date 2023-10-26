module Data_Memory (
          input wire [9:0] Address,
          input wire clk,
          input wire reset,
          input wire mem_read_access,
          input wire mem_write_access,
          input wire [31:0] control_data,
          output reg ready,
          output reg [127:0] mem_data_out


 
);
//-----------------------------
reg [31:0] mem [0:1023];
integer i ;
reg [1:0] counter = 2'b00 ;
//-------------------------------

//--------------------------------
always @(posedge clk or negedge reset ) begin
    if(!reset)begin
    counter<=2'b00;
    end
    else if (mem_write_access || mem_read_access)begin
        if (counter < 2'b11)begin
            counter <= counter +1;
        end
            else begin
            counter <=0;
            end
        end
    end



always @(posedge clk ) begin
    if(!reset)
    for (i = 0 ; i<127 ;i=i+1 ) begin
        mem[i]<=31'b0;
    end

       ready<=0; 
    end
always @(posedge clk) begin
    
    if(mem_write_access && counter == 2'b11)begin
        mem[Address ]<=control_data;
        ready<=1;
    end
        else if(mem_read_access  && counter == 2'b11 )begin
          mem_data_out<=mem[Address];
          ready<=1;

end
end
    
    
endmodule