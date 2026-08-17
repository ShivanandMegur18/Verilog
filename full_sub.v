//BEHAVIORAL LEVEL



module full_sub(a, b, cin, diff, bout);
input a, b, cin;
output diff, bout;
reg diff, bout;

always @(a, b, cin)
begin
diff = a^b^cin;
bout = ((~a) & cin) | ((~a) & b) | (b & cin);
end 
endmodule

