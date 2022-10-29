.data
.word 5 
.word 10 
.word -15 
.word 123456 
.word -123456 
.word 0 
.word 1
.text		
main: 	
lw $1, 8($0)
    nop
    nop
    nop
    nop
    nop 	
lh $1, 16($0)
    nop
    nop
    nop
    nop
    nop
lh $1, 18($0)
    nop
    nop
    nop
    nop
    nop
lb $1, 16($0)
    nop
    nop
    nop
    nop
    nop
lb $1, 17($0)
    nop
    nop
    nop
    nop
    nop
lb $1, 18($0)
    nop
    nop
    nop
    nop
    nop
lb $1, 19($0)
    nop
    nop
    nop
    nop
    nop
lb $1, 20($0)
    nop
    nop
    nop
    nop
    nop
addi $2, $0, -6
    nop
    nop
    nop
    nop
    nop
addi $3, $1, 8
    nop
    nop
    nop
    nop
    nop
andi $4, $3, -18
    nop
    nop
    nop
    nop
    nop
ori $5, $3, 18
    nop
    nop
    nop
    nop
    nop
xori $6, $3, 18
    nop
    nop
    nop
    nop
    nop
slti $7, $3, -2
    nop
    nop
    nop
    nop
    nop
mul $8, $3, $2
    nop
    nop
    nop
    nop
    nop
add $9, $1, $2
    nop
    nop
    nop
    nop
    nop
sub $10, $1, $2
    nop
    nop
    nop
    nop
    nop
and $11, $1, $2
    nop
    nop
    nop
    nop
    nop
or $12, $1, $2
    nop
    nop
    nop
    nop
    nop
nor $13, $1, $2
    nop
    nop
    nop
    nop
    nop
xor $14, $1, $2
    nop
    nop
    nop
    nop
    nop
slt $15, $1, $2
    nop
    nop
    nop
    nop
    nop
sll $16, $1, 17
    nop
    nop
    nop
    nop
    nop
srl $17, $8, 3
    nop
    nop
    nop
    nop
    nop
addi $18, $0, 17
    nop
    nop
    nop
    nop
    nop 
sw $18, 0($0)
    nop
    nop
    nop
    nop
    nop
sw $17, 4($4)
    nop
    nop
    nop
    nop
    nop
lw $1, 4($4)
    nop
    nop
    nop
    nop
    nop
lb $5, 4($4)
    nop
    nop
    nop
    nop
    nop
lb $6, 5($4)
    nop
    nop
    nop
    nop
    nop
lb $7, 6($4)
    nop
    nop
    nop
    nop
    nop
lb $8, 7($4)
    nop
    nop
    nop
    nop
    nop
lh $9, 4($4)
    nop
    nop
    nop
    nop
    nop
lh $10, 6($4)
    nop
    nop
    nop
    nop
    nop
sh $1, 4($4)
    nop
    nop
    nop
    nop
    nop
sh $2, 6($4)
    nop
    nop
    nop
    nop
    nop
sb $3, 4($4)
    nop
    nop
    nop
    nop
    nop
sb $4, 5($4)
    nop
    nop
    nop
    nop
    nop
sb $5, 6($4)
    nop
    nop
    nop
    nop
    nop
sb $6, 7($4)
    nop
    nop
    nop
    nop
    nop
lw $1, 4($4)
    nop
    nop
    nop
    nop
    nop      
j   skip1
    nop
    nop
    nop
    nop
    nop   
addi $1, $0, 0
    nop
    nop
    nop
    nop
    nop   
skip1: beq $6, $7, skip2
    nop
    nop
    nop
    nop
    nop   
addi $1, $0, 0
    nop
    nop
    nop
    nop
    nop   
skip2: beq $6, $8, skip3
    nop
    nop
    nop
    nop
    nop   
bgtz $6, skip4
    nop
    nop
    nop
    nop
    nop   
skip3: bgtz $15, skip5
    nop
    nop
    nop
    nop
    nop   
skip4: bgtz $11, skip6
    nop
    nop
    nop
    nop
    nop   
skip5: addi $1, $0, 0
    nop
    nop
    nop
    nop
    nop   
skip6: bgez $6, skip7
    nop
    nop
    nop
    nop
    nop   
bgez $15, skip7
    nop
    nop
    nop
    nop
    nop   
addi $1, $0, 0
    nop
    nop
    nop
    nop
    nop   
skip7: bgez $11, superskip
    nop
    nop
    nop
    nop
    nop   
back2: j forward1
    nop
    nop
    nop
    nop
    nop   
back1: j back2
    nop
    nop
    nop
    nop
    nop   
superskip: bgez $11, back1
    nop
    nop
    nop
    nop
    nop   
forward1: bne $6, $7, skip8
    nop
    nop
    nop
    nop
    nop   
bne $6, $8, skip9
    nop
    nop
    nop
    nop
    nop   
skip8: addi $1, $0, 0
    nop
    nop
    nop
    nop
    nop   
skip9: bltz $6, skip10
    nop
    nop
    nop
    nop
    nop   
addi $1, $0, 0
    nop
    nop
    nop
    nop
    nop   
skip10: bltz $15, skip11
    nop
    nop
    nop
    nop
    nop   
bltz $11, skip12
    nop
    nop
    nop
    nop
    nop   
skip11: blez $6, skip13
    nop
    nop
    nop
    nop
    nop   
skip12: addi $1, $0, 0
    nop
    nop
    nop
    nop
    nop   
skip13: blez $15, skip14
    nop
    nop
    nop
    nop
    nop   
addi $1, $0, 0
    nop
    nop
    nop
    nop
    nop   
skip14: blez $11, skip15
    nop
    nop
    nop
    nop
    nop   
addi $1, $0, 2
    nop
    nop
    nop
    nop
    nop   
skip15: addi $1, $0, 1
    nop
    nop
    nop
    nop
    nop   
jal func
    nop
    nop
    nop
    nop
    nop   
addi $1, $0, 4
    nop
    nop
    nop
    nop
    nop   
addi $1, $31, 116
    nop
    nop
    nop
    nop
    nop   
jr $1
    nop
    nop
    nop
    nop
    nop   
addi $1, $0, 0
    nop
    nop
    nop
    nop
    nop   
self: j self
    nop
    nop
    nop
    nop
    nop   
    nop
    nop
    nop
    nop
    nop   
    nop
    nop
    nop
    nop
    nop   
    nop
    nop
    nop
    nop
    nop   
func: addi $1, $0, 2
    nop
    nop
    nop
    nop
    nop   
addi $1, $0, 3
    nop
    nop
    nop
    nop
    nop   
jr $31
    nop
    nop
    nop
    nop
    nop   
    nop
    nop
    nop
    nop
    nop   
.end
