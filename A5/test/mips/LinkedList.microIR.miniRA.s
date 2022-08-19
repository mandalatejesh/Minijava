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
	move $s2, $s1
	li $v1, 4
	move $s3, $v1
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	move $s5, $s4
	la $s6, LL_Start
	sw $s6, 0($s2)
	sw $s2, 0($s5)
	move $s7, $s5
	lw $t0, 0($s7)
	lw $t1, 0($t0)
	move $a0, $s7
	jalr $t1
	move $t2, $v0
	move $a0, $t2
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
	sw $s1, 4($s0)
	sw $s2, 8($s0)
	sw $s3, 12($s0)
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
	move $s4, $s1
	lw $s5, 0($s4)
	lw $s6, 4($s5)
	move $a0, $s4
	jalr $s6
	move $s7, $v0
	move $t0, $s7
	li $v1, 1
	move $t1, $v1
	move $t2, $s0
	lw $t3, 0($t2)
	lw $t4, 20($t3)
	lw $t5, 4($s0)
	move $a0, $t2
	move $a1, $t0
	move $a2, $t5
	jalr $t4
	move $t6, $v0
	sub $t7, $t1, $t6
	bne $t7, 1, L2
	li $v1, 0
	move $t8, $v1
	move $s3, $t8
	b L3
L2:
	move $t9, $s1
	lw $s2, 0($t9)
	lw $s5, 8($s2)
	move $a0, $t9
	jalr $s5
	move $s4, $v0
	move $s6, $s4
	li $v1, 1
	move $s7, $v1
	move $t3, $s0
	lw $t0, 0($t3)
	lw $t2, 20($t0)
	lw $t4, 8($s0)
	move $a0, $t3
	move $a1, $s6
	move $a2, $t4
	jalr $t2
	move $t5, $v0
	sub $t1, $s7, $t5
	bne $t1, 1, L4
	li $v1, 0
	move $t6, $v1
	move $s3, $t6
	b L5
L4:
	lw $t7, 12($s0)
	bne $t7, 1, L6
	li $v1, 1
	move $t8, $v1
	move $s2, $s1
	lw $t9, 0($s2)
	lw $s5, 12($t9)
	move $a0, $s2
	jalr $s5
	move $s4, $v0
	sub $t0, $t8, $s4
	bne $t0, 1, L8
	li $v1, 0
	move $s6, $v1
	move $s3, $s6
	b L9
L8:
	li $v1, 0
	move $t3, $v1
	move $t2, $t3
L9:
	nop
	b L7
L6:
	move $t4, $s1
	lw $s7, 0($t4)
	lw $t5, 12($s7)
	move $a0, $t4
	jalr $t5
	move $t1, $v0
	bne $t1, 1, L10
	li $v1, 0
	move $t6, $v1
	move $s3, $t6
	b L11
L10:
	li $v1, 0
	move $t7, $v1
	move $t2, $t7
L11:
	nop
L7:
	nop
L5:
	nop
L3:
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
	li $v1, 1
	move $t0, $v1
	sub $t1, $s2, $t0
	sle $t2, $s1, $t1
	bne $t2, 1, L12
	li $v1, 0
	move $t3, $v1
	move $s4, $t3
	b L13
L12:
	li $v1, 1
	move $t4, $v1
	li $v1, 1
	move $t5, $v1
	sub $t6, $s7, $t5
	sle $t7, $s1, $t6
	sub $t8, $t4, $t7
	bne $t8, 1, L14
	li $v1, 0
	move $t9, $v1
	move $s4, $t9
	b L15
L14:
	li $v1, 1
	move $s3, $v1
	move $s4, $s3
L15:
	nop
L13:
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
	li $v1, 40
	move $s3, $v1
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	move $s5, $s4
	li $v1, 16
	move $s6, $v1
	move $a0, $s6
	jal _halloc
	move $s7, $v0
	move $t0, $s7
	la $t1, List_Print
	sw $t1, 36($s5)
	la $t2, List_GetNext
	sw $t2, 32($s5)
	la $t3, List_GetElem
	sw $t3, 28($s5)
	la $t4, List_GetEnd
	sw $t4, 24($s5)
	la $t5, List_Search
	sw $t5, 20($s5)
	la $t6, List_Delete
	sw $t6, 16($s5)
	la $t7, List_SetNext
	sw $t7, 12($s5)
	la $t8, List_Insert
	sw $t8, 8($s5)
	la $t9, List_InitNew
	sw $t9, 4($s5)
	la $s3, List_Init
	sw $s3, 0($s5)
	li $v1, 4
	move $s4, $v1
	move $s6, $s4
