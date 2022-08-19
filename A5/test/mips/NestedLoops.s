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
	la $s4, Base_loop
	sw $s4, 0($s3)
	sw $s3, 0($s1)
	lw $s5, 0($s1)
	lw $s6, 0($s5)
	li $v1, 1
	move $s7, $v1
	li $v1, 2
	move $t0, $v1
	move $a0, $s1
	move $a1, $s7
	move $a2, $t0
	jalr $s6
	move $t1, $v0
	move $a0, $t1
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl Base_loop
Base_loop:
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
	move $s2, $a2
	li $v1, 0
	move $s3, $v1
	move $s4, $s3
	li $v1, 0
	move $s5, $v1
	move $s6, $s5
L0:
	nop
	li $v1, 1
	move $s7, $v1
	sle $t0, $s6, $s7
	bne $t0, 1, L1
	li $v1, 1
	move $t1, $v1
	add $t2, $s6, $t1
	move $s6, $t2
	li $v1, 1
	move $t3, $v1
	add $t4, $s1, $t3
	move $s4, $t4
	li $v1, 1
	move $t5, $v1
	add $t6, $s2, $t5
	move $s1, $t6
	li $v1, 0
	move $t7, $v1
	move $t8, $t7
L2:
	nop
	li $v1, 1
	move $t9, $v1
	sle $s3, $t8, $t9
	bne $s3, 1, L3
	li $v1, 1
	move $s5, $v1
	add $s7, $t8, $s5
	move $t8, $s7
	add $t0, $s4, $s2
	move $s4, $t0
	b L2
L3:
	nop
	li $v1, 2
	move $t1, $v1
	mult $s2, $t1
	mflo $t2
	move $s2, $t2
	b L0
L1:
	nop
	add $t3, $s1, $s4
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
