	.text
	.globl 	 main
main:
	move $fp, $sp
	sw $ra, -4($sp)
	subu $sp, $sp, 12
	li $v1, 4
	move $s0, $v1
	move $a0, $s0
	jal _halloc
	move $s1, $v0
	li $v1, 4
	move $s2, $v1
	move $a0, $s2
	jal _halloc
	move $s3, $v0
	la $s4, Test_Start
	sw $s4, 0($s3)
	sw $s3, 0($s1)
	lw $s5, 0($s1)
	lw $s6, 0($s5)
	move $a0, $s1
	jalr $s6
	move $s7, $v0
	move $a0, $s7
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl ArrayTest_test
ArrayTest_test:
	sw $fp, -8($sp)
	sw $ra, -4($sp)
	move $fp, $sp
	subu $sp, $sp, 80
	sw $s0, -12($fp)
	sw $s1, -16($fp)
	sw $s2, -20($fp)
	sw $s3, -24($fp)
	sw $s4, -28($fp)
	sw $s5, -32($fp)
	sw $s6, -36($fp)
	sw $s7, -40($fp)
	sw $t0, -44($fp)
	sw $t1, -48($fp)
	sw $t2, -52($fp)
	sw $t3, -56($fp)
	sw $t4, -60($fp)
	sw $t5, -64($fp)
	sw $t6, -68($fp)
	sw $t7, -72($fp)
	sw $t8, -76($fp)
	sw $t9, -80($fp)
	move $s0, $a0
	move $s1, $a1
	li $v1, 1
	add $s2, $s1, $v1
	li $v1, 4
	mult $s2, $v1
	mflo $s3
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	sw $s1, 0($s4)
	move $s5, $s4
	li $v1, 0
	move $s6, $v1
	sw $s6, 4($s0)
	lw $s7, 4($s0)
	move $a0, $s7
	jal _print
	lw $t0, 0($s5)
	move $a0, $t0
	jal _print
	li $v1, 0
	move $t1, $v1
	move $t2, $t1
	li $v1, 111
	move $t3, $v1
	move $a0, $t3
	jal _print
L0:
	nop
	lw $t4, 0($s5)
	li $v1, 1
	move $t5, $v1
	sub $t6, $t4, $t5
	sle $t7, $t2, $t6
	bne $t7, 1, L1
	li $v1, 1
	move $t8, $v1
	add $t9, $t2, $t8
	move $a0, $t9
	jal _print
	li $v1, 1
	move $s2, $v1
	add $s3, $t2, $s2
	li $v1, 4
	mult $t2, $v1
	mflo $s4
	add $s6, $s5, $s4
	sw $s3, 4($s6)
	li $v1, 1
	move $s7, $v1
	add $t0, $t2, $s7
	move $t2, $t0
	b L0
L1:
	nop
	li $v1, 222
	move $t1, $v1
	move $a0, $t1
	jal _print
	li $v1, 0
	move $t3, $v1
	move $t2, $t3
L2:
	nop
	lw $t4, 0($s5)
	li $v1, 1
	move $t5, $v1
	sub $t6, $t4, $t5
	sle $t7, $t2, $t6
	bne $t7, 1, L3
	li $v1, 4
	mult $t2, $v1
	mflo $t8
	add $t9, $s5, $t8
	lw $s2, 4($t9)
	move $a0, $s2
	jal _print
	li $v1, 1
	move $s3, $v1
	add $s4, $t2, $s3
	move $t2, $s4
	b L2