L16:
	li $v1, 15
	move $s7, $v1
	sle $t1, $s6, $s7
	bne $t1, 1, L17
	add $t2, $t0, $s6
	li $v1, 0
	move $t3, $v1
	sw $t3, 0($t2)
	li $v1, 4
	move $t4, $v1
	add $t5, $s6, $t4
	move $s6, $t5
	b L16
L17:
	sw $s5, 0($t0)
	move $t6, $t0
	move $t7, $t6
	lw $t8, 0($t7)
	lw $t9, 4($t8)
	li $v1, 0
	move $s3, $v1
	move $a0, $t7
	move $a1, $s1
	move $a2, $s2
	move $a3, $s3
	jalr $t9
	move $s4, $v0
	move $s7, $s4
	move $v0, $t6
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
	li $v1, 0
	move $s3, $v1
	move $s4, $s3
	li $v1, 0
	move $s5, $v1
	li $v1, 1
	move $s6, $v1
	sub $s7, $s5, $s6
	move $t0, $s7
	move $t1, $s0
	move $t2, $s0
	lw $t3, 12($s0)
	move $t4, $t3
	lw $t5, 4($s0)
	move $t6, $t5
L18:
	li $v1, 0
	move $t7, $v1
	move $t8, $t7
	li $v1, 1
	move $t9, $v1
	sub $s3, $t9, $t4
	bne $s3, 1, L20
	li $v1, 1
	move $s5, $v1
	sub $s6, $s5, $s4
	bne $s6, 1, L20
	li $v1, 1
	move $s7, $v1
	move $t8, $s7
L20:
	nop
	bne $t8, 1, L19
	move $t3, $s1
	lw $t5, 0($t3)
	lw $t7, 16($t5)
	move $a0, $t3
	move $a1, $t6
	jalr $t7
	move $t9, $v0
	bne $t9, 1, L21
	li $v1, 1
	move $s3, $v1
	move $s4, $s3
	li $v1, 0
	move $s5, $v1
	move $s6, $s5
	li $v1, 1
	move $t8, $v1
	sub $s7, $s6, $t8
	move $t5, $s7
	sle $t3, $t0, $t5
	bne $t3, 1, L23
	move $t7, $t1
	lw $t9, 0($t7)
	lw $s3, 32($t9)
	move $a0, $t7
	jalr $s3
	move $s5, $v0
	move $s2, $s5
	b L24
L23:
	li $v1, 0
	move $s6, $v1
	li $v1, 555
	move $t8, $v1
	sub $s7, $s6, $t8
	move $a0, $s7
	jal _print
	move $t5, $t2
	lw $t3, 0($t5)
	lw $t9, 12($t3)
	move $t7, $t1
	lw $s3, 0($t7)
	lw $s5, 32($s3)
	move $a0, $t7
	jalr $s5
	move $s6, $v0
	move $a0, $t5
	move $a1, $s6
	jalr $t9
	move $t8, $v0
	move $s7, $t8
	li $v1, 0
	move $t3, $v1
	li $v1, 555
	move $s3, $v1
	sub $t7, $t3, $s3
	move $a0, $t7
	jal _print
L24:
	nop
	b L22
L21:
	li $v1, 0
	move $s5, $v1
	move $t5, $s5
L22:
	nop
	li $v1, 1
	move $t9, $v1
	sub $s6, $t9, $s4
	bne $s6, 1, L25
	move $t2, $t1
	move $t8, $t1
	lw $s7, 0($t8)
	lw $t3, 32($s7)
	move $a0, $t8
	jalr $t3
	move $s3, $v0
	move $t1, $s3
	move $t7, $t1
	lw $s5, 0($t7)
	lw $t9, 24($s5)
	move $a0, $t7
	jalr $t9
	move $s6, $v0
	move $t4, $s6
	move $s7, $t1
	lw $t8, 0($s7)
	lw $t3, 28($t8)
	move $a0, $s7
	jalr $t3
	move $s3, $v0
	move $t6, $s3
	li $v1, 1
	move $s5, $v1
	move $t0, $s5
	b L26
