	.text
	.globl 	 main
main:
	move $fp, $sp
	sw $ra, -4($sp)
	subu $sp, $sp, 12
	li $v1, 8
	move $s0, $v1
	move $a0, $s0
	jal _halloc
	move $s1, $v0
	move $s2, $s1
	li $v1, 4
	move $s3, $v1
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	move $s5, $s4
	la $s6, MT4_Change
	sw $s6, 4($s2)
	la $s7, MT4_Start
	sw $s7, 0($s2)
	sw $s2, 0($s5)
	move $t0, $s5
	lw $t1, 0($t0)
	lw $t2, 0($t1)
	li $v1, 1
	move $t3, $v1
	li $v1, 2
	move $t4, $v1
	li $v1, 3
	move $t5, $v1
	li $v1, 4
	move $t6, $v1
	li $v1, 5
	move $t7, $v1
	li $v1, 6
	move $t8, $v1
	move $a0, $t0
	move $a1, $t3
	move $a2, $t4
	move $a3, $t5
	sw $t6, -12($sp)
	sw $t7, -16($sp)
	sw $t8, -20($sp)
	jalr $t2
	move $t9, $v0
	move $a0, $t9
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl MT4_Start
MT4_Start:
	sw $fp, -8($sp)
	sw $ra, -4($sp)
	move $fp, $sp
	subu $sp, $sp, 92
	sw $s0, -24($fp)
	sw $s1, -28($fp)
	sw $s2, -32($fp)
	sw $s3, -36($fp)
	sw $s4, -40($fp)
	sw $s5, -44($fp)
	sw $s6, -48($fp)
	sw $s7, -52($fp)
	sw $t0, -56($fp)
	sw $t1, -60($fp)
	sw $t2, -64($fp)
	sw $t3, -68($fp)
	sw $t4, -72($fp)
	sw $t5, -76($fp)
	sw $t6, -80($fp)
	sw $t7, -84($fp)
	sw $t8, -88($fp)
	sw $t9, -92($fp)
	move $s0, $a0
	move $s1, $a1
	move $s2, $a2
	move $s3, $a3
	move $a0, $s1
	jal _print
	move $a0, $s2
	jal _print
	move $a0, $s3
	jal _print
	lw $v1, -12($fp)
	move $a0, $v1
	jal _print
	lw $v1, -16($fp)
	move $a0, $v1
	jal _print
	lw $v1, -20($fp)
	move $a0, $v1
	jal _print
	move $s4, $s0
	lw $s5, 0($s4)
	lw $s6, 4($s5)
	move $a0, $s4
	lw $v0, -20($fp)
	move $a1, $v0
	lw $v0, -16($fp)
	move $a2, $v0
	lw $v0, -12($fp)
	move $a3, $v0
	sw $s3, -12($sp)
	sw $s2, -16($sp)
	sw $s1, -20($sp)
	jalr $s6
	move $s7, $v0
	move $t0, $s7
	move $v0, $t0
	lw $s0, -24($fp)
	lw $s1, -28($fp)
	lw $s2, -32($fp)
	lw $s3, -36($fp)
	lw $s4, -40($fp)
	lw $s5, -44($fp)
	lw $s6, -48($fp)
	lw $s7, -52($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	lw $t2, -64($fp)
	lw $t3, -68($fp)
	lw $t4, -72($fp)
	lw $t5, -76($fp)
	lw $t6, -80($fp)
	lw $t7, -84($fp)
	lw $t8, -88($fp)
	lw $t9, -92($fp)
	addu $sp, $sp, 92
	lw $ra, -4($fp)
	lw $fp, -8($fp)
	jr $ra
	.text
	.globl MT4_Change
MT4_Change:
	sw $fp, -8($sp)
	sw $ra, -4($sp)
	move $fp, $sp
	subu $sp, $sp, 92
	sw $s0, -24($fp)
	sw $s1, -28($fp)
	sw $s2, -32($fp)
	sw $s3, -36($fp)
	sw $s4, -40($fp)
	sw $s5, -44($fp)
	sw $s6, -48($fp)
	sw $s7, -52($fp)
	sw $t0, -56($fp)
	sw $t1, -60($fp)
	sw $t2, -64($fp)
	sw $t3, -68($fp)
	sw $t4, -72($fp)
	sw $t5, -76($fp)
	sw $t6, -80($fp)
	sw $t7, -84($fp)
	sw $t8, -88($fp)
	sw $t9, -92($fp)
	move $s0, $a0
	move $s1, $a1
	move $s2, $a2
	move $s3, $a3
	move $a0, $s1
	jal _print
	move $a0, $s2
	jal _print
	move $a0, $s3
	jal _print
	lw $v1, -12($fp)
	move $a0, $v1
	jal _print
	lw $v1, -16($fp)
	move $a0, $v1
	jal _print
	lw $v1, -20($fp)
	move $a0, $v1
	jal _print
	li $v1, 0
	move $s4, $v1
	move $v0, $s4
	lw $s0, -24($fp)
	lw $s1, -28($fp)
	lw $s2, -32($fp)
	lw $s3, -36($fp)
	lw $s4, -40($fp)
	lw $s5, -44($fp)
	lw $s6, -48($fp)
	lw $s7, -52($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	lw $t2, -64($fp)
	lw $t3, -68($fp)
	lw $t4, -72($fp)
	lw $t5, -76($fp)
	lw $t6, -80($fp)
	lw $t7, -84($fp)
	lw $t8, -88($fp)
	lw $t9, -92($fp)
	addu $sp, $sp, 92
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
