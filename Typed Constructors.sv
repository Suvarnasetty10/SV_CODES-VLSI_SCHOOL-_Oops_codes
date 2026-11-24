class baseclass;
endclass

class childclass extends baseclass;
  int d;
  function new(int c);
    d=c;
    $display("%0d",d);
  endfunction
endclass

module tb;
  initial begin
    baseclass B1 = childclass :: new(90);
  end
endmodule

//output:90


2.second one other way of represting the above code
class baseclass;
endclass

class childclass extends baseclass;
  int d;
  function new(int c);
    d=c;
    $display("%0d",d);
  endfunction
endclass

module tb;
  initial begin
    //baseclass B1 = childclass :: new(90);
    childclass C1=new(99);
    baseclass B1= C1;
  end
endmodule
//output:
99