L25:
	li $v1, 0
	move $t7, $v1
	move $t5, $t7
L26:
	nop
	b L18
L19:
	nop
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
	lw $s5, 12($s0)
	move $s6, $s5
	lw $s7, 4($s0)
	move $t0, $s7
L27:
	li $v1, 1
	move $t1, $v1
	sub $t2, $t1, $s6
	bne $t2, 1, L28
	move $t3, $s1
	lw $t4, 0($t3)
	lw $t5, 16($t4)
	move $a0, $t3
	move $a1, $t0
	jalr $t5
	move $t6, $v0
	bne $t6, 1, L29
	li $v1, 1
	move $t7, $v1
	move $s3, $t7
	b L30
L29:
	li $v1, 0
	move $t8, $v1
	move $t9, $t8
L30:
	nop
	move $s2, $s4
	lw $s5, 0($s2)
	lw $s7, 32($s5)
	move $a0, $s2
	jalr $s7
	move $t1, $v0
	move $s4, $t1
	move $t2, $s4
	lw $t4, 0($t2)
	lw $t3, 24($t4)
	move $a0, $t2
	jalr $t3
	move $t5, $v0
	move $s6, $t5
	move $t6, $s4
	lw $t7, 0($t6)
	lw $t8, 28($t7)
	move $a0, $t6
	jalr $t8
	move $t9, $v0
	move $t0, $t9
	b L27
L28:
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
	lw $s2, 12($s0)
	move $s3, $s2
	lw $s4, 4($s0)
	move $s5, $s4
L31:
	li $v1, 1
	move $s6, $v1
	sub $s7, $s6, $s3
	bne $s7, 1, L32
	move $t0, $s5
	lw $t1, 0($t0)
	lw $t2, 4($t1)
	move $a0, $t0
	jalr $t2
	move $t3, $v0
	move $a0, $t3
	jal _print
	move $t4, $s1
	lw $t5, 0($t4)
	lw $t6, 32($t5)
	move $a0, $t4
	jalr $t6
	move $t7, $v0
	move $s1, $t7
	move $t8, $s1
	lw $t9, 0($t8)
	lw $s2, 24($t9)
	move $a0, $t8
	jalr $s2
	move $s4, $v0
	move $s3, $s4
	move $s6, $s1
	lw $s7, 0($s6)
	lw $t1, 28($s7)
	move $a0, $s6
	jalr $t1
	move $t0, $v0
	move $s5, $t0
	b L31
L32:
	nop
	li $v1, 1
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
	li $v1, 40
	move $s1, $v1
	move $a0, $s1
	jal _halloc
	move $s2, $v0
	move $s3, $s2
	li $v1, 16
	move $s4, $v1
	move $a0, $s4
	jal _halloc
	move $s5, $v0
	move $s6, $s5
	la $s7, List_Print
	sw $s7, 36($s3)
	la $t0, List_GetNext
	sw $t0, 32($s3)
	la $t1, List_GetElem
	sw $t1, 28($s3)
	la $t2, List_GetEnd
	sw $t2, 24($s3)
	la $t3, List_Search
	sw $t3, 20($s3)
	la $t4, List_Delete
	sw $t4, 16($s3)
	la $t5, List_SetNext
	sw $t5, 12($s3)
	la $t6, List_Insert
	sw $t6, 8($s3)
	la $t7, List_InitNew
	sw $t7, 4($s3)
	la $t8, List_Init
	sw $t8, 0($s3)
	li $v1, 4
	move $t9, $v1
	move $s1, $t9
L33:
	li $v1, 15
	move $s2, $v1
	sle $s4, $s1, $s2
	bne $s4, 1, L34
	add $s5, $s6, $s1
	li $v1, 0
	move $s7, $v1
	sw $s7, 0($s5)
	li $v1, 4
	move $t0, $v1
	add $t1, $s1, $t0
	move $s1, $t1
	b L33
