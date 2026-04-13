always @(*) begin
    case (alu_op)
        2'b00: alu_ctrl = 3'b010; // add
        2'b01: alu_ctrl = 3'b110; // sub

        2'b11: alu_ctrl = 3'b001; // OR

        default: begin
            case (funct)
                6'b100000: alu_ctrl = 3'b010; // add
                6'b100010: alu_ctrl = 3'b110; // sub
                6'b100100: alu_ctrl = 3'b000; // and
                6'b100101: alu_ctrl = 3'b001; // or
                default:   alu_ctrl = 3'b000;
            endcase
        end
    endcase
end
