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
	li $v1, 8
	move $s2, $v1
	move $a0, $s2
	jal _halloc
	move $s3, $v0
	la $s4, t061_run
	sw $s4, 0($s3)
	la $s5, t061_mark
	sw $s5, 4($s3)
	sw $s3, 0($s1)
	lw $s6, 0($s1)
	lw $s7, 0($s6)
	li $v1, 4
	move $t0, $v1
	move $a0, $t0
	jal _halloc
	move $t1, $v0
	li $v1, 8
	move $t2, $v1
	move $a0, $t2
	jal _halloc
	move $t3, $v0
	la $t4, t061_run
	sw $t4, 0($t3)
	la $t5, t061_mark
	sw $t5, 4($t3)
	sw $t3, 0($t1)
	move $a0, $s1
	move $a1, $t1
	jalr $s7
	move $t6, $v0
	move $a0, $t6
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl t061_mark
t061_mark:
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
	li $v1, 0
	move $s3, $v1
	move $s4, $s3
	bne $s2, 1, L6
	bne $s4, 1, L6
	li $v1, 1
	move $s5, $v1
	b L7
L6:
	li $v1, 0
	move $s5, $v1
L7:
	nop
	li $v1, 1
	sne $s6, $s5, $v1
	bne $s6, 1, L3
	bne $s2, 1, L12
	bne $s4, 1, L12
	li $v1, 1
	move $s7, $v1
	b L13
L12:
	li $v1, 0
	move $s7, $v1
L13:
	nop
	bne $s7, 1, L10
	li $v1, 1
	sne $t0, $s2, $v1
	bne $t0, 1, L14
	bne $s4, 1, L15
L14:
	li $v1, 1
	move $t1, $v1
	b L16
L15:
	li $v1, 0
	move $t1, $v1
L16:
	nop
	bne $t1, 1, L10
	li $v1, 1
	move $t2, $v1
	b L11
L10:
	li $v1, 0
	move $t2, $v1
L11:
	nop
	bne $t2, 1, L8
	bne $s2, 1, L8
	li $v1, 1
	move $t3, $v1
	b L9
L8:
	li $v1, 0
	move $t3, $v1
L9:
	nop
	bne $t3, 1, L4
L3:
	li $v1, 1
	move $t4, $v1
	b L5
L4:
	li $v1, 0
	move $t4, $v1
L5:
	nop
	li $v1, 1
	sne $t5, $t4, $v1
	bne $t5, 1, L0
	bne $s4, 1, L1
L0:
	li $v1, 1
	move $t6, $v1
	b L2
L1:
	li $v1, 0
	move $t6, $v1
L2:
	nop
	move $t7, $t6
	li $v1, 1
	sne $t8, $t7, $v1
	bne $t8, 1, L19
	li $v1, 0
	move $t9, $v1
	b L17
L19:
	nop
	bne $t7, 1, L20
	bne $s2, 1, L20
	li $v1, 1
	move $s1, $v1
	b L21
L20:
	li $v1, 0
	move $s1, $v1
L21:
	nop
	move $s3, $s1
	b L18
L17:
	nop
	li $v1, 1
	sne $s5, $s4, $v1
	bne $s5, 1, L22
	bne $s2, 1, L23
L22:
	li $v1, 1
	move $s6, $v1
	b L24
L23:
	li $v1, 0
	move $s6, $v1
L24:
	nop
	move $s3, $s6
L18:
	nop
	move $v0, $s3
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
	.globl t061_run
t061_run:
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
	li $v1, 2
	move $s2, $v1
	move $s3, $s2
	lw $s4, 0($s1)
	lw $s5, 4($s4)
	move $a0, $s1
	jalr $s5
	move $s6, $v0
	bne $s6, 1, L26
	move $s7, $s0
	lw $t0, 0($s7)
	lw $t1, 4($t0)
	move $a0, $s7
	jalr $t1
	move $t2, $v0
	move $t3, $t2
	b L27
L26:
	nop
	lw $t4, 0($s1)
	lw $t5, 4($t4)
	move $a0, $s1
	jalr $t5
	move $t6, $v0
	move $t3, $t6
L27:
	nop
	bne $t3, 1, L25
	li $v1, 4
	move $t7, $v1
	move $s3, $t7
L25:
	nop
	move $v0, $s3
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