L34:
	sw $s3, 0($s6)
	move $t2, $s6
	move $t3, $t2
	lw $t4, 0($t3)
	lw $t5, 0($t4)
	move $a0, $t3
	jalr $t5
	move $t6, $v0
	move $t7, $t6
	move $t8, $t2
	move $t9, $t8
	lw $s2, 0($t9)
	lw $s4, 0($s2)
	move $a0, $t9
	jalr $s4
	move $s5, $v0
	move $t7, $s5
	move $s7, $t8
	lw $t0, 0($s7)
	lw $s3, 36($t0)
	move $a0, $s7
	jalr $s3
	move $s1, $v0
	move $t7, $s1
	li $v1, 24
	move $t1, $v1
	move $a0, $t1
	jal _halloc
	move $s6, $v0
	move $t4, $s6
	li $v1, 16
	move $t3, $v1
	move $a0, $t3
	jal _halloc
	move $t5, $v0
	move $t6, $t5
	la $t2, Element_Compare
	sw $t2, 20($t4)
	la $s2, Element_Equal
	sw $s2, 16($t4)
	la $t9, Element_GetMarried
	sw $t9, 12($t4)
	la $s4, Element_GetSalary
	sw $s4, 8($t4)
	la $s5, Element_GetAge
	sw $s5, 4($t4)
	la $t0, Element_Init
	sw $t0, 0($t4)
	li $v1, 4
	move $s7, $v1
	move $s3, $s7
L35:
	li $v1, 15
	move $s1, $v1
	sle $t1, $s3, $s1
	bne $t1, 1, L36
	add $s6, $t6, $s3
	li $v1, 0
	move $t3, $v1
	sw $t3, 0($s6)
	li $v1, 4
	move $t5, $v1
	add $t2, $s3, $t5
	move $s3, $t2
	b L35
L36:
	sw $t4, 0($t6)
	move $s2, $t6
	move $t9, $s2
	lw $s4, 0($t9)
	lw $s5, 0($s4)
	li $v1, 25
	move $t0, $v1
	li $v1, 37000
	move $s7, $v1
	li $v1, 0
	move $s1, $v1
	move $a0, $t9
	move $a1, $t0
	move $a2, $s7
	move $a3, $s1
	jalr $s5
	move $t1, $v0
	move $t7, $t1
	move $s6, $t8
	lw $t3, 0($s6)
	lw $t5, 8($t3)
	move $a0, $s6
	move $a1, $s2
	jalr $t5
	move $t4, $v0
	move $t8, $t4
	move $s3, $t8
	lw $t2, 0($s3)
	lw $t6, 36($t2)
	move $a0, $s3
	jalr $t6
	move $s4, $v0
	move $t7, $s4
	li $v1, 10000000
	move $t9, $v1
	move $a0, $t9
	jal _print
	li $v1, 24
	move $s5, $v1
	move $a0, $s5
	jal _halloc
	move $t0, $v0
	move $s7, $t0
	li $v1, 16
	move $s1, $v1
	move $a0, $s1
	jal _halloc
	move $t1, $v0
	move $t3, $t1
	la $s6, Element_Compare
	sw $s6, 20($s7)
	la $t5, Element_Equal
	sw $t5, 16($s7)
	la $t4, Element_GetMarried
	sw $t4, 12($s7)
	la $t2, Element_GetSalary
	sw $t2, 8($s7)
	la $s3, Element_GetAge
	sw $s3, 4($s7)
	la $t6, Element_Init
	sw $t6, 0($s7)
	li $v1, 4
	move $s4, $v1
	move $t9, $s4
L37:
	li $v1, 15
	move $s5, $v1
	sle $t0, $t9, $s5
	bne $t0, 1, L38
	add $s1, $t3, $t9
	li $v1, 0
	move $t1, $v1
	sw $t1, 0($s1)
	li $v1, 4
	move $s6, $v1
	add $t5, $t9, $s6
	move $t9, $t5
	b L37
