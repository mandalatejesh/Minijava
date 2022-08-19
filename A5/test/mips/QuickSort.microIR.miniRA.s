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
	la $s6, QS_Init
	sw $s6, 12($s2)
	la $s7, QS_Print
	sw $s7, 8($s2)
	la $t0, QS_Sort
	sw $t0, 4($s2)
	la $t1, QS_Start
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
	.globl QS_Start
QS_Start:
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
	lw $t1, 8($t0)
	move $a0, $s7
	jalr $t1
	move $t2, $v0
	move $s6, $t2
	li $v1, 9999
	move $t3, $v1
	move $a0, $t3
	jal _print
	lw $t4, 8($s0)
	li $v1, 1
	move $t5, $v1
	sub $t6, $t4, $t5
	move $s6, $t6
	move $t7, $s0
	lw $t8, 0($t7)
	lw $t9, 4($t8)
	li $v1, 0
	move $s3, $v1
	move $a0, $t7
	move $a1, $s3
	move $a2, $s6
	jalr $t9
	move $s2, $v0
	move $s6, $s2
	move $s4, $s0
	lw $s5, 0($s4)
	lw $t0, 8($s5)
	move $a0, $s4
	jalr $t0
	move $s7, $v0
	move $s6, $s7
	li $v1, 0
	move $t1, $v1
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
	.globl QS_Sort
QS_Sort:
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
	li $v1, 1
	move $s5, $v1
	sub $s6, $s2, $s5
	move $s7, $s6
	sle $t0, $s1, $s7
	bne $t0, 1, L2
	lw $t1, 4($s0)
	li $v1, 4
	move $t2, $v1
	mult $s2, $t2
	mflo $t3
	move $t4, $t3
	lw $t1, 4($s0)
	lw $t5, 0($t1)
	li $v1, 1
	move $t6, $v1
	sub $t7, $t5, $t6
	move $t8, $t7
	li $v1, 1
	move $t9, $v1
	sle $s3, $t4, $t8
	sub $s5, $t9, $s3
	bne $s5, 1, L4
	jal _error
L4:
	nop
	li $v1, 4
	move $s6, $v1
	add $s7, $t4, $s6
	add $t0, $t1, $s7
	lw $t2, 0($t0)
	move $t3, $t2
	li $v1, 1
	move $t5, $v1
	sub $t6, $s1, $t5
	move $t7, $t6
	move $t8, $s2
	li $v1, 1
	move $t9, $v1
	move $s3, $t9
L5:
	bne $s3, 1, L6
	li $v1, 1
	move $s5, $v1
	move $t4, $s5
L7:
	bne $t4, 1, L8
	li $v1, 1
	move $s6, $v1
	add $t1, $t7, $s6
	move $t7, $t1
	lw $s7, 4($s0)
	li $v1, 4
	move $t0, $v1
	mult $t7, $t0
	mflo $t2
	move $t5, $t2
	lw $s7, 4($s0)
	lw $t6, 0($s7)
	li $v1, 1
	move $t9, $v1
	sub $s5, $t6, $t9
	move $s6, $s5
	li $v1, 1
	move $t1, $v1
	sle $t0, $t5, $s6
	sub $t2, $t1, $t0
	bne $t2, 1, L9
	jal _error
L9:
	nop
	li $v1, 4
	move $t6, $v1
	add $t9, $t5, $t6
	add $s5, $s7, $t9
	lw $s6, 0($s5)
	move $t1, $s6
	li $v1, 1
	move $t0, $v1
	sub $t2, $t3, $t0
	move $t5, $t2
	li $v1, 1
	move $t6, $v1
	sle $s7, $t1, $t5
	sub $t9, $t6, $s7
	bne $t9, 1, L10
	li $v1, 0
	move $s5, $v1
	move $t4, $s5
	b L11
L10:
	li $v1, 1
	move $s6, $v1
	move $t4, $s6
L11:
	nop
	b L7
L8:
	nop
	li $v1, 1
	move $t0, $v1
	move $t4, $t0