L3:
	nop
	li $v1, 333
	move $s6, $v1
	move $a0, $s6
	jal _print
	lw $s7, 0($s5)
	move $v0, $s7
	lw $s0, -12($fp)
	lw $s1, -16($fp)
	lw $s2, -20($fp)
	lw $s3, -24($fp)
	lw $s4, -28($fp)
	lw $s5, -32($fp)
	lw $s6, -36($fp)
	lw $s7, -40($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	lw $t2, -52($fp)
	lw $t3, -56($fp)
	lw $t4, -60($fp)
	lw $t5, -64($fp)
	lw $t6, -68($fp)
	lw $t7, -72($fp)
	lw $t8, -76($fp)
	lw $t9, -80($fp)
	addu $sp, $sp, 80
	lw $ra, -4($fp)
	lw $fp, -8($fp)
	jr $ra
	.text
	.globl B_test
B_test:
	sw $fp, -8($sp)
	sw $ra, -4($sp)
	move $fp, $sp
	subu $sp, $sp, 80
	sw $s0, -12($fp)
	sw $s1, -16($fp)
	sw $s2, -20($fp)
	sw $s3, -24($fp)
	sw $s4, -28($fp)
	sw $s5, -32($fp)
	sw $s6, -36($fp)
	sw $s7, -40($fp)
	sw $t0, -44($fp)
	sw $t1, -48($fp)
	sw $t2, -52($fp)
	sw $t3, -56($fp)
	sw $t4, -60($fp)
	sw $t5, -64($fp)
	sw $t6, -68($fp)
	sw $t7, -72($fp)
	sw $t8, -76($fp)
	sw $t9, -80($fp)
	move $s0, $a0
	move $s1, $a1
	li $v1, 1
	add $s2, $s1, $v1
	li $v1, 4
	mult $s2, $v1
	mflo $s3
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	sw $s1, 0($s4)
	move $s5, $s4
	li $v1, 12
	move $s6, $v1
	sw $s6, 16($s0)
	lw $s7, 16($s0)
	move $a0, $s7
	jal _print
	lw $t0, 0($s5)
	move $a0, $t0
	jal _print
	li $v1, 0
	move $t1, $v1
	move $t2, $t1
	li $v1, 111
	move $t3, $v1
	move $a0, $t3
	jal _print
L4:
	nop
	lw $t4, 0($s5)
	li $v1, 1
	move $t5, $v1
	sub $t6, $t4, $t5
	sle $t7, $t2, $t6
	bne $t7, 1, L5
	li $v1, 1
	move $t8, $v1
	add $t9, $t2, $t8
	move $a0, $t9
	jal _print
	li $v1, 1
	move $s2, $v1
	add $s3, $t2, $s2
	li $v1, 4
	mult $t2, $v1
	mflo $s4
	add $s6, $s5, $s4
	sw $s3, 4($s6)
	li $v1, 1
	move $s7, $v1
	add $t0, $t2, $s7
	move $t2, $t0
	b L4
L5:
	nop
	li $v1, 222
	move $t1, $v1
	move $a0, $t1
	jal _print
	li $v1, 0
	move $t3, $v1
	move $t2, $t3
L6:
	nop
	lw $t4, 0($s5)
	li $v1, 1
	move $t5, $v1
	sub $t6, $t4, $t5
	sle $t7, $t2, $t6
	bne $t7, 1, L7
	li $v1, 4
	mult $t2, $v1
	mflo $t8
	add $t9, $s5, $t8
	lw $s2, 4($t9)
	move $a0, $s2
	jal _print
	li $v1, 1
	move $s3, $v1
	add $s4, $t2, $s3
	move $t2, $s4
	b L6
L7:
	nop
	li $v1, 333
	move $s6, $v1
	move $a0, $s6
	jal _print
	lw $s7, 0($s5)
	move $v0, $s7
	lw $s0, -12($fp)
	lw $s1, -16($fp)
	lw $s2, -20($fp)
	lw $s3, -24($fp)
	lw $s4, -28($fp)
	lw $s5, -32($fp)
	lw $s6, -36($fp)
	lw $s7, -40($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	lw $t2, -52($fp)
	lw $t3, -56($fp)
	lw $t4, -60($fp)
	lw $t5, -64($fp)
	lw $t6, -68($fp)
	lw $t7, -72($fp)
	lw $t8, -76($fp)
	lw $t9, -80($fp)
	addu $sp, $sp, 80
	lw $ra, -4($fp)
	lw $fp, -8($fp)
	jr $ra
	.text
	.globl Test_Start
Test_Start:
	sw $fp, -8($sp)
	sw $ra, -4($sp)
	move $fp, $sp
	subu $sp, $sp, 80
	sw $s0, -12($fp)
	sw $s1, -16($fp)
	sw $s2, -20($fp)
	sw $s3, -24($fp)
	sw $s4, -28($fp)
	sw $s5, -32($fp)
	sw $s6, -36($fp)
	sw $s7, -40($fp)
	sw $t0, -44($fp)
	sw $t1, -48($fp)
	sw $t2, -52($fp)
	sw $t3, -56($fp)
	sw $t4, -60($fp)
	sw $t5, -64($fp)
	sw $t6, -68($fp)
	sw $t7, -72($fp)
	sw $t8, -76($fp)
	sw $t9, -80($fp)
	move $s0, $a0
	li $v1, 16
	move $s1, $v1
	move $a0, $s1
	jal _halloc
	move $s2, $v0
	li $v1, 4
	move $s3, $v1
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	la $s5, ArrayTest_test
	sw $s5, 0($s4)
	sw $s4, 0($s2)
	move $s6, $s2
	lw $s7, 0($s6)
	lw $t0, 0($s7)
	li $v1, 3
	move $t1, $v1
	move $a0, $s6
	move $a1, $t1
	jalr $t0
	move $t2, $v0
	move $a0, $t2
	jal _print
	li $v1, 0
	move $t3, $v1
	move $v0, $t3
	lw $s0, -12($fp)
	lw $s1, -16($fp)
	lw $s2, -20($fp)
	lw $s3, -24($fp)
	lw $s4, -28($fp)
	lw $s5, -32($fp)
	lw $s6, -36($fp)
	lw $s7, -40($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	lw $t2, -52($fp)
	lw $t3, -56($fp)
	lw $t4, -60($fp)
	lw $t5, -64($fp)
	lw $t6, -68($fp)
	lw $t7, -72($fp)
	lw $t8, -76($fp)
	lw $t9, -80($fp)
	addu $sp, $sp, 80
	lw $ra, -4($fp)
	lw $fp, -8($fp)
	jr $ra
	.text
	.globl _halloc
_halloc:
	li $v0, 9
	syscall
	jr $ra

	.text 
	.globl _error 
_error:
	li $v0, 4
	syscall
	li $v0, 10
	syscall

	.text 
	.globl _print
_print:
	li $v0, 1 
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	jr $ra 

	.text 
	.globl _exitret
_exitret:
	li $v0, 10
	syscall
	.data
	.align 0
	newline: 	.asciiz "\n"

	.data
	.align 0
	error_msg:	.asciiz " ERROR : Abnormally terminated!\n "
