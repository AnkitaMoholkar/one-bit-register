// Code your design here

module lab33(in,we,clk,out,reset);
  input clk,in,we,reset;
  output reg out;
  
  
  assign d = we ? in : out;
  always @ (posedge clk) 
    begin 
      if(~reset)
      out <= d;
    end 
  
endmodule  
  
  
  
  
  
  
  
