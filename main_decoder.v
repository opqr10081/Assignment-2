always @(*) begin
    case(op)
        6'b000000: controls = 8'b1_0_0_1_0_0_10; // R-type
        6'b100011: controls = 8'b1_1_1_0_1_0_00; // lw
        6'b101011: controls = 8'b0_1_0_0_0_1_00; // sw
        6'b001000: controls = 8'b1_0_1_0_0_0_00; // addi

        6'b001101: controls = 8'b1_0_1_0_0_0_11; // ori

        default:   controls = 8'b0;
    endcase
end
