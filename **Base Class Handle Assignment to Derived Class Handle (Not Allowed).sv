class BasePacket;
  int data;
endclass

class ExtPacket extends BasePacket;
  int id;
endclass

module tb;
  BasePacket bc;
  ExtPacket sc;

  initial begin
    bc = new();
    sc = bc;  // Compile-time error
  end
endmodule

//output:
work = ./work/work.lib
ERROR VCP2852 "Incompatible types at assignment: .sc<ExtPacket> <- bc<BasePacket>." "testbench.sv" 15  8
FAILURE "Compile failure 1 Errors 0 Warnings  Analysis time: 0[s]."

Reason:
A base-class handle cannot be directly assigned to a derived-class handle because the base-class object contains only its own variables,
whereas the derived class contains both parent and child variables. 
So, the base-class object does not have all the properties required by the derived class. Therefore, SystemVerilog does not allow this assignment.
