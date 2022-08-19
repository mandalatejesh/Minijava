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
	la $s4, Fac_ComputeFac
	sw $s4, 0($s3)
	sw $s3, 0($s1)
	lw $s5, 0($s1)
	lw $s6, 0($s5)
	li $v1, 10
	move $s7, $v1
	li $v1, 0
	move $t0, $v1
	add $t1, $s7, $t0
	move $a0, $s1
	move $a1, $t1
	jalr $s6
	move $t2, $v0
	move $a0, $t2
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl Fac_ComputeFac
Fac_ComputeFac:
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
	move $s2, $v1
	sle $s3, $s1, $s2
	bne $s3, 1, L1
	li $v1, 1
	move $s4, $v1
	sne $s5, $s1, $s4
	bne $s5, 1, L1
	li $v1, 1
	move $s6, $v1
	li $v1, 0
	move $s7, $v1
	add $t0, $s6, $s7
	move $t1, $t0
	b L0
L1:
	nop
	move $t2, $s0
	lw $t3, 0($t2)
	lw $t4, 0($t3)
	li $v1, 1
	move $t5, $v1
	sub $t6, $s1, $t5
	move $a0, $t2
	move $a1, $t6
	jalr $t4
	move $t7, $v0
	mult $s1, $t7
	mflo $t8
	move $t1, $t8
L0:
	nop
	move $v0, $t1
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