L12:
	bne $t4, 1, L13
	li $v1, 1
	move $t2, $v1
	sub $t5, $t8, $t2
	move $t8, $t5
	lw $t6, 4($s0)
	li $v1, 4
	move $s7, $v1
	mult $t8, $s7
	mflo $t9
	move $s5, $t9
	lw $t6, 4($s0)
	lw $s6, 0($t6)
	li $v1, 1
	move $t0, $v1
	sub $t2, $s6, $t0
	move $t5, $t2
	li $v1, 1
	move $s7, $v1
	sle $t9, $s5, $t5
	sub $s6, $s7, $t9
	bne $s6, 1, L14
	jal _error
L14:
	nop
	li $v1, 4
	move $t0, $v1
	add $t2, $s5, $t0
	add $t5, $t6, $t2
	lw $s7, 0($t5)
	move $t1, $s7
	li $v1, 1
	move $t9, $v1
	sub $s6, $t1, $t9
	move $s5, $s6
	li $v1, 1
	move $t0, $v1
	sle $t6, $t3, $s5
	sub $t2, $t0, $t6
	bne $t2, 1, L15
	li $v1, 0
	move $t5, $v1
	move $t4, $t5
	b L16
L15:
	li $v1, 1
	move $s7, $v1
	move $t4, $s7
L16:
	nop
	b L12
L13:
	nop
	lw $t1, 4($s0)
	li $v1, 4
	move $t9, $v1
	mult $t7, $t9
	mflo $s6
	move $s5, $s6
	lw $t1, 4($s0)
	lw $t0, 0($t1)
	li $v1, 1
	move $t6, $v1
	sub $t2, $t0, $t6
	move $t5, $t2
	li $v1, 1
	move $t4, $v1
	sle $s7, $s5, $t5
	sub $t9, $t4, $s7
	bne $t9, 1, L17
	jal _error
L17:
	nop
	li $v1, 4
	move $s6, $v1
	add $t0, $s5, $s6
	add $t6, $t1, $t0
	lw $t2, 0($t6)
	move $s4, $t2
	li $v1, 1
	move $t5, $v1
	li $v1, 4
	move $t4, $v1
	mult $t5, $t4
	mflo $s7
	move $t9, $s7
	add $s5, $s0, $t9
	lw $s6, 0($s5)
	li $v1, 4
	move $t1, $v1
	mult $t7, $t1
	mflo $t0
	move $t6, $t0
	li $v1, 1
	move $t2, $v1
	li $v1, 4
	move $t5, $v1
	mult $t2, $t5
	mflo $t4
	move $t9, $t4
	add $s7, $s0, $t9
	lw $s6, 0($s7)
	lw $s5, 0($s6)
	li $v1, 1
	move $t1, $v1
	sub $t0, $s5, $t1
	move $t2, $t0
	li $v1, 1
	move $t5, $v1
	sle $t4, $t6, $t2
	sub $t9, $t5, $t4
	bne $t9, 1, L18
	jal _error
L18:
	nop
	li $v1, 4
	move $s7, $v1
	add $s5, $t6, $s7
	add $t1, $s6, $s5
	lw $t0, 4($s0)
	li $v1, 4
	move $t2, $v1
	mult $t8, $t2
	mflo $t5
	move $t4, $t5
	lw $t0, 4($s0)
	lw $t9, 0($t0)
	li $v1, 1
	move $t6, $v1
	sub $s7, $t9, $t6
	move $s6, $s7
	li $v1, 1
	move $s5, $v1
	sle $t2, $t4, $s6
	sub $t5, $s5, $t2
	bne $t5, 1, L19
	jal _error
