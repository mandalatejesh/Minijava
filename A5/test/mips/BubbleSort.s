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
	li $v1, 16
	move $s2, $v1
	move $a0, $s2
	jal _halloc
	move $s3, $v0
	la $s4, BBS_Print
	sw $s4, 8($s3)
	la $s5, BBS_Sort
	sw $s5, 12($s3)
	la $s6, BBS_Start
	sw $s6, 0($s3)
	la $s7, BBS_Init
	sw $s7, 4($s3)
	sw $s3, 0($s1)
	lw $t0, 0($s1)
	lw $t1, 0($t0)
	li $v1, 10
	move $t2, $v1
	move $a0, $s1
	move $a1, $t2
	jalr $t1
	move $t3, $v0
	move $a0, $t3
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl BBS_Start
BBS_Start:
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
	move $s2, $s0
	lw $s3, 0($s2)
	lw $s4, 4($s3)
	move $a0, $s2
	move $a1, $s1
	jalr $s4
	move $s5, $v0
	move $s6, $s5
	move $s7, $s0
	lw $t0, 0($s7)
	lw $t1, 8($t0)
	move $a0, $s7
	jalr $t1
	move $t2, $v0
	move $s6, $t2
	li $v1, 99999
	move $t3, $v1
	move $a0, $t3
	jal _print
	move $t4, $s0
	lw $t5, 0($t4)
	lw $t6, 12($t5)
	move $a0, $t4
	jalr $t6
	move $t7, $v0
	move $s6, $t7
	move $t8, $s0
	lw $t9, 0($t8)
	lw $s3, 8($t9)
	move $a0, $t8
	jalr $s3
	move $s2, $v0
	move $s6, $s2
	li $v1, 0
	move $s4, $v1
	move $v0, $s4
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
	.globl BBS_Sort
BBS_Sort:
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
	lw $s1, 8($s0)
	li $v1, 1
	move $s2, $v1
	sub $s3, $s1, $s2
	move $s4, $s3
	li $v1, 0
	move $s5, $v1
	li $v1, 1
	move $s6, $v1
	sub $s7, $s5, $s6
	move $t0, $s7
L0:
	nop
	li $v1, 1
	move $t1, $v1
	sub $t2, $s4, $t1
	sle $t3, $t0, $t2
	bne $t3, 1, L1
	li $v1, 1
	move $t4, $v1
	move $t5, $t4
L2:
	nop
	sle $t6, $t5, $s4
	bne $t6, 1, L3
	li $v1, 1
	move $t7, $v1
	sub $t8, $t5, $t7
	move $t9, $t8
	lw $s1, 4($s0)
	li $v1, 4
	mult $t9, $v1
	mflo $s2
	add $s3, $s1, $s2
	lw $s5, 4($s3)
	move $s6, $s5
	lw $s7, 4($s0)
	li $v1, 4
	mult $t5, $v1
	mflo $t1
	add $t2, $s7, $t1
	lw $t3, 4($t2)
	move $t4, $t3
	li $v1, 1
	move $t6, $v1
	sub $t7, $s6, $t6
	sle $t8, $t4, $t7
	bne $t8, 1, L5
	li $v1, 1
	move $t9, $v1
	sub $s1, $t5, $t9
	move $s2, $s1
	lw $s3, 4($s0)
	li $v1, 4
	mult $s2, $v1
	mflo $s5
	add $s7, $s3, $s5
	lw $t1, 4($s7)
	move $t2, $t1
	lw $t3, 4($s0)
	li $v1, 4
	mult $t5, $v1
	mflo $s6
	add $t6, $t3, $s6
	lw $t4, 4($t6)
	lw $t7, 4($s0)
	li $v1, 4
	mult $s2, $v1
	mflo $t8
	add $t9, $t7, $t8
	sw $t4, 4($t9)
	lw $s1, 4($s0)
	li $v1, 4
	mult $t5, $v1
	mflo $s3
	add $s5, $s1, $s3
	sw $t2, 4($s5)
	b L4
L5:
	nop
	li $v1, 0
	move $s7, $v1
	move $t1, $s7
