  module lab33(in,we,clk,out);
  input clk,in,we;
  output reg out;
  
    and (a1,in,we);
    and (a2, out, ~we);
    or (d,a1,a2);
    
  notif0 (n1,d,clk);
  not (n2, n1);
  notif1 (n1, n2, clk);
  notif1 (n3, n2, clk);
  not(n4, n3); 
  notif1 (n3, n2, clk);
  not (n4, n3); 
  notif0 (n3,n4,clk);
    buf (out,n4); 

  
endmodule 