L19:
	nop
	li $v1, 4
	move $t9, $v1
	add $t6, $t4, $t9
	add $s7, $t0, $t6
	lw $s6, 0($s7)
	sw $s6, 0($t1)
	li $v1, 1
	move $s5, $v1
	li $v1, 4
	move $t2, $v1
	mult $s5, $t2
	mflo $t5
	move $t4, $t5
	add $t9, $s0, $t4
	lw $t0, 0($t9)
	li $v1, 4
	move $t6, $v1
	mult $t8, $t6
	mflo $t1
	move $s7, $t1
	li $v1, 1
	move $s6, $v1
	li $v1, 4
	move $s5, $v1
	mult $s6, $s5
	mflo $t2
	move $t4, $t2
	add $t5, $s0, $t4
	lw $t0, 0($t5)
	lw $t9, 0($t0)
	li $v1, 1
	move $t6, $v1
	sub $t1, $t9, $t6
	move $s6, $t1
	li $v1, 1
	move $s5, $v1
	sle $t2, $s7, $s6
	sub $t4, $s5, $t2
	bne $t4, 1, L20
	jal _error
L20:
	nop
	li $v1, 4
	move $t5, $v1
	add $t9, $s7, $t5
	add $t6, $t0, $t9
	sw $s4, 0($t6)
	sle $t1, $t8, $t7
	bne $t1, 1, L21
	li $v1, 0
	move $s6, $v1
	move $s3, $s6
	b L22
L21:
	li $v1, 1
	move $s5, $v1
	move $s3, $s5
L22:
	nop
	b L5
L6:
	nop
	li $v1, 1
	move $t2, $v1
	li $v1, 4
	move $t4, $v1
	mult $t2, $t4
	mflo $s7
	move $t5, $s7
	add $t0, $s0, $t5
	lw $t9, 0($t0)
	li $v1, 4
	move $t6, $v1
	mult $t8, $t6
	mflo $t1
	move $s6, $t1
	li $v1, 1
	move $t3, $v1
	li $v1, 4
	move $s3, $v1
	mult $t3, $s3
	mflo $s5
	move $t5, $s5
	add $t2, $s0, $t5
	lw $t9, 0($t2)
	lw $t4, 0($t9)
	li $v1, 1
	move $s7, $v1
	sub $t0, $t4, $s7
	move $t8, $t0
	li $v1, 1
	move $t6, $v1
	sle $t1, $s6, $t8
	sub $t3, $t6, $t1
	bne $t3, 1, L23
	jal _error
L23:
	nop
	li $v1, 4
	move $s3, $v1
	add $s5, $s6, $s3
	add $t5, $t9, $s5
	lw $t2, 4($s0)
	li $v1, 4
	move $t4, $v1
	mult $t7, $t4
	mflo $s7
	move $t0, $s7
	lw $t2, 4($s0)
	lw $t8, 0($t2)
	li $v1, 1
	move $t6, $v1
	sub $t1, $t8, $t6
	move $t3, $t1
	li $v1, 1
	move $s6, $v1
	sle $s3, $t0, $t3
	sub $t9, $s6, $s3
	bne $t9, 1, L24
	jal _error
L24:
	nop
	li $v1, 4
	move $s5, $v1
	add $t4, $t0, $s5
	add $s7, $t2, $t4
	lw $t8, 0($s7)
	sw $t8, 0($t5)
	li $v1, 1
	move $t6, $v1
	li $v1, 4
	move $t1, $v1
	mult $t6, $t1
	mflo $t3
	move $s6, $t3
	add $s3, $s0, $s6
	lw $t9, 0($s3)
	li $v1, 4
	move $t0, $v1
	mult $t7, $t0
	mflo $s5
	move $t2, $s5
	li $v1, 1
	move $t4, $v1
	li $v1, 4
	move $t5, $v1
	mult $t4, $t5
	mflo $s7
	move $s6, $s7
	add $t8, $s0, $s6
	lw $t9, 0($t8)
	lw $t6, 0($t9)
	li $v1, 1
	move $t1, $v1
	sub $t3, $t6, $t1
	move $s3, $t3
	li $v1, 1
	move $t0, $v1
	sle $s5, $t2, $s3
	sub $t4, $t0, $s5
	bne $t4, 1, L25
	jal _error
