`timescale 1ns / 1ps 

module led_blink(
    input clk,
    output [3:0] led 
    );  
    
// led 0 
reg data = 1'b1;
reg [32:0] counter;
reg [32:0] count;
reg state;
reg toggle;

assign led[0] = data;   // static value of led 
assign led[1] = state;  // blinker    
assign led[2] = toggle; // 50% brightness
        
always @ (posedge clk) 
begin
    counter <= counter + 1;
    count <= count + 1;

    //led 0
    state <= count[23];

    //led 2
    toggle <= ~toggle;
    
end

endmodule
