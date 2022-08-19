	.text
	.globl 	 main
main:
	move $fp, $sp
	sw $ra, -4($sp)
	subu $sp, $sp, 12
	li $v1, 16
	move $s0, $v1
	move $a0, $s0
	jal _halloc
	move $s1, $v0
	move $s2, $s1
	li $v1, 12
	move $s3, $v1
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	move $s5, $s4
	la $s6, LS_Init
	sw $s6, 12($s2)
	la $s7, LS_Search
	sw $s7, 8($s2)
	la $t0, LS_Print
	sw $t0, 4($s2)
	la $t1, LS_Start
	sw $t1, 0($s2)
	li $v1, 4
	move $t2, $v1
	move $t3, $t2
L0:
	li $v1, 11
	move $t4, $v1
	sle $t5, $t3, $t4
	bne $t5, 1, L1
	add $t6, $s5, $t3
	li $v1, 0
	move $t7, $v1
	sw $t7, 0($t6)
	li $v1, 4
	move $t8, $v1
	add $t9, $t3, $t8
	move $t3, $t9
	b L0
L1:
	sw $s2, 0($s5)
	move $s0, $s5
	lw $s1, 0($s0)
	lw $s3, 0($s1)
	li $v1, 10
	move $s4, $v1
	move $a0, $s0
	move $a1, $s4
	jalr $s3
	move $s6, $v0
	move $a0, $s6
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl LS_Start
LS_Start:
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
	lw $s4, 12($s3)
	move $a0, $s2
	move $a1, $s1
	jalr $s4
	move $s5, $v0
	move $s6, $s5
	move $s7, $s0
	lw $t0, 0($s7)
	lw $t1, 4($t0)
	move $a0, $s7
	jalr $t1
	move $t2, $v0
	move $t3, $t2
	li $v1, 9999
	move $t4, $v1
	move $a0, $t4
	jal _print
	move $t5, $s0
	lw $t6, 0($t5)
	lw $t7, 8($t6)
	li $v1, 8
	move $t8, $v1
	move $a0, $t5
	move $a1, $t8
	jalr $t7
	move $t9, $v0
	move $a0, $t9
	jal _print
	move $s3, $s0
	lw $s2, 0($s3)
	lw $s4, 8($s2)
	li $v1, 12
	move $s5, $v1
	move $a0, $s3
	move $a1, $s5
	jalr $s4
	move $s6, $v0
	move $a0, $s6
	jal _print
	move $t0, $s0
	lw $s7, 0($t0)
	lw $t1, 8($s7)
	li $v1, 17
	move $t2, $v1
	move $a0, $t0
	move $a1, $t2
	jalr $t1
	move $t3, $v0
	move $a0, $t3
	jal _print
	move $t4, $s0
	lw $t6, 0($t4)
	lw $t5, 8($t6)
	li $v1, 50
	move $t7, $v1
	move $a0, $t4
	move $a1, $t7
	jalr $t5
	move $t8, $v0
	move $a0, $t8
	jal _print
	li $v1, 55
	move $t9, $v1
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
	.globl LS_Print
LS_Print:
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
	move $s2, $s1
L2:
	lw $s3, 8($s0)
	li $v1, 1
	move $s4, $v1
	sub $s5, $s3, $s4
	sle $s6, $s2, $s5
	bne $s6, 1, L3
	lw $s7, 4($s0)
	li $v1, 4
	move $t0, $v1
	mult $s2, $t0
	mflo $t1
	move $t2, $t1
	lw $s7, 4($s0)
	lw $t3, 0($s7)
	li $v1, 1
	move $t4, $v1
	li $v1, 1
	move $t5, $v1
	sub $t6, $t3, $t5
	sle $t7, $t2, $t6
	sub $t8, $t4, $t7
	bne $t8, 1, L4
	jal _error
L4:
	nop
	li $v1, 4
	move $t9, $v1
	add $s1, $t2, $t9
	add $s3, $s7, $s1
	lw $s4, 0($s3)
	move $a0, $s4
	jal _print
	li $v1, 1
	move $s5, $v1
	add $s6, $s2, $s5
	move $s2, $s6
	b L2
L3:
	nop
	li $v1, 0
	move $t0, $v1
	move $v0, $t0
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
	.globl LS_Search
LS_Search:
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
	move $s3, $s2
	li $v1, 0
	move $s4, $v1
	move $s5, $s4
	li $v1, 0
	move $s6, $v1
	move $s7, $s6
L5:
	lw $t0, 8($s0)
	li $v1, 1
	move $t1, $v1
	sub $t2, $t0, $t1
	sle $t3, $s3, $t2
	bne $t3, 1, L6
	lw $t4, 4($s0)
	li $v1, 4
	move $t5, $v1
	mult $s3, $t5
	mflo $t6
	move $t7, $t6
	lw $t4, 4($s0)
	lw $t8, 0($t4)
	li $v1, 1
	move $t9, $v1
	li $v1, 1
	move $s2, $v1
	sub $s4, $t8, $s2
	sle $s6, $t7, $s4
	sub $t0, $t9, $s6
	bne $t0, 1, L7
	jal _error
