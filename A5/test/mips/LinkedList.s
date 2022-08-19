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
	li $v1, 4
	move $s2, $v1
	move $a0, $s2
	jal _halloc
	move $s3, $v0
	la $s4, LL_Start
	sw $s4, 0($s3)
	sw $s3, 0($s1)
	lw $s5, 0($s1)
	lw $s6, 0($s5)
	move $a0, $s1
	jalr $s6
	move $s7, $v0
	move $a0, $s7
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl Element_Init
Element_Init:
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
	move $s3, $a3
	sw $s1, 12($s0)
	sw $s2, 4($s0)
	sw $s3, 8($s0)
	li $v1, 1
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
	.globl Element_GetAge
Element_GetAge:
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
	lw $s1, 12($s0)
	move $v0, $s1
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
	.globl Element_GetSalary
Element_GetSalary:
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
	move $v0, $s1
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
	.globl Element_GetMarried
Element_GetMarried:
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
	move $v0, $s1
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
	.globl Element_Equal
Element_Equal:
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
	lw $s4, 0($s1)
	lw $s5, 4($s4)
	move $a0, $s1
	jalr $s5
	move $s6, $v0
	move $s7, $s6
	move $t0, $s0
	lw $t1, 0($t0)
	lw $t2, 12($t1)
	lw $t3, 12($s0)
	move $a0, $t0
	move $a1, $s7
	move $a2, $t3
	jalr $t2
	move $t4, $v0
	li $v1, 1
	sne $t5, $t4, $v1
	bne $t5, 1, L1
	li $v1, 0
	move $t6, $v1
	move $s3, $t6
	b L0
L1:
	nop
	lw $t7, 0($s1)
	lw $t8, 20($t7)
	move $a0, $s1
	jalr $t8
	move $t9, $v0
	move $s2, $t9
	move $s4, $s0
	lw $s5, 0($s4)
	lw $s6, 12($s5)
	lw $t1, 4($s0)
	move $a0, $s4
	move $a1, $s2
	move $a2, $t1
	jalr $s6
	move $s7, $v0
	li $v1, 1
	sne $t0, $s7, $v1
	bne $t0, 1, L3
	li $v1, 0
	move $t2, $v1
	move $s3, $t2
	b L2
L3:
	nop
	lw $t3, 8($s0)
	bne $t3, 1, L5
	lw $t4, 0($s1)
	lw $t5, 16($t4)
	move $a0, $s1
	jalr $t5
	move $t6, $v0
	li $v1, 1
	sne $t7, $t6, $v1
	bne $t7, 1, L7
	li $v1, 0
	move $t8, $v1
	move $s3, $t8
	b L6
L7:
	nop
	li $v1, 0
	move $t9, $v1
	move $s5, $t9
L6:
	nop
	b L4
L5:
	nop
	lw $s2, 0($s1)
	lw $s4, 16($s2)
	move $a0, $s1
	jalr $s4
	move $s6, $v0
	bne $s6, 1, L9
	li $v1, 0
	move $t1, $v1
	move $s3, $t1
	b L8
L9:
	nop
	li $v1, 0
	move $s7, $v1
	move $s5, $s7
L8:
	nop
L4:
	nop
L2:
	nop
L0:
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
	.globl Element_Compare
Element_Compare:
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
	sle $t0, $s1, $s2
	bne $t0, 1, L11
	sne $t1, $s1, $s2
	bne $t1, 1, L11
	li $v1, 0
	move $t2, $v1
	move $s4, $t2
	b L10
L11:
	nop
	li $v1, 1
	move $t3, $v1
	sub $t4, $s7, $t3
	sle $t5, $s1, $t4
	li $v1, 1
	sne $t6, $t5, $v1
	bne $t6, 1, L13
	li $v1, 0
	move $t7, $v1
	move $s4, $t7
	b L12
L13:
	nop
	li $v1, 1
	move $t8, $v1
	move $s4, $t8
L12:
	nop
L10:
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
	.globl List_Init
List_Init:
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
	sw $s1, 12($s0)
	li $v1, 1
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
	.globl List_InitNew
List_InitNew:
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
	move $s3, $a3
	sw $s3, 12($s0)
	sw $s1, 4($s0)
	sw $s2, 8($s0)
	li $v1, 1
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
	.globl List_Insert
