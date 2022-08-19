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
	li $v1, 12
	move $s2, $v1
	move $a0, $s2
	jal _halloc
	move $s3, $v0
	la $s4, A_run
	sw $s4, 0($s3)
	la $s5, A_set
	sw $s5, 4($s3)
	la $s6, A_one
	sw $s6, 8($s3)
	sw $s3, 0($s1)
	lw $s7, 0($s1)
	lw $t0, 8($s7)
	li $v1, 1
	move $t1, $v1
	li $v1, 0
	move $t2, $v1
	move $a0, $s1
	move $a1, $t1
	move $a2, $t2
	jalr $t0
	move $t3, $v0
	move $a0, $t3
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl A_run
A_run:
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
	sle $s5, $s1, $s2
	bne $s5, 1, L1
	move $s4, $s1
	b L0
L1:
	nop
	move $s4, $s2
L0:
	nop
	li $v1, 1
	move $s6, $v1
	bne $s6, 1, L7
	li $v1, 1
	move $s7, $v1
	bne $s7, 1, L7
	li $v1, 1
	move $t0, $v1
	b L8
L7:
	li $v1, 0
	move $t0, $v1
L8:
	nop
	li $v1, 1
	sne $t1, $t0, $v1
	bne $t1, 1, L4
	li $v1, 1
	move $t2, $v1
	bne $t2, 1, L9
	li $v1, 0
	move $t3, $v1
	bne $t3, 1, L9
	li $v1, 1
	move $t4, $v1
	b L10
L9:
	li $v1, 0
	move $t4, $v1
L10:
	nop
	bne $t4, 1, L5
L4:
	li $v1, 1
	move $t5, $v1
	b L6
L5:
	li $v1, 0
	move $t5, $v1
L6:
	nop
	bne $t5, 1, L2
	li $v1, 0
	move $t6, $v1
	bne $t6, 1, L2
	li $v1, 1
	move $t7, $v1
	b L3
L2:
	li $v1, 0
	move $t7, $v1
L3:
	nop
	sw $t7, 8($s0)
	li $v1, 1
	move $t8, $v1
	li $v1, 1
	move $t9, $v1
	b L12
L13:
	nop
	li $v1, 1
	move $s3, $v1
	li $v1, 0
	move $s5, $v1
	b L11
L12:
	nop
	li $v1, 0
	move $s6, $v1
	b L11
	lw $s7, 8($s0)
	sw $s7, 12($s0)
L11:
	nop
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
	.globl A_one
A_one:
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
	sw $s1, 8($s0)
	sw $s2, 12($s0)
	lw $s3, 8($s0)
	bne $s3, 1, L14
	lw $s4, 12($s0)
	bne $s4, 1, L14
	li $v1, 999
	move $s5, $v1
	move $a0, $s5
	jal _print
L14:
	nop
	lw $s6, 8($s0)
	li $v1, 1
	sne $s7, $s6, $v1
	bne $s7, 1, L16
	lw $t0, 12($s0)
	bne $t0, 1, fall
	li $v1, 888
	move $t1, $v1
	move $a0, $t1
	jal _print
	b L15
L16:
	nop
	li $v1, 333
	move $t2, $v1
	move $a0, $t2
	jal _print
L15:
	nop
	lw $t3, 8($s0)
	bne $t3, 1, L18
	lw $t4, 12($s0)
	bne $t4, 1, L18
	lw $t5, 12($s0)
	li $v1, 1
	sne $t6, $t5, $v1
	bne $t6, 1, L19
	lw $t7, 8($s0)
	bne $t7, 1, L17
L19:
	nop
L18:
	nop
	li $v1, 1
	move $t8, $v1
	sw $t8, 4($s0)
L17:
	nop
	lw $t9, 8($s0)
	bne $t9, 1, L20
	lw $s3, 8($s0)
	bne $s3, 1, L20
	lw $s4, 12($s0)
	bne $s4, 1, L20
	li $v1, 1
	move $s5, $v1
	sw $s5, 4($s0)
L20:
	nop
	lw $s6, 4($s0)
	li $v1, 11
	move $s7, $v1
	add $t0, $s6, $s7
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
	.globl A_set
A_set:
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
	sw $s1, 4($s0)
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
