.PHONY: clean

SRC=src/
VVP=vvp/

V=iverilog

HALF=$(SRC)half_adder.v $(SRC)half_adder_tb.v

FULL=$(SRC)full_adder.v $(SRC)binary_adder.v $(SRC)binary_adder_tb.v

half_adder: $(HALF)
	$(V) -o $(VVP)half_adder.vvp $(HALF)

binary_adder: $(FULL)
	$(V) -o $(VVP)binary_adder.vvp $(FULL)

clean:
	rm $(VVP)*