List_Insert:
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
	move $s3, $s2
	li $v1, 16
	move $s4, $v1
	move $a0, $s4
	jal _halloc
	move $s5, $v0
	li $v1, 40
	move $s6, $v1
	move $a0, $s6
	jal _halloc
	move $s7, $v0
	la $t0, List_Delete
	sw $t0, 24($s7)
	la $t1, List_Search
	sw $t1, 28($s7)
	la $t2, List_Insert
	sw $t2, 36($s7)
	la $t3, List_InitNew
	sw $t3, 16($s7)
	la $t4, List_SetNext
	sw $t4, 8($s7)
	la $t5, List_Init
	sw $t5, 0($s7)
	la $t6, List_GetNext
	sw $t6, 12($s7)
	la $t7, List_GetEnd
	sw $t7, 32($s7)
	la $t8, List_Print
	sw $t8, 20($s7)
	la $t9, List_GetElem
	sw $t9, 4($s7)
	sw $s7, 0($s5)
	move $s2, $s5
	lw $s4, 0($s2)
	lw $s6, 16($s4)
	li $v1, 0
	move $t0, $v1
	move $a0, $s2
	move $a1, $s1
	move $a2, $s3
	move $a3, $t0
	jalr $s6
	move $t1, $v0
	move $t2, $t1
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
	.globl List_SetNext
List_SetNext:
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
	.globl List_Delete
List_Delete:
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
	move $s3, $s2
	li $v1, 0
	move $s4, $v1
	move $s5, $s4
	li $v1, 0
	move $s6, $v1
	li $v1, 1
	move $s7, $v1
	sub $t0, $s6, $s7
	move $t1, $t0
	move $t2, $s0
	move $t3, $t2
	move $t4, $s0
	move $t5, $t4
	lw $t6, 12($s0)
	move $t7, $t6
	lw $t8, 4($s0)
	move $t9, $t8
L14:
	nop
	li $v1, 1
	sne $s2, $t7, $v1
	bne $s2, 1, L15
	li $v1, 1
	sne $s4, $s5, $v1
	bne $s4, 1, L15
	lw $s6, 0($s1)
	lw $s7, 8($s6)
	move $a0, $s1
	move $a1, $t9
	jalr $s7
	move $t0, $v0
	bne $t0, 1, L17
	li $v1, 1
	move $t2, $v1
	move $s5, $t2
	li $v1, 0
	move $t4, $v1
	sle $t6, $t1, $t4
	bne $t6, 1, L19
	li $v1, 0
	move $t8, $v1
	sne $s2, $t1, $t8
	bne $s2, 1, L19
	lw $s4, 0($t3)
	lw $s6, 12($s4)
	move $a0, $t3
	jalr $s6
	move $s7, $v0
	move $s3, $s7
	b L18
L19:
	nop
	li $v1, 0
	move $t0, $v1
	li $v1, 555
	move $t2, $v1
	sub $t4, $t0, $t2
	move $a0, $t4
	jal _print
	lw $t6, 0($t5)
	lw $t8, 8($t6)
	lw $s2, 0($t3)
	lw $s4, 12($s2)
	move $a0, $t3
	jalr $s4
	move $s6, $v0
	move $a0, $t5
	move $a1, $s6
	jalr $t8
	move $s7, $v0
	move $t0, $s7
	li $v1, 0
	move $t2, $v1
	li $v1, 555
	move $t4, $v1
	sub $t6, $t2, $t4
	move $a0, $t6
	jal _print
L18:
	nop
	b L16
L17:
	nop
	li $v1, 0
	move $s2, $v1
	move $s4, $s2
L16:
	nop
	li $v1, 1
	sne $t8, $s5, $v1
	bne $t8, 1, L21
	move $t5, $t3
	lw $s6, 0($t3)
	lw $s7, 12($s6)
	move $a0, $t3
	jalr $s7
	move $t0, $v0
	move $t3, $t0
	lw $t2, 0($t3)
	lw $t4, 32($t2)
	move $a0, $t3
	jalr $t4
	move $t6, $v0
	move $t7, $t6
	lw $s2, 0($t3)
	lw $t8, 4($s2)
	move $a0, $t3
	jalr $t8
	move $s6, $v0
	move $t9, $s6
	li $v1, 1
	move $s7, $v1
	move $t1, $s7
	b L20