L25:
	nop
	li $v1, 4
	move $t5, $v1
	add $s7, $t2, $t5
	add $s6, $t9, $s7
	lw $t8, 4($s0)
	li $v1, 4
	move $t6, $v1
	mult $s2, $t6
	mflo $t1
	move $t3, $t1
	lw $t8, 4($s0)
	lw $s3, 0($t8)
	li $v1, 1
	move $t0, $v1
	sub $s5, $s3, $t0
	move $t4, $s5
	li $v1, 1
	move $t2, $v1
	sle $t5, $t3, $t4
	sub $t9, $t2, $t5
	bne $t9, 1, L26
	jal _error
L26:
	nop
	li $v1, 4
	move $s7, $v1
	add $t6, $t3, $s7
	add $t1, $t8, $t6
	lw $s3, 0($t1)
	sw $s3, 0($s6)
	li $v1, 1
	move $t0, $v1
	li $v1, 4
	move $s5, $v1
	mult $t0, $s5
	mflo $t4
	move $t2, $t4
	add $t5, $s0, $t2
	lw $t9, 0($t5)
	li $v1, 4
	move $t3, $v1
	mult $s2, $t3
	mflo $s7
	move $t8, $s7
	li $v1, 1
	move $t6, $v1
	li $v1, 4
	move $s6, $v1
	mult $t6, $s6
	mflo $t1
	move $t2, $t1
	add $s3, $s0, $t2
	lw $t9, 0($s3)
	lw $t0, 0($t9)
	li $v1, 1
	move $s5, $v1
	sub $t4, $t0, $s5
	move $t5, $t4
	li $v1, 1
	move $t3, $v1
	sle $s7, $t8, $t5
	sub $t6, $t3, $s7
	bne $t6, 1, L27
	jal _error
L27:
	nop
	li $v1, 4
	move $s6, $v1
	add $t1, $t8, $s6
	add $t2, $t9, $t1
	sw $s4, 0($t2)
	move $s3, $s0
	lw $t0, 0($s3)
	lw $s5, 4($t0)
	li $v1, 1
	move $t4, $v1
	sub $t5, $t7, $t4
	move $a0, $s3
	move $a1, $s1
	move $a2, $t5
	jalr $s5
	move $t3, $v0
	move $s7, $t3
	move $t6, $s0
	lw $t8, 0($t6)
	lw $s6, 4($t8)
	li $v1, 1
	move $s4, $v1
	add $t9, $t7, $s4
	move $a0, $t6
	move $a1, $t9
	move $a2, $s2
	jalr $s6
	move $t1, $v0
	move $s7, $t1
	b L3
L2:
	li $v1, 0
	move $t2, $v1
	move $s7, $t2
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
	.globl QS_Print
QS_Print:
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
L28:
	lw $s3, 8($s0)
	li $v1, 1
	move $s4, $v1
	sub $s5, $s3, $s4
	move $s6, $s5
	sle $s7, $s2, $s6
	bne $s7, 1, L29
	lw $t0, 4($s0)
	li $v1, 4
	move $t1, $v1
	mult $s2, $t1
	mflo $t2
	move $t3, $t2
	lw $t0, 4($s0)
	lw $t4, 0($t0)
	li $v1, 1
	move $t5, $v1
	sub $t6, $t4, $t5
	move $t7, $t6
	li $v1, 1
	move $t8, $v1
	sle $t9, $t3, $t7
	sub $s1, $t8, $t9
	bne $s1, 1, L30
	jal _error
L30:
	nop
	li $v1, 4
	move $s3, $v1
	add $s4, $t3, $s3
	add $s5, $t0, $s4
	lw $s6, 0($s5)
	move $a0, $s6
	jal _print
	li $v1, 1
	move $s7, $v1
	add $t1, $s2, $s7
	move $s2, $t1
	b L28
L29:
	nop
	li $v1, 0
	move $t2, $v1
	move $v0, $t2
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
	.globl QS_Init
QS_Init:
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
L31:
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
	bne $t8, 1, L32
	add $t9, $s7, $t1
	li $v1, 0
	move $s2, $v1
	sw $s2, 0($t9)
	li $v1, 4
	move $s3, $v1
	add $s4, $t1, $s3
	move $t1, $s4
	b L31
