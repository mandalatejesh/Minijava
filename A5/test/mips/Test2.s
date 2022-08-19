	.text
	.globl 	 main
main:
	move $fp, $sp
	sw $ra, -4($sp)
	subu $sp, $sp, 12
	li $v1, 28
	move $s0, $v1
	move $a0, $s0
	jal _halloc
	move $s1, $v0
	li $v1, 4
	move $s2, $v1
	move $a0, $s2
	jal _halloc
	move $s3, $v0
	la $s4, A_function
	sw $s4, 0($s3)
	sw $s3, 0($s1)
	lw $s5, 0($s1)
	lw $s6, 0($s5)
	li $v1, 2
	move $s7, $v1
	li $v1, 3
	move $t0, $v1
	add $t1, $s7, $t0
	li $v1, 28
	move $t2, $v1
	move $a0, $t2
	jal _halloc
	move $t3, $v0
	li $v1, 4
	move $t4, $v1
	move $a0, $t4
	jal _halloc
	move $t5, $v0
	la $t6, A_function
	sw $t6, 0($t5)
	sw $t5, 0($t3)
	lw $t7, 0($t3)
	lw $t8, 0($t7)
	li $v1, 1
	move $t9, $v1
	li $v1, 4
	move $s0, $v1
	li $v1, 0
	move $s2, $v1
	li $v1, 1
	sne $s3, $s2, $v1
	bne $s3, 1, L0
	li $v1, 0
	move $s4, $v1
	bne $s4, 1, L1
L0:
	li $v1, 1
	move $s5, $v1
	b L2
L1:
	li $v1, 0
	move $s5, $v1
L2:
	nop
	li $v1, 5
	move $s7, $v1
	move $a0, $t3
	move $a1, $t9
	move $a2, $s0
	move $a3, $s5
	sw $s7, -12($sp)
	jalr $t8
	move $t0, $v0
	li $v1, 12
	move $t2, $v1
	move $a0, $t2
	jal _halloc
	move $t4, $v0
	li $v1, 4
	move $t5, $v1
	move $a0, $t5
	jal _halloc
	move $t6, $v0
	la $t7, B_function2
	sw $t7, 0($t6)
	sw $t6, 0($t4)
	lw $s2, 0($t4)
	lw $s3, 0($s2)
	move $a0, $t4
	jalr $s3
	move $s4, $v0
	li $v1, 10
	move $t3, $v1
	move $a0, $s1
	move $a1, $t1
	move $a2, $t0
	move $a3, $s4
	sw $t3, -12($sp)
	jalr $s6
	move $t8, $v0
	move $a0, $t8
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl A_function
A_function:
	sw $fp, -8($sp)
	sw $ra, -4($sp)
	move $fp, $sp
	subu $sp, $sp, 84
	sw $s0, -16($fp)
	sw $s1, -20($fp)
	sw $s2, -24($fp)
	sw $s3, -28($fp)
	sw $s4, -32($fp)
	sw $s5, -36($fp)
	sw $s6, -40($fp)
	sw $s7, -44($fp)
	sw $t0, -48($fp)
	sw $t1, -52($fp)
	sw $t2, -56($fp)
	sw $t3, -60($fp)
	sw $t4, -64($fp)
	sw $t5, -68($fp)
	sw $t6, -72($fp)
	sw $t7, -76($fp)
	sw $t8, -80($fp)
	sw $t9, -84($fp)
	move $s0, $a0
	move $s1, $a1
	move $s2, $a2
	move $s3, $a3
	li $v1, 1
	lw $v0, -12($fp)
	add $s4, $v0, $v1
	li $v1, 4
	mult $s4, $v1
	mflo $s5
	move $a0, $s5
	jal _halloc
	move $s6, $v0
	lw $v1, -12($fp)
	sw $v1, 0($s6)
	sw $s6, 12($s0)
	li $v1, 1
	lw $v0, -12($fp)
	add $s7, $v0, $v1
	li $v1, 4
	mult $s7, $v1
	mflo $t0
	move $a0, $t0
	jal _halloc
	move $t1, $v0
	lw $v1, -12($fp)
	sw $v1, 0($t1)
	sw $t1, 16($s0)
	li $v1, 0
	move $t2, $v1
	move $t3, $t2
	li $v1, 0
	move $t4, $v1
	move $t5, $t4
	li $v1, 1
	move $t6, $v1
	lw $v0, -12($fp)
	sub $t7, $v0, $t6
	sw $t7, -12($fp)
