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
	li $v1, 24
	move $s2, $v1
	move $a0, $s2
	jal _halloc
	move $s3, $v0
	la $s4, BS_Div
	sw $s4, 20($s3)
	la $s5, BS_Init
	sw $s5, 4($s3)
	la $s6, BS_Print
	sw $s6, 8($s3)
	la $s7, BS_Search
	sw $s7, 12($s3)
	la $t0, BS_Compare
	sw $t0, 16($s3)
	la $t1, BS_Start
	sw $t1, 0($s3)
	sw $s3, 0($s1)
	lw $t2, 0($s1)
	lw $t3, 0($t2)
	li $v1, 20
	move $t4, $v1
	li $v1, 0
	move $t5, $v1
	add $t6, $t4, $t5
	move $a0, $s1
	move $a1, $t6
	jalr $t3
	move $t7, $v0
	move $a0, $t7
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl BS_Start
BS_Start:
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
	move $t4, $s0
	lw $t5, 0($t4)
	lw $t6, 12($t5)
	li $v1, 8
	move $t7, $v1
	move $a0, $t4
	move $a1, $t7
	jalr $t6
	move $t8, $v0
	bne $t8, 1, L1
	li $v1, 1
	move $t9, $v1
	li $v1, 0
	move $s3, $v1
	add $s2, $t9, $s3
	move $a0, $s2
	jal _print
	b L0
L1:
	nop
	li $v1, 0
	move $s4, $v1
	li $v1, 0
	move $s5, $v1
	add $s6, $s4, $s5
	move $a0, $s6
	jal _print
L0:
	nop
	move $t0, $s0
	lw $s7, 0($t0)
	lw $t1, 12($s7)
	li $v1, 19
	move $t2, $v1
	move $a0, $t0
	move $a1, $t2
	jalr $t1
	move $t3, $v0
	bne $t3, 1, L3
	li $v1, 1
	move $t5, $v1
	li $v1, 0
	move $t4, $v1
	add $t6, $t5, $t4
	move $a0, $t6
	jal _print
	b L2
L3:
	nop
	li $v1, 0
	move $t7, $v1
	li $v1, 0
	move $t8, $v1
	add $t9, $t7, $t8
	move $a0, $t9
	jal _print
L2:
	nop
	move $s3, $s0
	lw $s2, 0($s3)
	lw $s4, 12($s2)
	li $v1, 20
	move $s5, $v1
	move $a0, $s3
	move $a1, $s5
	jalr $s4
	move $s6, $v0
	bne $s6, 1, L5
	li $v1, 1
	move $s7, $v1
	li $v1, 0
	move $t0, $v1
	add $t1, $s7, $t0
	move $a0, $t1
	jal _print
	b L4
L5:
	nop
	li $v1, 0
	move $t2, $v1
	li $v1, 0
	move $t3, $v1
	add $t5, $t2, $t3
	move $a0, $t5
	jal _print
L4:
	nop
	move $t4, $s0
	lw $t6, 0($t4)
	lw $t7, 12($t6)
	li $v1, 21
	move $t8, $v1
	move $a0, $t4
	move $a1, $t8
	jalr $t7
	move $t9, $v0
	bne $t9, 1, L7
	li $v1, 1
	move $s2, $v1
	li $v1, 0
	move $s3, $v1
	add $s4, $s2, $s3
	move $a0, $s4
	jal _print
	b L6
L7:
	nop
	li $v1, 0
	move $s5, $v1
	li $v1, 0
	move $s6, $v1
	add $s7, $s5, $s6
	move $a0, $s7
	jal _print
L6:
	nop
	move $t0, $s0
	lw $t1, 0($t0)
	lw $t2, 12($t1)
	li $v1, 37
	move $t3, $v1
	move $a0, $t0
	move $a1, $t3
	jalr $t2
	move $t5, $v0
	bne $t5, 1, L9
	li $v1, 1
	move $t6, $v1
	li $v1, 0
	move $t4, $v1
	add $t7, $t6, $t4
	move $a0, $t7
	jal _print
	b L8
L9:
	nop
	li $v1, 0
	move $t8, $v1
	li $v1, 0
	move $t9, $v1
	add $s2, $t8, $t9
	move $a0, $s2
	jal _print