L32:
	li $v1, 4
	move $s5, $v1
	mult $s1, $s5
	mflo $s6
	sw $s6, 0($s7)
	sw $s7, 4($s0)
	li $v1, 1
	move $t0, $v1
	li $v1, 4
	move $t2, $v1
	mult $t0, $t2
	mflo $t3
	move $t4, $t3
	add $t5, $s0, $t4
	lw $t6, 0($t5)
	li $v1, 0
	move $t7, $v1
	li $v1, 4
	move $t8, $v1
	mult $t7, $t8
	mflo $t9
	move $s2, $t9
	li $v1, 1
	move $s3, $v1
	li $v1, 4
	move $t1, $v1
	mult $s3, $t1
	mflo $s4
	move $t4, $s4
	add $s7, $s0, $t4
	lw $t6, 0($s7)
	lw $s5, 0($t6)
	li $v1, 1
	move $s6, $v1
	sub $t0, $s5, $s6
	move $t2, $t0
	li $v1, 1
	move $t3, $v1
	sle $t5, $s2, $t2
	sub $t7, $t3, $t5
	bne $t7, 1, L33
	jal _error
L33:
	nop
	li $v1, 4
	move $t8, $v1
	add $t9, $s2, $t8
	add $s3, $t6, $t9
	li $v1, 20
	move $t1, $v1
	sw $t1, 0($s3)
	li $v1, 1
	move $s4, $v1
	li $v1, 4
	move $t4, $v1
	mult $s4, $t4
	mflo $s7
	move $s5, $s7
	add $s6, $s0, $s5
	lw $t0, 0($s6)
	li $v1, 1
	move $t2, $v1
	li $v1, 4
	move $t3, $v1
	mult $t2, $t3
	mflo $t5
	move $t7, $t5
	li $v1, 1
	move $s2, $v1
	li $v1, 4
	move $t8, $v1
	mult $s2, $t8
	mflo $t6
	move $s5, $t6
	add $t9, $s0, $s5
	lw $t0, 0($t9)
	lw $s3, 0($t0)
	li $v1, 1
	move $t1, $v1
	sub $s4, $s3, $t1
	move $t4, $s4
	li $v1, 1
	move $s7, $v1
	sle $s6, $t7, $t4
	sub $t2, $s7, $s6
	bne $t2, 1, L34
	jal _error
L34:
	nop
	li $v1, 4
	move $t3, $v1
	add $t5, $t7, $t3
	add $s2, $t0, $t5
	li $v1, 7
	move $t8, $v1
	sw $t8, 0($s2)
	li $v1, 1
	move $t6, $v1
	li $v1, 4
	move $s5, $v1
	mult $t6, $s5
	mflo $t9
	move $s3, $t9
	add $t1, $s0, $s3
	lw $s4, 0($t1)
	li $v1, 2
	move $t4, $v1
	li $v1, 4
	move $s7, $v1
	mult $t4, $s7
	mflo $s6
	move $t2, $s6
	li $v1, 1
	move $t7, $v1
	li $v1, 4
	move $t3, $v1
	mult $t7, $t3
	mflo $t0
	move $s3, $t0
	add $t5, $s0, $s3
	lw $s4, 0($t5)
	lw $s2, 0($s4)
	li $v1, 1
	move $t8, $v1
	sub $t6, $s2, $t8
	move $s5, $t6
	li $v1, 1
	move $t9, $v1
	sle $t1, $t2, $s5
	sub $t4, $t9, $t1
	bne $t4, 1, L35
	jal _error