L4:
	nop
	li $v1, 1
	move $t3, $v1
	add $s6, $t5, $t3
	move $t5, $s6
	b L2
L3:
	nop
	li $v1, 1
	move $t6, $v1
	sub $s2, $s4, $t6
	move $s4, $s2
	b L0
L1:
	nop
	li $v1, 0
	move $t4, $v1
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
	.globl BBS_Print
BBS_Print:
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
	li $v1, 0
	move $s1, $v1
	move $s2, $s1
L6:
	nop
	lw $s3, 8($s0)
	li $v1, 1
	move $s4, $v1
	sub $s5, $s3, $s4
	sle $s6, $s2, $s5
	bne $s6, 1, L7
	lw $s7, 4($s0)
	li $v1, 4
	mult $s2, $v1
	mflo $t0
	add $t1, $s7, $t0
	lw $t2, 4($t1)
	move $a0, $t2
	jal _print
	li $v1, 1
	move $t3, $v1
	add $t4, $s2, $t3
	move $s2, $t4
	b L6
L7:
	nop
	li $v1, 0
	move $t5, $v1
	move $v0, $t5
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
	.globl BBS_Init
BBS_Init:
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
	sw $s1, 8($s0)
	li $v1, 1
	add $s2, $s1, $v1
	li $v1, 4
	mult $s2, $v1
	mflo $s3
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	sw $s1, 0($s4)
	sw $s4, 4($s0)
	li $v1, 0
	move $s5, $v1
	li $v1, 20
	move $s6, $v1
	lw $s7, 4($s0)
	li $v1, 4
	mult $s5, $v1
	mflo $t0
	add $t1, $s7, $t0
	sw $s6, 4($t1)
	li $v1, 1
	move $t2, $v1
	li $v1, 7
	move $t3, $v1
	lw $t4, 4($s0)
	li $v1, 4
	mult $t2, $v1
	mflo $t5
	add $t6, $t4, $t5
	sw $t3, 4($t6)
	li $v1, 2
	move $t7, $v1
	li $v1, 12
	move $t8, $v1
	lw $t9, 4($s0)
	li $v1, 4
	mult $t7, $v1
	mflo $s2
	add $s3, $t9, $s2
	sw $t8, 4($s3)
	li $v1, 3
	move $s4, $v1
	li $v1, 18
	move $s5, $v1
	lw $s6, 4($s0)
	li $v1, 4
	mult $s4, $v1
	mflo $s7
	add $t0, $s6, $s7
	sw $s5, 4($t0)
	li $v1, 4
	move $t1, $v1
	li $v1, 2
	move $t2, $v1
	lw $t3, 4($s0)
	li $v1, 4
	mult $t1, $v1
	mflo $t4
	add $t5, $t3, $t4
	sw $t2, 4($t5)
	li $v1, 5
	move $t6, $v1
	li $v1, 11
	move $t7, $v1
	lw $t8, 4($s0)
	li $v1, 4
	mult $t6, $v1
	mflo $t9
	add $s2, $t8, $t9
	sw $t7, 4($s2)
	li $v1, 6
	move $s3, $v1
	li $v1, 6
	move $s4, $v1
	lw $s5, 4($s0)
	li $v1, 4
	mult $s3, $v1
	mflo $s6
	add $s7, $s5, $s6
	sw $s4, 4($s7)
	li $v1, 7
	move $t0, $v1
	li $v1, 9
	move $t1, $v1
	lw $t2, 4($s0)
	li $v1, 4
	mult $t0, $v1
	mflo $t3
	add $t4, $t2, $t3
	sw $t1, 4($t4)
	li $v1, 8
	move $t5, $v1
	li $v1, 19
	move $t6, $v1
	lw $t7, 4($s0)
	li $v1, 4
	mult $t5, $v1
	mflo $t8
	add $t9, $t7, $t8
	sw $t6, 4($t9)
	li $v1, 9
	move $s2, $v1
	li $v1, 5
	move $s3, $v1
	lw $s4, 4($s0)
	li $v1, 4
	mult $s2, $v1
	mflo $s5
	add $s6, $s4, $s5
	sw $s3, 4($s6)
	li $v1, 0
	move $s7, $v1
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