L21:
	nop
	li $v1, 0
	move $t0, $v1
	move $s4, $t0
L20:
	nop
	b L14
L15:
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
	.globl List_Search
List_Search:
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
	move $s4, $s0
	move $s5, $s4
	lw $s6, 12($s0)
	move $s7, $s6
	lw $t0, 4($s0)
	move $t1, $t0
L22:
	nop
	li $v1, 1
	sne $t2, $s7, $v1
	bne $t2, 1, L23
	lw $t3, 0($s1)
	lw $t4, 8($t3)
	move $a0, $s1
	move $a1, $t1
	jalr $t4
	move $t5, $v0
	bne $t5, 1, L25
	li $v1, 1
	move $t6, $v1
	move $s3, $t6
	b L24
L25:
	nop
	li $v1, 0
	move $t7, $v1
	move $t8, $t7
L24:
	nop
	lw $t9, 0($s5)
	lw $s2, 12($t9)
	move $a0, $s5
	jalr $s2
	move $s4, $v0
	move $s5, $s4
	lw $s6, 0($s5)
	lw $t0, 32($s6)
	move $a0, $s5
	jalr $t0
	move $t2, $v0
	move $s7, $t2
	lw $t3, 0($s5)
	lw $t4, 4($t3)
	move $a0, $s5
	jalr $t4
	move $t5, $v0
	move $t1, $t5
	b L22
L23:
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
	.globl List_GetEnd
List_GetEnd:
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
	lw $s1, 12($s0)
	move $v0, $s1
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
	.globl List_GetElem
List_GetElem:
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
	move $v0, $s1
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
	.globl List_GetNext
List_GetNext:
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
	move $v0, $s1
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
	.globl List_Print
List_Print:
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
	move $s1, $s0
	move $s2, $s1
	lw $s3, 12($s0)
	move $s4, $s3
	lw $s5, 4($s0)
	move $s6, $s5
L26:
	nop
	li $v1, 1
	sne $s7, $s4, $v1
	bne $s7, 1, L27
	lw $t0, 0($s6)
	lw $t1, 4($t0)
	move $a0, $s6
	jalr $t1
	move $t2, $v0
	move $a0, $t2
	jal _print
	lw $t3, 0($s2)
	lw $t4, 12($t3)
	move $a0, $s2
	jalr $t4
	move $t5, $v0
	move $s2, $t5
	lw $t6, 0($s2)
	lw $t7, 32($t6)
	move $a0, $s2
	jalr $t7
	move $t8, $v0
	move $s4, $t8
	lw $t9, 0($s2)
	lw $s1, 4($t9)
	move $a0, $s2
	jalr $s1
	move $s3, $v0
	move $s6, $s3
	b L26
L27:
	nop
	li $v1, 1
	move $s5, $v1
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
	.globl LL_Start