L35:
	nop
	li $v1, 4
	move $s7, $v1
	add $s6, $t2, $s7
	add $t7, $s4, $s6
	li $v1, 12
	move $t3, $v1
	sw $t3, 0($t7)
	li $v1, 1
	move $t0, $v1
	li $v1, 4
	move $s3, $v1
	mult $t0, $s3
	mflo $t5
	move $s2, $t5
	add $t8, $s0, $s2
	lw $t6, 0($t8)
	li $v1, 3
	move $s5, $v1
	li $v1, 4
	move $t9, $v1
	mult $s5, $t9
	mflo $t1
	move $t4, $t1
	li $v1, 1
	move $t2, $v1
	li $v1, 4
	move $s7, $v1
	mult $t2, $s7
	mflo $s4
	move $s2, $s4
	add $s6, $s0, $s2
	lw $t6, 0($s6)
	lw $t7, 0($t6)
	li $v1, 1
	move $t3, $v1
	sub $t0, $t7, $t3
	move $s3, $t0
	li $v1, 1
	move $t5, $v1
	sle $t8, $t4, $s3
	sub $s5, $t5, $t8
	bne $s5, 1, L36
	jal _error
L36:
	nop
	li $v1, 4
	move $t9, $v1
	add $t1, $t4, $t9
	add $t2, $t6, $t1
	li $v1, 18
	move $s7, $v1
	sw $s7, 0($t2)
	li $v1, 1
	move $s4, $v1
	li $v1, 4
	move $s2, $v1
	mult $s4, $s2
	mflo $s6
	move $t7, $s6
	add $t3, $s0, $t7
	lw $t0, 0($t3)
	li $v1, 4
	move $s3, $v1
	li $v1, 4
	move $t5, $v1
	mult $s3, $t5
	mflo $t8
	move $s5, $t8
	li $v1, 1
	move $t4, $v1
	li $v1, 4
	move $t9, $v1
	mult $t4, $t9
	mflo $t6
	move $t7, $t6
	add $t1, $s0, $t7
	lw $t0, 0($t1)
	lw $t2, 0($t0)
	li $v1, 1
	move $s7, $v1
	sub $s4, $t2, $s7
	move $s2, $s4
	li $v1, 1
	move $s6, $v1
	sle $t3, $s5, $s2
	sub $s3, $s6, $t3
	bne $s3, 1, L37
	jal _error
L37:
	nop
	li $v1, 4
	move $t5, $v1
	add $t8, $s5, $t5
	add $t4, $t0, $t8
	li $v1, 2
	move $t9, $v1
	sw $t9, 0($t4)
	li $v1, 1
	move $t6, $v1
	li $v1, 4
	move $t7, $v1
	mult $t6, $t7
	mflo $t1
	move $t2, $t1
	add $s7, $s0, $t2
	lw $s4, 0($s7)
	li $v1, 5
	move $s2, $v1
	li $v1, 4
	move $s6, $v1
	mult $s2, $s6
	mflo $t3
	move $s3, $t3
	li $v1, 1
	move $s5, $v1
	li $v1, 4
	move $t5, $v1
	mult $s5, $t5
	mflo $t0
	move $t2, $t0
	add $t8, $s0, $t2
	lw $s4, 0($t8)
	lw $t4, 0($s4)
	li $v1, 1
	move $t9, $v1
	sub $t6, $t4, $t9
	move $t7, $t6
	li $v1, 1
	move $t1, $v1
	sle $s7, $s3, $t7
	sub $s2, $t1, $s7
	bne $s2, 1, L38
	jal _error
L38:
	nop
	li $v1, 4
	move $s6, $v1
	add $t3, $s3, $s6
	add $s5, $s4, $t3
	li $v1, 11
	move $t5, $v1
	sw $t5, 0($s5)
	li $v1, 1
	move $t0, $v1
	li $v1, 4
	move $t2, $v1
	mult $t0, $t2
	mflo $t8
	move $t4, $t8
	add $t9, $s0, $t4
	lw $t6, 0($t9)
	li $v1, 6
	move $t7, $v1
	li $v1, 4
	move $t1, $v1
	mult $t7, $t1
	mflo $s7
	move $s2, $s7
	li $v1, 1
	move $s3, $v1
	li $v1, 4
	move $s6, $v1
	mult $s3, $s6
	mflo $s4
	move $t4, $s4
	add $t3, $s0, $t4
	lw $t6, 0($t3)
	lw $s5, 0($t6)
	li $v1, 1
	move $t5, $v1
	sub $t0, $s5, $t5
	move $t2, $t0
	li $v1, 1
	move $t8, $v1
	sle $t9, $s2, $t2
	sub $t7, $t8, $t9
	bne $t7, 1, L39
	jal _error
