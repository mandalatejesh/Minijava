	.text
	.globl 	 main
main:
	move $fp, $sp
	sw $ra, -4($sp)
	subu $sp, $sp, 12
	jal Test35
	move $s0, $v0
	move $a0, $s0
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl Test35
Test35:
	sw $fp, -8($sp)
	sw $ra, -4($sp)
	move $fp, $sp
	subu $sp, $sp, 144
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
	li $v1, 0
	move $s0, $v1
	li $v1, 1
	move $s1, $v1
	li $v1, 2
	move $s2, $v1
	li $v1, 3
	move $s3, $v1
	li $v1, 4
	move $s4, $v1
	li $v1, 5
	move $s5, $v1
	li $v1, 6
	move $s6, $v1
	li $v1, 7
	move $s7, $v1
	li $v1, 8
	move $t0, $v1
	li $v1, 9
	move $t1, $v1
	li $v1, 10
	move $t2, $v1
	li $v1, 11
	move $t3, $v1
	li $v1, 12
	move $t4, $v1
	li $v1, 13
	move $t5, $v1
	li $v1, 14
	move $t6, $v1
	li $v1, 15
	move $t7, $v1
	li $v1, 16
	move $t8, $v1
	li $v1, 17
	move $t9, $v1
	li $v1, 18
	sw $v1, -84($fp)
	li $v1, 19
	sw $v1, -88($fp)
	li $v1, 20
	sw $v1, -92($fp)
	li $v1, 21
	sw $v1, -96($fp)
	li $v1, 22
	sw $v1, -100($fp)
	li $v1, 23
	sw $v1, -104($fp)
	li $v1, 24
	sw $v1, -108($fp)
	li $v1, 25
	sw $v1, -112($fp)
	li $v1, 26
	sw $v1, -116($fp)
	li $v1, 27
	sw $v1, -120($fp)
	li $v1, 28
	sw $v1, -124($fp)
	li $v1, 29
	sw $v1, -128($fp)
	li $v1, 30
	sw $v1, -132($fp)
	li $v1, 31
	sw $v1, -136($fp)
	li $v1, 32
	sw $v1, -140($fp)
	li $v1, 33
	sw $v1, -144($fp)
	lw $v1, -144($fp)
	move $a0, $v1
	jal _print
	lw $v1, -140($fp)
	move $a0, $v1
	jal _print
	lw $v1, -136($fp)
	move $a0, $v1
	jal _print
	lw $v1, -132($fp)
	move $a0, $v1
	jal _print
	lw $v1, -128($fp)
	move $a0, $v1
	jal _print
	lw $v1, -124($fp)
	move $a0, $v1
	jal _print
	lw $v1, -120($fp)
	move $a0, $v1
	jal _print
	lw $v1, -116($fp)
	move $a0, $v1
	jal _print
	lw $v1, -112($fp)
	move $a0, $v1
	jal _print
	lw $v1, -108($fp)
	move $a0, $v1
	jal _print
	lw $v1, -104($fp)
	move $a0, $v1
	jal _print
	lw $v1, -100($fp)
	move $a0, $v1
	jal _print
	lw $v1, -96($fp)
	move $a0, $v1
	jal _print
	lw $v1, -92($fp)
	move $a0, $v1
	jal _print
	lw $v1, -88($fp)
	move $a0, $v1
	jal _print
	lw $v1, -84($fp)
	move $a0, $v1
	jal _print
	move $a0, $t9
	jal _print
	move $a0, $t8
	jal _print
	move $a0, $t7
	jal _print
	move $a0, $t6
	jal _print
	move $a0, $t5
	jal _print
	move $a0, $t4
	jal _print
	move $a0, $t3
	jal _print
	move $a0, $t2
	jal _print
	move $a0, $t1
	jal _print
	move $a0, $t0
	jal _print
	move $a0, $s7
	jal _print
	move $a0, $s6
	jal _print
	move $a0, $s5
	jal _print
	move $a0, $s4
	jal _print
	move $a0, $s3
	jal _print
	move $a0, $s2
	jal _print
	move $a0, $s1
	jal _print
	move $a0, $s0
	jal _print
	move $v0, $s0
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
	addu $sp, $sp, 144
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
