module BINARY_CELL(out,out_bar,inp,load,clk,enable);
output out,out_bar;
input inp,load,clk,enable;
wire temp_in; 
MUX_2WAY mux2(temp_in,inp,out,load);
RISINGEDGE_DFF rediff(out,out_bar,temp_in,clk);
endmodule 
  