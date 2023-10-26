module cache_controller(
    input wire clk,
    input wire reset,
    input wire [9:0] Address,
    input wire ready,
    input wire mem_read,
    input wire mem_write,
    input wire [31:0] write_data,
    input wire valid,
    input wire [2:0] cache_tag,
    output reg read_en,
    output reg write_en,
    output reg mem_read_access,
    output reg mem_write_access,
    output reg stall,
    output reg update
);

//---------------------------------
reg [2:0]tag;
//---------------------------------
reg [1:0]state;
reg [1:0]next_state;
//---------------------------------
localparam idle  =2'b00 ;
localparam read  =2'b01;
localparam write =2'b10;
// extracting   ---------------------------------
always @(posedge clk or negedge reset) begin
    if(!reset)begin
     
     state <= idle;
    end
     else begin
     state <= next_state;
     
     end
end
    // IDLE STATE 
    always @(*) begin
    // Default values
    read_en = 0;
    write_en= 0;
    mem_read_access = 0;
    mem_write_access = 0;
    update = 0;
    stall = 0;
    next_state = idle;

    case (state)
        idle: begin
            if (valid && (cache_tag== Address[9:7])) begin
                if (mem_read) begin
                    read_en = 1;
                    
                end
                else if (mem_write) begin
                    next_state = write;
                    mem_write_access = 1;
                    stall = 1;
                    write_en= 1;
                    
                end
            end
            else if (mem_read) begin
                if (!valid || !cache_tag) begin
                    next_state = read;
                    mem_read_access = 1;
                    stall = 1;
                    
                    
                end
            end
            else if (mem_write) begin
                if (!valid || !cache_tag) begin
                    next_state = write;
                    mem_write_access = 1;
                    stall = 1;
                    write_en = 1 ;
                    
                    
                end
            end
        end

        read: begin
            if (ready) begin
                next_state = idle;
                update = 1;
            end
            else begin
                mem_read_access = 1;
                stall = 1;
                
            end
        end

        write: begin
            if (ready) begin
                if (!valid || !cache_tag) begin
                    next_state = idle;
                end
                else begin
                    write_en= 1;
                end
            end
            else begin
                mem_write_access = 1;
                stall = 1;
                
            end
        end
    endcase
end
endmodule