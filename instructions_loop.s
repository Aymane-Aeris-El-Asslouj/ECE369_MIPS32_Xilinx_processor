.data                   	# Put Global Data here
N:      .word 3 		# 'N' is the address which contains the loop count, 5
X:      .word -2, -4, 7 	# 'X' is the address of the 1st element in the array to be added
SUM:    .word 0			# 'SUM' is the address that stores the final sum
str:    .asciiz "The sum of the array is = " 

.text				# Put program here 
.globl main			# globally define 'main' 

main: 
    addi      $s0, $zero, 3		# load loop counter from the address location 'N' and stores into register $s0 
nop
nop
nop
nop
nop
    addi      $t0, $zero, 4		# load the address of X and stores into register $t0 
nop
nop
nop
nop
nop
    and     $s1, $s1, $zero	# performs 'AND' operation between $s1 and $zero, and stores the result into register $s1
nop
nop
nop
nop
nop

loop: 
    lw      $t1, 0($t0)		# load the next value from address location, X+4 into register $t1
nop
nop
nop
nop
nop
    add     $s1, $s1, $t1	# add the next value to the running sum
nop
nop
nop
nop
nop
    addi    $t0, $t0, 4 	# increment to the next address
nop
nop
nop
nop
nop
    addi    $s0, $s0, -1	# decrement the loop counter 
nop
nop
nop
nop
nop
    bne     $0, $s0, loop	# loop back to label 'loop' when $0 is not equal to $s0
nop
nop
nop
nop
nop
    sw      $s1, 24($zero) 		# store the final total sum into address location 'SUM'
nop
nop
nop
nop
nop

.end