L38:
	sw $s7, 0($t3)
	move $s2, $t3
	move $t4, $s2
	lw $t2, 0($t4)
	lw $s3, 0($t2)
	li $v1, 39
	move $t6, $v1
	li $v1, 42000
	move $s4, $v1
	li $v1, 1
	move $s5, $v1
	move $a0, $t4
	move $a1, $t6
	move $a2, $s4
	move $a3, $s5
	jalr $s3
	move $t0, $v0
	move $t7, $t0
	move $s1, $s2
	move $t1, $t8
	lw $s6, 0($t1)
	lw $s7, 8($s6)
	move $a0, $t1
	move $a1, $s2
	jalr $s7
	move $t9, $v0
	move $t8, $t9
	move $t5, $t8
	lw $t3, 0($t5)
	lw $t2, 36($t3)
	move $a0, $t5
	jalr $t2
	move $t4, $v0
	move $t7, $t4
	li $v1, 10000000
	move $s3, $v1
	move $a0, $s3
	jal _print
	li $v1, 24
	move $t6, $v1
	move $a0, $t6
	jal _halloc
	move $s4, $v0
	move $s5, $s4
	li $v1, 16
	move $t0, $v1
	move $a0, $t0
	jal _halloc
	move $s6, $v0
	move $t1, $s6
	la $s7, Element_Compare
	sw $s7, 20($s5)
	la $t9, Element_Equal
	sw $t9, 16($s5)
	la $t3, Element_GetMarried
	sw $t3, 12($s5)
	la $t5, Element_GetSalary
	sw $t5, 8($s5)
	la $t2, Element_GetAge
	sw $t2, 4($s5)
	la $t4, Element_Init
	sw $t4, 0($s5)
	li $v1, 4
	move $s3, $v1
	move $t6, $s3
L39:
	li $v1, 15
	move $s4, $v1
	sle $t0, $t6, $s4
	bne $t0, 1, L40
	add $s6, $t1, $t6
	li $v1, 0
	move $s7, $v1
	sw $s7, 0($s6)
	li $v1, 4
	move $t9, $v1
	add $t3, $t6, $t9
	move $t6, $t3
	b L39
L40:
	sw $s5, 0($t1)
	move $s2, $t1
	move $t5, $s2
	lw $t2, 0($t5)
	lw $t4, 0($t2)
	li $v1, 22
	move $s3, $v1
	li $v1, 34000
	move $s4, $v1
	li $v1, 0
	move $t0, $v1
	move $a0, $t5
	move $a1, $s3
	move $a2, $s4
	move $a3, $t0
	jalr $t4
	move $s6, $v0
	move $t7, $s6
	move $s7, $t8
	lw $t9, 0($s7)
	lw $s5, 8($t9)
	move $a0, $s7
	move $a1, $s2
	jalr $s5
	move $t6, $v0
	move $t8, $t6
	move $t3, $t8
	lw $t1, 0($t3)
	lw $t2, 36($t1)
	move $a0, $t3
	jalr $t2
	move $t5, $v0
	move $t7, $t5
	li $v1, 24
	move $t4, $v1
	move $a0, $t4
	jal _halloc
	move $s3, $v0
	move $s4, $s3
	li $v1, 16
	move $t0, $v1
	move $a0, $t0
	jal _halloc
	move $s6, $v0
	move $t9, $s6
	la $s7, Element_Compare
	sw $s7, 20($s4)
	la $s5, Element_Equal
	sw $s5, 16($s4)
	la $t6, Element_GetMarried
	sw $t6, 12($s4)
	la $t1, Element_GetSalary
	sw $t1, 8($s4)
	la $t3, Element_GetAge
	sw $t3, 4($s4)
	la $t2, Element_Init
	sw $t2, 0($s4)
	li $v1, 4
	move $t5, $v1
	move $t4, $t5
L41:
	li $v1, 15
	move $s3, $v1
	sle $t0, $t4, $s3
	bne $t0, 1, L42
	add $s6, $t9, $t4
	li $v1, 0
	move $s7, $v1
	sw $s7, 0($s6)
	li $v1, 4
	move $s5, $v1
	add $t6, $t4, $s5
	move $t4, $t6
	b L41
