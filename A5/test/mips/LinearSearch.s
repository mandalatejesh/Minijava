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
	la $s4, LS_Print
	sw $s4, 8($s3)
	la $s5, LS_Start
	sw $s5, 0($s3)
	la $s6, LS_Init
	sw $s6, 4($s3)
	la $s7, LS_Search
	sw $s7, 12($s3)
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
	move $t3, $t2
	li $v1, 9999
	move $t4, $v1
	move $a0, $t4
	jal _print
	move $t5, $s0
	lw $t6, 0($t5)
	lw $t7, 12($t6)
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
	lw $s4, 12($s2)
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
	lw $t1, 12($s7)
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
	lw $t5, 12($t6)
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
L0:
	nop
	lw $s3, 8($s0)
	li $v1, 1
	move $s4, $v1
	sub $s5, $s3, $s4
	sle $s6, $s2, $s5
	bne $s6, 1, L1
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
	b L0
L1:
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
L2:
	nop
	lw $t0, 8($s0)
	li $v1, 1
	move $t1, $v1
	sub $t2, $t0, $t1
	sle $t3, $s3, $t2
	bne $t3, 1, L3
	lw $t4, 4($s0)
	li $v1, 4
	mult $s3, $v1
	mflo $t5
	add $t6, $t4, $t5
	lw $t7, 4($t6)
	move $t8, $t7
	li $v1, 1
	move $t9, $v1
	add $s2, $s1, $t9
	move $s4, $s2
	sle $s6, $t8, $s1
	bne $s6, 1, L5
	sne $t0, $t8, $s1
	bne $t0, 1, L5
	li $v1, 0
	move $t1, $v1
	move $t2, $t1
	b L4
L5:
	nop
	li $v1, 1
	move $t3, $v1
	sub $t4, $s4, $t3
	sle $t5, $t8, $t4
	li $v1, 1
	sne $t6, $t5, $v1
	bne $t6, 1, L7
	li $v1, 0
	move $t7, $v1
	move $t2, $t7
	b L6
L7:
	nop
	li $v1, 1
	move $t9, $v1
	move $s5, $t9
	li $v1, 1
	move $s2, $v1
	move $s7, $s2
	lw $s6, 8($s0)
	move $s3, $s6
L6:
	nop
L4:
	nop
	li $v1, 1
	move $t0, $v1
	add $t1, $s3, $t0
	move $s3, $t1
	b L2
L3:
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
	add $s2, $s1, $v1
	li $v1, 4
	mult $s2, $v1
	mflo $s3
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	sw $s1, 0($s4)
	sw $s4, 4($s0)
	li $v1, 1
	move $s5, $v1
	move $s6, $s5
	lw $s7, 8($s0)
	li $v1, 1
	move $t0, $v1
	add $t1, $s7, $t0
	move $t2, $t1
L8:
	nop
	lw $t3, 8($s0)
	li $v1, 1
	move $t4, $v1
	sub $t5, $t3, $t4
	sle $t6, $s6, $t5
	bne $t6, 1, L9
	li $v1, 2
	move $t7, $v1
	mult $t7, $s6
	mflo $t8
	move $t9, $t8
	li $v1, 3
	move $s2, $v1
	sub $s3, $t2, $s2
	move $s4, $s3
	add $s5, $t9, $s4
	lw $s7, 4($s0)
	li $v1, 4
	mult $s6, $v1
	mflo $t0
	add $t1, $s7, $t0
	sw $s5, 4($t1)
	li $v1, 1
	move $t3, $v1
	add $t4, $s6, $t3
	move $s6, $t4
	li $v1, 1
	move $t5, $v1
	sub $t6, $t2, $t5
	move $t2, $t6
	b L8
L9:
	nop
	li $v1, 0
	move $t7, $v1
	move $v0, $t7
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
