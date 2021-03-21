// Code your testbench here
// or browse Examples
module tb;
  wire out;
  reg in,clk,we; 
  
  lab33 l1 (in,we,clk,out);
  
  initial begin 
    clk=0;
    forever #5 clk=~clk;
  end 
  
  initial begin 
    in=0; we=1;
    #10 in=1;
    #10 in=0; 
    #10 in=1;
    #10 in=0;
    we=0;
    #10 in=1;
    #10 in=0; 
    #20 $finish;
  end
  
  initial begin 
    $dumpfile ("new.vcd");
    $dumpvars;
  end
  
endmodule