L42:
	sw $s4, 0($t9)
	move $t1, $t9
	move $t3, $t1
	lw $t2, 0($t3)
	lw $t5, 0($t2)
	li $v1, 27
	move $s3, $v1
	li $v1, 34000
	move $t0, $v1
	li $v1, 0
	move $s6, $v1
	move $a0, $t3
	move $a1, $s3
	move $a2, $t0
	move $a3, $s6
	jalr $t5
	move $s7, $v0
	move $t7, $s7
	move $s5, $t8
	lw $s4, 0($s5)
	lw $t4, 20($s4)
	move $a0, $s5
	move $a1, $s1
	jalr $t4
	move $t6, $v0
	move $a0, $t6
	jal _print
	move $t9, $t8
	lw $t2, 0($t9)
	lw $t3, 20($t2)
	move $a0, $t9
	move $a1, $t1
	jalr $t3
	move $t5, $v0
	move $a0, $t5
	jal _print
	li $v1, 10000000
	move $s3, $v1
	move $a0, $s3
	jal _print
	li $v1, 24
	move $t0, $v1
	move $a0, $t0
	jal _halloc
	move $s6, $v0
	move $s7, $s6
	li $v1, 16
	move $s4, $v1
	move $a0, $s4
	jal _halloc
	move $s5, $v0
	move $t4, $s5
	la $t6, Element_Compare
	sw $t6, 20($s7)
	la $t2, Element_Equal
	sw $t2, 16($s7)
	la $t1, Element_GetMarried
	sw $t1, 12($s7)
	la $t9, Element_GetSalary
	sw $t9, 8($s7)
	la $t3, Element_GetAge
	sw $t3, 4($s7)
	la $t5, Element_Init
	sw $t5, 0($s7)
	li $v1, 4
	move $s3, $v1
	move $t0, $s3
L43:
	li $v1, 15
	move $s6, $v1
	sle $s4, $t0, $s6
	bne $s4, 1, L44
	add $s5, $t4, $t0
	li $v1, 0
	move $t6, $v1
	sw $t6, 0($s5)
	li $v1, 4
	move $t2, $v1
	add $t1, $t0, $t2
	move $t0, $t1
	b L43
L44:
	sw $s7, 0($t4)
	move $s2, $t4
	move $t9, $s2
	lw $t3, 0($t9)
	lw $t5, 0($t3)
	li $v1, 28
	move $s3, $v1
	li $v1, 35000
	move $s6, $v1
	li $v1, 0
	move $s4, $v1
	move $a0, $t9
	move $a1, $s3
	move $a2, $s6
	move $a3, $s4
	jalr $t5
	move $s5, $v0
	move $t7, $s5
	move $t6, $t8
	lw $t2, 0($t6)
	lw $s7, 8($t2)
	move $a0, $t6
	move $a1, $s2
	jalr $s7
	move $t0, $v0
	move $t8, $t0
	move $t1, $t8
	lw $t4, 0($t1)
	lw $t3, 36($t4)
	move $a0, $t1
	jalr $t3
	move $t9, $v0
	move $t7, $t9
	li $v1, 2220000
	move $t5, $v1
	move $a0, $t5
	jal _print
	move $s3, $t8
	lw $s6, 0($s3)
	lw $s4, 16($s6)
	move $a0, $s3
	move $a1, $s1
	jalr $s4
	move $s5, $v0
	move $t8, $s5
	move $t2, $t8
	lw $t6, 0($t2)
	lw $s7, 36($t6)
	move $a0, $t2
	jalr $s7
	move $t0, $v0
	move $t7, $t0
	li $v1, 33300000
	move $t4, $v1
	move $a0, $t4
	jal _print
	move $t1, $t8
	lw $t3, 0($t1)
	lw $t9, 16($t3)
	move $a0, $t1
	move $a1, $s2
	jalr $t9
	move $t5, $v0
	move $t8, $t5
	move $s6, $t8
	lw $s1, 0($s6)
	lw $s3, 36($s1)
	move $a0, $s6
	jalr $s3
	move $s4, $v0
	move $t7, $s4
	li $v1, 44440000
	move $s5, $v1
	move $a0, $s5
	jal _print
	li $v1, 0
	move $t6, $v1
	move $v0, $t6
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