L39:
	nop
	li $v1, 4
	move $t1, $v1
	add $s7, $s2, $t1
	add $s3, $t6, $s7
	li $v1, 6
	move $s6, $v1
	sw $s6, 0($s3)
	li $v1, 1
	move $s4, $v1
	li $v1, 4
	move $t4, $v1
	mult $s4, $t4
	mflo $t3
	move $s5, $t3
	add $t5, $s0, $s5
	lw $t0, 0($t5)
	li $v1, 7
	move $t2, $v1
	li $v1, 4
	move $t8, $v1
	mult $t2, $t8
	mflo $t9
	move $t7, $t9
	li $v1, 1
	move $s2, $v1
	li $v1, 4
	move $t1, $v1
	mult $s2, $t1
	mflo $t6
	move $s5, $t6
	add $s7, $s0, $s5
	lw $t0, 0($s7)
	lw $s3, 0($t0)
	li $v1, 1
	move $s6, $v1
	sub $s4, $s3, $s6
	move $t4, $s4
	li $v1, 1
	move $t3, $v1
	sle $t5, $t7, $t4
	sub $t2, $t3, $t5
	bne $t2, 1, L40
	jal _error
L40:
	nop
	li $v1, 4
	move $t8, $v1
	add $t9, $t7, $t8
	add $s2, $t0, $t9
	li $v1, 9
	move $t1, $v1
	sw $t1, 0($s2)
	li $v1, 1
	move $t6, $v1
	li $v1, 4
	move $s5, $v1
	mult $t6, $s5
	mflo $s7
	move $s3, $s7
	add $s6, $s0, $s3
	lw $s4, 0($s6)
	li $v1, 8
	move $t4, $v1
	li $v1, 4
	move $t3, $v1
	mult $t4, $t3
	mflo $t5
	move $t2, $t5
	li $v1, 1
	move $t7, $v1
	li $v1, 4
	move $t8, $v1
	mult $t7, $t8
	mflo $t0
	move $s3, $t0
	add $t9, $s0, $s3
	lw $s4, 0($t9)
	lw $s2, 0($s4)
	li $v1, 1
	move $t1, $v1
	sub $t6, $s2, $t1
	move $s5, $t6
	li $v1, 1
	move $s7, $v1
	sle $s6, $t2, $s5
	sub $t4, $s7, $s6
	bne $t4, 1, L41
	jal _error
L41:
	nop
	li $v1, 4
	move $t3, $v1
	add $t5, $t2, $t3
	add $t7, $s4, $t5
	li $v1, 19
	move $t8, $v1
	sw $t8, 0($t7)
	li $v1, 1
	move $t0, $v1
	li $v1, 4
	move $s3, $v1
	mult $t0, $s3
	mflo $t9
	move $s2, $t9
	add $t1, $s0, $s2
	lw $t6, 0($t1)
	li $v1, 9
	move $s5, $v1
	li $v1, 4
	move $s7, $v1
	mult $s5, $s7
	mflo $s6
	move $t4, $s6
	li $v1, 1
	move $t2, $v1
	li $v1, 4
	move $t3, $v1
	mult $t2, $t3
	mflo $s4
	move $s2, $s4
	add $t5, $s0, $s2
	lw $t6, 0($t5)
	lw $t7, 0($t6)
	li $v1, 1
	move $t8, $v1
	sub $t0, $t7, $t8
	move $s3, $t0
	li $v1, 1
	move $t9, $v1
	sle $t1, $t4, $s3
	sub $s5, $t9, $t1
	bne $s5, 1, L42
	jal _error
L42:
	nop
	li $v1, 4
	move $s7, $v1
	add $s6, $t4, $s7
	add $t2, $t6, $s6
	li $v1, 5
	move $t3, $v1
	sw $t3, 0($t2)
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
