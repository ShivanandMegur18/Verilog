
module full_sub_tb;

reg a, b, cin;
wire diff, bout;

// Instantiate Full Subtractor
full_sub uut (
    .a(a),
    .b(b),
    .cin(cin),
    .diff(diff),
    .bout(bout)
);

initial
begin
    $monitor("A=%b B=%b Cin=%b | Diff=%b Bout=%b",
              a, b, cin, diff, bout);

    a=0; b=0; cin=0; #10;
    a=0; b=0; cin=1; #10;
    a=0; b=1; cin=0; #10;
    a=0; b=1; cin=1; #10;
    a=1; b=0; cin=0; #10;
    a=1; b=0; cin=1; #10;
    a=1; b=1; cin=0; #10;
    a=1; b=1; cin=1; #10;

    $finish;
end

endmodule