LL_Start:
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
	li $v1, 16
	move $s1, $v1
	move $a0, $s1
	jal _halloc
	move $s2, $v0
	li $v1, 40
	move $s3, $v1
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	la $s5, List_Delete
	sw $s5, 24($s4)
	la $s6, List_Search
	sw $s6, 28($s4)
	la $s7, List_Insert
	sw $s7, 36($s4)
	la $t0, List_InitNew
	sw $t0, 16($s4)
	la $t1, List_SetNext
	sw $t1, 8($s4)
	la $t2, List_Init
	sw $t2, 0($s4)
	la $t3, List_GetNext
	sw $t3, 12($s4)
	la $t4, List_GetEnd
	sw $t4, 32($s4)
	la $t5, List_Print
	sw $t5, 20($s4)
	la $t6, List_GetElem
	sw $t6, 4($s4)
	sw $s4, 0($s2)
	move $t7, $s2
	lw $t8, 0($t7)
	lw $t9, 0($t8)
	move $a0, $t7
	jalr $t9
	move $s1, $v0
	move $s3, $s1
	move $s5, $t7
	lw $s6, 0($s5)
	lw $s7, 0($s6)
	move $a0, $s5
	jalr $s7
	move $t0, $v0
	move $s3, $t0
	lw $t1, 0($s5)
	lw $t2, 20($t1)
	move $a0, $s5
	jalr $t2
	move $t3, $v0
	move $s3, $t3
	li $v1, 16
	move $t4, $v1
	move $a0, $t4
	jal _halloc
	move $t5, $v0
	li $v1, 24
	move $s4, $v1
	move $a0, $s4
	jal _halloc
	move $t6, $v0
	la $s2, Element_GetAge
	sw $s2, 4($t6)
	la $t8, Element_Compare
	sw $t8, 12($t6)
	la $t9, Element_Init
	sw $t9, 0($t6)
	la $s1, Element_GetMarried
	sw $s1, 16($t6)
	la $t7, Element_GetSalary
	sw $t7, 20($t6)
	la $s6, Element_Equal
	sw $s6, 8($t6)
	sw $t6, 0($t5)
	move $s7, $t5
	lw $t0, 0($s7)
	lw $t1, 0($t0)
	li $v1, 25
	move $t2, $v1
	li $v1, 37000
	move $t3, $v1
	li $v1, 0
	move $t4, $v1
	move $a0, $s7
	move $a1, $t2
	move $a2, $t3
	move $a3, $t4
	jalr $t1
	move $s4, $v0
	move $s3, $s4
	lw $s2, 0($s5)
	lw $t8, 36($s2)
	move $a0, $s5
	move $a1, $s7
	jalr $t8
	move $t9, $v0
	move $s5, $t9
	lw $s1, 0($s5)
	lw $t7, 20($s1)
	move $a0, $s5
	jalr $t7
	move $t6, $v0
	move $s3, $t6
	li $v1, 10000000
	move $s6, $v1
	move $a0, $s6
	jal _print
	li $v1, 16
	move $t5, $v1
	move $a0, $t5
	jal _halloc
	move $t0, $v0
	li $v1, 24
	move $t1, $v1
	move $a0, $t1
	jal _halloc
	move $t2, $v0
	la $t3, Element_GetAge
	sw $t3, 4($t2)
	la $t4, Element_Compare
	sw $t4, 12($t2)
	la $s4, Element_Init
	sw $s4, 0($t2)
	la $s2, Element_GetMarried
	sw $s2, 16($t2)
	la $t8, Element_GetSalary
	sw $t8, 20($t2)
	la $t9, Element_Equal
	sw $t9, 8($t2)
	sw $t2, 0($t0)
	move $s7, $t0
	lw $s1, 0($s7)
	lw $t7, 0($s1)
	li $v1, 39
	move $t6, $v1
	li $v1, 42000
	move $s6, $v1
	li $v1, 1
	move $t5, $v1
	move $a0, $s7
	move $a1, $t6
	move $a2, $s6
	move $a3, $t5
	jalr $t7
	move $t1, $v0
	move $s3, $t1
	move $t3, $s7
	lw $t4, 0($s5)
	lw $s4, 36($t4)
	move $a0, $s5
	move $a1, $s7
	jalr $s4
	move $s2, $v0
	move $s5, $s2
	lw $t8, 0($s5)
	lw $t2, 20($t8)
	move $a0, $s5
	jalr $t2
	move $t9, $v0
	move $s3, $t9
	li $v1, 10000000
	move $t0, $v1
	move $a0, $t0
	jal _print
	li $v1, 16
	move $s1, $v1
	move $a0, $s1
	jal _halloc
	move $t7, $v0
	li $v1, 24
	move $t6, $v1
	move $a0, $t6
	jal _halloc
	move $s6, $v0
	la $t5, Element_GetAge
	sw $t5, 4($s6)
	la $t1, Element_Compare
	sw $t1, 12($s6)
	la $t4, Element_Init
	sw $t4, 0($s6)
	la $s4, Element_GetMarried
	sw $s4, 16($s6)
	la $s2, Element_GetSalary
	sw $s2, 20($s6)
	la $t8, Element_Equal
	sw $t8, 8($s6)
	sw $s6, 0($t7)
	move $s7, $t7
	lw $t2, 0($s7)
	lw $t9, 0($t2)
	li $v1, 22
	move $t0, $v1
	li $v1, 34000
	move $s1, $v1
	li $v1, 0
	move $t6, $v1
	move $a0, $s7
	move $a1, $t0
	move $a2, $s1
	move $a3, $t6
	jalr $t9
	move $t5, $v0
	move $s3, $t5
	lw $t1, 0($s5)
	lw $t4, 36($t1)
	move $a0, $s5
	move $a1, $s7
	jalr $t4
	move $s4, $v0
	move $s5, $s4
	lw $s2, 0($s5)
	lw $s6, 20($s2)
	move $a0, $s5
	jalr $s6
	move $t8, $v0
	move $s3, $t8
	li $v1, 16
	move $t7, $v1
	move $a0, $t7
	jal _halloc
	move $t2, $v0
	li $v1, 24
	move $t9, $v1
	move $a0, $t9
	jal _halloc
	move $t0, $v0
	la $s1, Element_GetAge
	sw $s1, 4($t0)
	la $t6, Element_Compare
	sw $t6, 12($t0)
	la $t5, Element_Init
	sw $t5, 0($t0)
	la $t1, Element_GetMarried
	sw $t1, 16($t0)
	la $t4, Element_GetSalary
	sw $t4, 20($t0)
	la $s4, Element_Equal
	sw $s4, 8($t0)
	sw $t0, 0($t2)
	move $s2, $t2
	lw $s6, 0($s2)
	lw $t8, 0($s6)
	li $v1, 27
	move $t7, $v1
	li $v1, 34000
	move $t9, $v1
	li $v1, 0
	move $s1, $v1
	move $a0, $s2
	move $a1, $t7
	move $a2, $t9
	move $a3, $s1
	jalr $t8
	move $t6, $v0
	move $s3, $t6
	lw $t5, 0($s5)
	lw $t1, 28($t5)
	move $a0, $s5
	move $a1, $t3
	jalr $t1
	move $t4, $v0
	move $a0, $t4
	jal _print
	lw $t0, 0($s5)
	lw $s4, 28($t0)
	move $a0, $s5
	move $a1, $s2
	jalr $s4
	move $t2, $v0
	move $a0, $t2
	jal _print
	li $v1, 10000000
	move $s6, $v1
	move $a0, $s6
	jal _print
	li $v1, 16
	move $t8, $v1
	move $a0, $t8
	jal _halloc
	move $t7, $v0
	li $v1, 24
	move $t9, $v1
	move $a0, $t9
	jal _halloc
	move $s1, $v0
	la $t6, Element_GetAge
	sw $t6, 4($s1)
	la $t5, Element_Compare
	sw $t5, 12($s1)
	la $t1, Element_Init
	sw $t1, 0($s1)
	la $t4, Element_GetMarried
	sw $t4, 16($s1)
	la $t0, Element_GetSalary
	sw $t0, 20($s1)
	la $s2, Element_Equal
	sw $s2, 8($s1)
	sw $s1, 0($t7)
	move $s7, $t7
	lw $s4, 0($s7)
	lw $t2, 0($s4)
	li $v1, 28
	move $s6, $v1
	li $v1, 35000
	move $t8, $v1
	li $v1, 0
	move $t9, $v1
	move $a0, $s7
	move $a1, $s6
	move $a2, $t8
	move $a3, $t9
	jalr $t2
	move $t6, $v0
	move $s3, $t6
	lw $t5, 0($s5)
	lw $t1, 36($t5)
	move $a0, $s5
	move $a1, $s7
	jalr $t1
	move $t4, $v0
	move $s5, $t4
	lw $t0, 0($s5)
	lw $s1, 20($t0)
	move $a0, $s5
	jalr $s1
	move $s2, $v0
	move $s3, $s2
	li $v1, 2220000
	move $t7, $v1
	move $a0, $t7
	jal _print
	lw $s4, 0($s5)
	lw $t2, 24($s4)
	move $a0, $s5
	move $a1, $t3
	jalr $t2
	move $s6, $v0
	move $s5, $s6
	lw $t8, 0($s5)
	lw $t9, 20($t8)
	move $a0, $s5
	jalr $t9
	move $t6, $v0
	move $s3, $t6
	li $v1, 33300000
	move $t5, $v1
	move $a0, $t5
	jal _print
	lw $t1, 0($s5)
	lw $t4, 24($t1)
	move $a0, $s5
	move $a1, $s7
	jalr $t4
	move $t0, $v0
	move $s5, $t0
	lw $s1, 0($s5)
	lw $s2, 20($s1)
	move $a0, $s5
	jalr $s2
	move $t7, $v0
	move $s3, $t7
	li $v1, 44440000
	move $s4, $v1
	move $a0, $s4
	jal _print
	li $v1, 0
	move $t3, $v1
	move $v0, $t3
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
