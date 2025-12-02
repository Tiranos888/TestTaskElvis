
// ALU Interface definition
interface alu_if (input logic clk);
  logic        reset;
  logic [15:0] operand_a;
  logic [15:0] operand_b; 
  logic [3:0]  opcode;
  logic [15:0] result;
  logic        carry_in;
  logic        carry_out;

  // Modport for DUT (inputs are driven by testbench)
  modport dut_mp (
    input  clk, reset, operand_a, operand_b, opcode, carry_in,
    output result, carry_out
  );

  // Modport for testbench (inputs are received from DUT)
  modport tb_mp (
    input  clk, result, carry_out,
    output reset, operand_a, operand_b, opcode, carry_in
  );
endinterface