L7:
	nop
	li $v1, 4
	move $t1, $v1
	add $t2, $t7, $t1
	add $t3, $t4, $t2
	lw $t5, 0($t3)
	move $t6, $t5
	li $v1, 1
	move $t8, $v1
	add $s2, $s1, $t8
	move $s4, $s2
	li $v1, 1
	move $t9, $v1
	sub $s6, $s1, $t9
	sle $t0, $t6, $s6
	bne $t0, 1, L8
	li $v1, 0
	move $t7, $v1
	move $t1, $t7
	b L9
L8:
	li $v1, 1
	move $t4, $v1
	li $v1, 1
	move $t2, $v1
	sub $t3, $s4, $t2
	sle $t5, $t6, $t3
	sub $t8, $t4, $t5
	bne $t8, 1, L10
	li $v1, 0
	move $s2, $v1
	move $t1, $s2
	b L11
L10:
	li $v1, 1
	move $t9, $v1
	move $s5, $t9
	li $v1, 1
	move $s6, $v1
	move $s7, $s6
	lw $t0, 8($s0)
	move $s3, $t0
L11:
	nop
L9:
	nop
	li $v1, 1
	move $t7, $v1
	add $s4, $s3, $t7
	move $s3, $s4
	b L5
L6:
	nop
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
	.globl LS_Init
LS_Init:
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
	move $s2, $v1
	add $s3, $s1, $s2
	li $v1, 4
	move $s4, $v1
	mult $s3, $s4
	mflo $s5
	move $a0, $s5
	jal _halloc
	move $s6, $v0
	move $s7, $s6
	li $v1, 4
	move $t0, $v1
	move $t1, $t0
L12:
	li $v1, 1
	move $t2, $v1
	add $t3, $s1, $t2
	li $v1, 4
	move $t4, $v1
	mult $t3, $t4
	mflo $t5
	li $v1, 1
	move $t6, $v1
	sub $t7, $t5, $t6
	sle $t8, $t1, $t7
	bne $t8, 1, L13
	add $t9, $s7, $t1
	li $v1, 0
	move $s2, $v1
	sw $s2, 0($t9)
	li $v1, 4
	move $s3, $v1
	add $s4, $t1, $s3
	move $t1, $s4
	b L12
L13:
	li $v1, 4
	move $s5, $v1
	mult $s1, $s5
	mflo $s6
	sw $s6, 0($s7)
	sw $s7, 4($s0)
	li $v1, 1
	move $t0, $v1
	move $t2, $t0
	lw $t3, 8($s0)
	li $v1, 1
	move $t4, $v1
	add $t5, $t3, $t4
	move $t6, $t5
L14:
	lw $t7, 8($s0)
	li $v1, 1
	move $t8, $v1
	sub $t9, $t7, $t8
	sle $s2, $t2, $t9
	bne $s2, 1, L15
	li $v1, 2
	move $s3, $v1
	mult $s3, $t2
	mflo $t1
	move $s4, $t1
	li $v1, 3
	move $s7, $v1
	sub $s5, $t6, $s7
	move $s6, $s5
	li $v1, 1
	move $t0, $v1
	li $v1, 4
	move $t3, $v1
	mult $t0, $t3
	mflo $t4
	move $t5, $t4
	add $t7, $s0, $t5
	lw $t8, 0($t7)
	li $v1, 4
	move $t9, $v1
	mult $t2, $t9
	mflo $s2
	move $s3, $s2
	li $v1, 1
	move $t1, $v1
	li $v1, 4
	move $s7, $v1
	mult $t1, $s7
	mflo $s5
	move $t5, $s5
	add $t0, $s0, $t5
	lw $t8, 0($t0)
	lw $t3, 0($t8)
	li $v1, 1
	move $t4, $v1
	li $v1, 1
	move $t7, $v1
	sub $t9, $t3, $t7
	sle $s2, $s3, $t9
	sub $t1, $t4, $s2
	bne $t1, 1, L16
	jal _error
L16:
	nop
	li $v1, 4
	move $s7, $v1
	add $s5, $s3, $s7
	add $t5, $t8, $s5
	add $t0, $s4, $s6
	sw $t0, 0($t5)
	li $v1, 1
	move $t3, $v1
	add $t7, $t2, $t3
	move $t2, $t7
	li $v1, 1
	move $t9, $v1
	sub $t4, $t6, $t9
	move $t6, $t4
	b L14
L15:
	nop
	li $v1, 0
	move $s2, $v1
	move $v0, $s2
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