L8:
	nop
	move $s3, $s0
	lw $s4, 0($s3)
	lw $s5, 12($s4)
	li $v1, 38
	move $s6, $v1
	move $a0, $s3
	move $a1, $s6
	jalr $s5
	move $s7, $v0
	bne $s7, 1, L11
	li $v1, 1
	move $t1, $v1
	li $v1, 0
	move $t0, $v1
	add $t2, $t1, $t0
	move $a0, $t2
	jal _print
	b L10
L11:
	nop
	li $v1, 0
	move $t3, $v1
	li $v1, 0
	move $t5, $v1
	add $t6, $t3, $t5
	move $a0, $t6
	jal _print
L10:
	nop
	move $t4, $s0
	lw $t7, 0($t4)
	lw $t8, 12($t7)
	li $v1, 39
	move $t9, $v1
	move $a0, $t4
	move $a1, $t9
	jalr $t8
	move $s2, $v0
	bne $s2, 1, L13
	li $v1, 1
	move $s4, $v1
	li $v1, 0
	move $s3, $v1
	add $s5, $s4, $s3
	move $a0, $s5
	jal _print
	b L12
L13:
	nop
	li $v1, 0
	move $s6, $v1
	li $v1, 0
	move $s7, $v1
	add $t1, $s6, $s7
	move $a0, $t1
	jal _print
L12:
	nop
	move $t0, $s0
	lw $t2, 0($t0)
	lw $t3, 12($t2)
	li $v1, 50
	move $t5, $v1
	move $a0, $t0
	move $a1, $t5
	jalr $t3
	move $t6, $v0
	bne $t6, 1, L15
	li $v1, 1
	move $t7, $v1
	li $v1, 0
	move $t4, $v1
	add $t8, $t7, $t4
	move $a0, $t8
	jal _print
	b L14
L15:
	nop
	li $v1, 0
	move $t9, $v1
	li $v1, 0
	move $s2, $v1
	add $s4, $t9, $s2
	move $a0, $s4
	jal _print
L14:
	nop
	li $v1, 999
	move $s3, $v1
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
	.globl BS_Search
BS_Search:
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
	li $v1, 0
	move $s2, $v1
	move $s3, $s2
	li $v1, 0
	move $s4, $v1
	move $s5, $s4
	lw $s6, 4($s0)
	lw $s7, 0($s6)
	move $t0, $s7
	li $v1, 1
	move $t1, $v1
	sub $t2, $t0, $t1
	move $t0, $t2
	li $v1, 0
	move $t3, $v1
	move $t4, $t3
	li $v1, 1
	move $t5, $v1
	move $t6, $t5
L16:
	nop
	bne $t6, 1, L17
	add $t7, $t4, $t0
	move $t8, $t7
	move $t9, $s0
	lw $s2, 0($t9)
	lw $s4, 20($s2)
	move $a0, $t9
	move $a1, $t8
	jalr $s4
	move $s6, $v0
	move $t8, $s6
	lw $s7, 4($s0)
	li $v1, 4
	mult $t8, $v1
	mflo $t1
	add $t2, $s7, $t1
	lw $t3, 4($t2)
	move $s3, $t3
	li $v1, 1
	move $t5, $v1
	sub $t7, $s3, $t5
	sle $s2, $s1, $t7
	bne $s2, 1, L19
	li $v1, 1
	move $t9, $v1
	sub $s4, $t8, $t9
	move $t0, $s4
	b L18
L19:
	nop
	li $v1, 1
	move $s6, $v1
	add $s7, $t8, $s6
	move $t4, $s7
L18:
	nop
	move $t1, $s0
	lw $t2, 0($t1)
	lw $t3, 16($t2)
	move $a0, $t1
	move $a1, $s3
	move $a2, $s1
	jalr $t3
	move $t5, $v0
	bne $t5, 1, L21
	li $v1, 0
	move $t7, $v1
	move $t6, $t7
	b L20
L21:
	nop
	li $v1, 1
	move $s2, $v1
	move $t6, $s2
L20:
	nop
	li $v1, 1
	move $t9, $v1
	sub $s4, $t4, $t9
	sle $t8, $t0, $s4
	bne $t8, 1, L23
	li $v1, 0
	move $s6, $v1
	move $t6, $s6
	b L22
