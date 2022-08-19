	.text
	.globl 	 main
main:
	move $fp, $sp
	sw $ra, -4($sp)
	subu $sp, $sp, 12
	li $v1, 12
	move $s0, $v1
	move $a0, $s0
	jal _halloc
	move $s1, $v0
	li $v1, 12
	move $s2, $v1
	move $a0, $s2
	jal _halloc
	move $s3, $v0
	la $s4, Test_mutual1
	sw $s4, 4($s3)
	la $s5, Test_start
	sw $s5, 8($s3)
	la $s6, Test_mutual2
	sw $s6, 0($s3)
	sw $s3, 0($s1)
	lw $s7, 0($s1)
	lw $t0, 8($s7)
	move $a0, $s1
	jalr $t0
	move $t1, $v0
	move $a0, $t1
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl Test_start
Test_start:
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
	li $v1, 4
	move $s1, $v1
	sw $s1, 4($s0)
	li $v1, 0
	move $s2, $v1
	sw $s2, 8($s0)
	move $s3, $s0
	lw $s4, 0($s3)
	lw $s5, 4($s4)
	move $a0, $s3
	jalr $s5
	move $s6, $v0
	move $v0, $s6
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
	.globl Test_mutual1
Test_mutual1:
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
	lw $s1, 4($s0)
	li $v1, 1
	move $s2, $v1
	sub $s3, $s1, $s2
	sw $s3, 4($s0)
	lw $s4, 4($s0)
	li $v1, 0
	move $s5, $v1
	li $v1, 1
	move $s6, $v1
	sub $s7, $s5, $s6
	sle $t0, $s4, $s7
	bne $t0, 1, L1
	li $v1, 0
	move $t1, $v1
	sw $t1, 8($s0)
	b L0
L1:
	nop
	lw $t2, 8($s0)
	move $a0, $t2
	jal _print
	li $v1, 1
	move $t3, $v1
	sw $t3, 8($s0)
	move $t4, $s0
	lw $t5, 0($t4)
	lw $t6, 0($t5)
	move $a0, $t4
	jalr $t6
	move $t7, $v0
	move $t8, $t7
L0:
	nop
	lw $t9, 8($s0)
	move $v0, $t9
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
	.globl Test_mutual2
Test_mutual2:
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
	lw $s1, 4($s0)
	li $v1, 1
	move $s2, $v1
	sub $s3, $s1, $s2
	sw $s3, 4($s0)
	lw $s4, 4($s0)
	li $v1, 0
	move $s5, $v1
	li $v1, 1
	move $s6, $v1
	sub $s7, $s5, $s6
	sle $t0, $s4, $s7
	bne $t0, 1, L3
	li $v1, 0
	move $t1, $v1
	sw $t1, 8($s0)
	b L2
L3:
	nop
	lw $t2, 8($s0)
	move $a0, $t2
	jal _print
	li $v1, 0
	move $t3, $v1
	sw $t3, 8($s0)
	move $t4, $s0
	lw $t5, 0($t4)
	lw $t6, 4($t5)
	move $a0, $t4
	jalr $t6
	move $t7, $v0
	move $t8, $t7
L2:
	nop
	lw $t9, 8($s0)
	move $v0, $t9
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