L3:
	nop
	lw $v1, -12($fp)
	sle $t8, $t3, $v1
	bne $t8, 1, L4
	lw $t9, 12($s0)
	li $v1, 4
	mult $t3, $v1
	mflo $s4
	add $s5, $t9, $s4
	sw $s1, 4($s5)
	lw $s6, 16($s0)
	li $v1, 4
	mult $t3, $v1
	mflo $s7
	add $t0, $s6, $s7
	sw $s2, 4($t0)
	lw $t1, 12($s0)
	li $v1, 4
	mult $t3, $v1
	mflo $t2
	add $t4, $t1, $t2
	lw $t6, 4($t4)
	lw $t7, 16($s0)
	li $v1, 4
	mult $t3, $v1
	mflo $t8
	add $t9, $t7, $t8
	lw $s4, 4($t9)
	add $s5, $t6, $s4
	lw $s6, 12($s0)
	li $v1, 4
	mult $t3, $v1
	mflo $s7
	add $t0, $s6, $s7
	sw $s5, 4($t0)
	lw $t1, 12($s0)
	li $v1, 4
	mult $t3, $v1
	mflo $t2
	add $t4, $t1, $t2
	lw $t7, 4($t4)
	move $a0, $t7
	jal _print
	lw $t8, 12($s0)
	li $v1, 4
	mult $t3, $v1
	mflo $t9
	add $t6, $t8, $t9
	lw $s4, 4($t6)
	add $s5, $t5, $s4
	move $t5, $s5
	li $v1, 1
	move $s6, $v1
	add $s7, $t3, $s6
	move $t3, $s7
	b L3
L4:
	nop
	bne $s3, 1, L5
	move $t0, $t5
	b L6
L5:
	nop
	li $v1, 0
	move $t1, $v1
	move $t0, $t1
L6:
	nop
	move $v0, $t0
	lw $s0, -16($fp)
	lw $s1, -20($fp)
	lw $s2, -24($fp)
	lw $s3, -28($fp)
	lw $s4, -32($fp)
	lw $s5, -36($fp)
	lw $s6, -40($fp)
	lw $s7, -44($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	lw $t2, -56($fp)
	lw $t3, -60($fp)
	lw $t4, -64($fp)
	lw $t5, -68($fp)
	lw $t6, -72($fp)
	lw $t7, -76($fp)
	lw $t8, -80($fp)
	lw $t9, -84($fp)
	addu $sp, $sp, 84
	lw $ra, -4($fp)
	lw $fp, -8($fp)
	jr $ra
	.text
	.globl B_function2
B_function2:
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
	li $v1, 1
	move $s1, $v1
	sw $s1, 4($s0)
	li $v1, 1
	move $s2, $v1
	sw $s2, 8($s0)
	lw $s3, 4($s0)
	bne $s3, 1, L10
	lw $s4, 8($s0)
	bne $s4, 1, L10
	li $v1, 1
	move $s5, $v1
	b L11
L10:
	li $v1, 0
	move $s5, $v1
L11:
	nop
	li $v1, 1
	sne $s6, $s5, $v1
	bne $s6, 1, L7
	lw $s7, 4($s0)
	li $v1, 1
	sne $t0, $s7, $v1
	bne $t0, 1, L12
	lw $t1, 8($s0)
	bne $t1, 1, L13
L12:
	li $v1, 1
	move $t2, $v1
	b L14
L13:
	li $v1, 0
	move $t2, $v1
L14:
	nop
	bne $t2, 1, L8
L7:
	li $v1, 1
	move $t3, $v1
	b L9
L8:
	li $v1, 0
	move $t3, $v1
L9:
	nop
	li $v1, 1
	sne $t4, $t3, $v1
	move $v0, $t4
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
