// Code your testbench here
// or browse Examples
class transcation;
  bit[31:0]data;
  int id;
  function new( int data , int id);
    this.data=data;
    this.id=id;
  endfunction
endclass

module tb;
  bit[31:0]data;
  int id;
  initial begin
    transcation tr1,tr2;
    tr1=new(data,id);
    tr1.data=8'd43;
    tr1.id=8'd48;
    $display("data=%0d,id=%0d",tr1.data,tr1.id);
    tr2=new(data,id);
    tr2.data=8'd43;
    tr2.id=8'd48;
    $display("data=%0d,id=%0d",tr2.data,tr2.id);
  end
endmodule

 //output:
# KERNEL: data=43,id=48
# KERNEL: data=43,id=48