L23:
	nop
	li $v1, 0
	move $s7, $v1
	move $t2, $s7
L22:
	nop
	b L16
L17:
	nop
	move $t1, $s0
	lw $t3, 0($t1)
	lw $t5, 16($t3)
	move $a0, $t1
	move $a1, $s3
	move $a2, $s1
	jalr $t5
	move $t7, $v0
	bne $t7, 1, L25
	li $v1, 1
	move $s2, $v1
	move $s5, $s2
	b L24
L25:
	nop
	li $v1, 0
	move $t9, $v1
	move $s5, $t9
L24:
	nop
	move $v0, $s5
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
	.globl BS_Div
BS_Div:
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
	li $v1, 0
	move $s2, $v1
	move $s3, $s2
	li $v1, 0
	move $s4, $v1
	move $s5, $s4
	li $v1, 1
	move $s6, $v1
	sub $s7, $s1, $s6
	move $t0, $s7
L26:
	nop
	sle $t1, $s5, $t0
	bne $t1, 1, L27
	sne $t2, $s5, $t0
	bne $t2, 1, L27
	li $v1, 1
	move $t3, $v1
	add $t4, $s3, $t3
	move $s3, $t4
	li $v1, 2
	move $t5, $v1
	add $t6, $s5, $t5
	move $s5, $t6
	b L26
L27:
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
	.globl BS_Compare
BS_Compare:
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
	add $s6, $s2, $s5
	move $s7, $s6
	li $v1, 1
	move $t0, $v1
	sub $t1, $s2, $t0
	sle $t2, $s1, $t1
	bne $t2, 1, L29
	li $v1, 0
	move $t3, $v1
	move $s4, $t3
	b L28
L29:
	nop
	li $v1, 1
	move $t4, $v1
	sub $t5, $s7, $t4
	sle $t6, $s1, $t5
	li $v1, 1
	sne $t7, $t6, $v1
	bne $t7, 1, L31
	li $v1, 0
	move $t8, $v1
	move $s4, $t8
	b L30
L31:
	nop
	li $v1, 1
	move $t9, $v1
	move $s4, $t9
L30:
	nop
L28:
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
	.globl BS_Print
BS_Print:
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
L32:
	nop
	lw $s3, 8($s0)
	sle $s4, $s2, $s3
	bne $s4, 1, L33
	lw $s5, 8($s0)
	sne $s6, $s2, $s5
	bne $s6, 1, L33
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
	b L32
L33:
	nop
	li $v1, 9999
	move $t5, $v1
	li $v1, 0
	move $t6, $v1
	add $t7, $t5, $t6
	move $a0, $t7
	jal _print
	li $v1, 0
	move $t8, $v1
	move $v0, $t8
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
	.globl BS_Init
BS_Init:
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
	li $v1, 0
	move $s6, $v1
	lw $s7, 4($s0)
	li $v1, 4
	mult $s5, $v1
	mflo $t0
	add $t1, $s7, $t0
	sw $s6, 4($t1)
	li $v1, 1
	move $t2, $v1
	move $t3, $t2
	lw $t4, 8($s0)
	li $v1, 1
	move $t5, $v1
	add $t6, $t4, $t5
	move $t7, $t6
L34:
	nop
	lw $t8, 8($s0)
	li $v1, 1
	move $t9, $v1
	sub $s2, $t8, $t9
	sle $s3, $t3, $s2
	bne $s3, 1, L35
	li $v1, 2
	move $s4, $v1
	mult $s4, $t3
	mflo $s5
	move $s6, $s5
	li $v1, 3
	move $s7, $v1
	sub $t0, $t7, $s7
	move $t1, $t0
	add $t2, $s6, $t1
	lw $t4, 4($s0)
	li $v1, 4
	mult $t3, $v1
	mflo $t5
	add $t6, $t4, $t5
	sw $t2, 4($t6)
	li $v1, 1
	move $t8, $v1
	add $t9, $t3, $t8
	move $t3, $t9
	li $v1, 1
	move $s2, $v1
	sub $s3, $t7, $s2
	move $t7, $s3
	b L34
L35:
	nop
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
