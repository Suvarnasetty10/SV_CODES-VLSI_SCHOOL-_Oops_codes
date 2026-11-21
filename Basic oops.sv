// Code your testbench here
// or browse Examples
class transcation;
  bit[31:0]data=16'h145;
  int id=1;
endclass

module tb;
  initial begin
   transcation tr= new();
    $display("data=%0d,id=%0d",tr.data,tr.id);
  end
endmodule

 //output:KERNEL: data=325,id=1
