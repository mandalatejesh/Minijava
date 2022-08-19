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
	la $s4, BT_Start
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
	.globl BT_Start
BT_Start:
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
	li $v1, 28
	move $s1, $v1
	move $a0, $s1
	jal _halloc
	move $s2, $v0
	li $v1, 80
	move $s3, $v1
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	la $s5, Tree_Init
	sw $s5, 24($s4)
	la $s6, Tree_Insert
	sw $s6, 76($s4)
	la $s7, Tree_RemoveLeft
	sw $s7, 60($s4)
	la $t0, Tree_Delete
	sw $t0, 68($s4)
	la $t1, Tree_RemoveRight
	sw $t1, 48($s4)
	la $t2, Tree_SetHas_Right
	sw $t2, 28($s4)
	la $t3, Tree_GetRight
	sw $t3, 40($s4)
	la $t4, Tree_Print
	sw $t4, 64($s4)
	la $t5, Tree_Remove
	sw $t5, 52($s4)
	la $t6, Tree_SetKey
	sw $t6, 36($s4)
	la $t7, Tree_SetRight
	sw $t7, 16($s4)
	la $t8, Tree_GetHas_Right
	sw $t8, 56($s4)
	la $t9, Tree_SetHas_Left
	sw $t9, 0($s4)
	la $s1, Tree_Search
	sw $s1, 20($s4)
	la $s3, Tree_GetKey
	sw $s3, 4($s4)
	la $s5, Tree_SetLeft
	sw $s5, 32($s4)
	la $s6, Tree_GetHas_Left
	sw $s6, 44($s4)
	la $s7, Tree_Compare
	sw $s7, 72($s4)
	la $t0, Tree_GetLeft
	sw $t0, 8($s4)
	la $t1, Tree_RecPrint
	sw $t1, 12($s4)
	sw $s4, 0($s2)
	move $t2, $s2
	lw $t3, 0($t2)
	lw $t4, 24($t3)
	li $v1, 16
	move $t5, $v1
	move $a0, $t2
	move $a1, $t5
	jalr $t4
	move $t6, $v0
	move $t7, $t6
	lw $t8, 0($t2)
	lw $t9, 64($t8)
	move $a0, $t2
	jalr $t9
	move $s1, $v0
	move $t7, $s1
	li $v1, 100000000
	move $s3, $v1
	move $a0, $s3
	jal _print
	lw $s5, 0($t2)
	lw $s6, 76($s5)
	li $v1, 8
	move $s7, $v1
	move $a0, $t2
	move $a1, $s7
	jalr $s6
	move $t0, $v0
	move $t7, $t0
	lw $s4, 0($t2)
	lw $t1, 64($s4)
	move $a0, $t2
	jalr $t1
	move $s2, $v0
	move $t7, $s2
	lw $t3, 0($t2)
	lw $t4, 76($t3)
	li $v1, 24
	move $t5, $v1
	move $a0, $t2
	move $a1, $t5
	jalr $t4
	move $t6, $v0
	move $t7, $t6
	lw $t8, 0($t2)
	lw $t9, 76($t8)
	li $v1, 4
	move $s1, $v1
	move $a0, $t2
	move $a1, $s1
	jalr $t9
	move $s3, $v0
	move $t7, $s3
	lw $s5, 0($t2)
	lw $s6, 76($s5)
	li $v1, 12
	move $s7, $v1
	move $a0, $t2
	move $a1, $s7
	jalr $s6
	move $t0, $v0
	move $t7, $t0
	lw $s4, 0($t2)
	lw $t1, 76($s4)
	li $v1, 20
	move $s2, $v1
	move $a0, $t2
	move $a1, $s2
	jalr $t1
	move $t3, $v0
	move $t7, $t3
	lw $t4, 0($t2)
	lw $t5, 76($t4)
	li $v1, 28
	move $t6, $v1
	move $a0, $t2
	move $a1, $t6
	jalr $t5
	move $t8, $v0
	move $t7, $t8
	lw $t9, 0($t2)
	lw $s1, 76($t9)
	li $v1, 14
	move $s3, $v1
	move $a0, $t2
	move $a1, $s3
	jalr $s1
	move $s5, $v0
	move $t7, $s5
	lw $s6, 0($t2)
	lw $s7, 64($s6)
	move $a0, $t2
	jalr $s7
	move $t0, $v0
	move $t7, $t0
	lw $s4, 0($t2)
	lw $t1, 20($s4)
	li $v1, 24
	move $s2, $v1
	move $a0, $t2
	move $a1, $s2
	jalr $t1
	move $t3, $v0
	move $a0, $t3
	jal _print
	lw $t4, 0($t2)
	lw $t5, 20($t4)
	li $v1, 12
	move $t6, $v1
	move $a0, $t2
	move $a1, $t6
	jalr $t5
	move $t8, $v0
	move $a0, $t8
	jal _print
	lw $t9, 0($t2)
	lw $s1, 20($t9)
	li $v1, 16
	move $s3, $v1
	move $a0, $t2
	move $a1, $s3
	jalr $s1
	move $s5, $v0
	move $a0, $s5
	jal _print
	lw $s6, 0($t2)
	lw $s7, 20($s6)
	li $v1, 50
	move $t0, $v1
	move $a0, $t2
	move $a1, $t0
	jalr $s7
	move $s4, $v0
	move $a0, $s4
	jal _print
	lw $t1, 0($t2)
	lw $s2, 20($t1)
	li $v1, 12
	move $t3, $v1
	move $a0, $t2
	move $a1, $t3
	jalr $s2
	move $t4, $v0
	move $a0, $t4
	jal _print
	lw $t5, 0($t2)
	lw $t6, 68($t5)
	li $v1, 12
	move $t8, $v1
	move $a0, $t2
	move $a1, $t8
	jalr $t6
	move $t9, $v0
	move $t7, $t9
	lw $s1, 0($t2)
	lw $s3, 64($s1)
	move $a0, $t2
	jalr $s3
	move $s5, $v0
	move $t7, $s5
	lw $s6, 0($t2)
	lw $s7, 20($s6)
	li $v1, 12
	move $t0, $v1
	move $a0, $t2
	move $a1, $t0
	jalr $s7
	move $s4, $v0
	move $a0, $s4
	jal _print
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
	.globl Tree_Init
Tree_Init:
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
	li $v1, 0
	move $s2, $v1
	sw $s2, 20($s0)
	li $v1, 0
	move $s3, $v1
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
	.globl Tree_SetRight
Tree_SetRight:
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
	sw $s1, 16($s0)
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
	.globl Tree_SetLeft
Tree_SetLeft:
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
	sw $s1, 24($s0)
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
	.globl Tree_GetRight
Tree_GetRight:
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
	lw $s1, 16($s0)
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
	.globl Tree_GetLeft
Tree_GetLeft:
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
	lw $s1, 24($s0)
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
	.globl Tree_GetKey
Tree_GetKey:
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
	.globl Tree_SetKey
Tree_SetKey:
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
	.globl Tree_GetHas_Right
Tree_GetHas_Right:
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
	.globl Tree_GetHas_Left
Tree_GetHas_Left:
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
	lw $s1, 20($s0)
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
	.globl Tree_SetHas_Left
Tree_SetHas_Left:
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
	sw $s1, 20($s0)
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
	.globl Tree_SetHas_Right
Tree_SetHas_Right:
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
	.globl Tree_Compare
Tree_Compare:
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
	bne $t2, 1, L1
	li $v1, 0
	move $t3, $v1
	move $s4, $t3
	b L0
L1:
	nop
	li $v1, 1
	move $t4, $v1
	sub $t5, $s7, $t4
	sle $t6, $s1, $t5
	li $v1, 1
	sne $t7, $t6, $v1
	bne $t7, 1, L3
	li $v1, 0
	move $t8, $v1
	move $s4, $t8
	b L2
L3:
	nop
	li $v1, 1
	move $t9, $v1
	move $s4, $t9
L2:
	nop
L0:
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
	.globl Tree_Insert
Tree_Insert:
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
	li $v1, 28
	move $s2, $v1
	move $a0, $s2
	jal _halloc
	move $s3, $v0
	li $v1, 80
	move $s4, $v1
	move $a0, $s4
	jal _halloc
	move $s5, $v0
	la $s6, Tree_Init
	sw $s6, 24($s5)
	la $s7, Tree_Insert
	sw $s7, 76($s5)
	la $t0, Tree_RemoveLeft
	sw $t0, 60($s5)
	la $t1, Tree_Delete
	sw $t1, 68($s5)
	la $t2, Tree_RemoveRight
	sw $t2, 48($s5)
	la $t3, Tree_SetHas_Right
	sw $t3, 28($s5)
	la $t4, Tree_GetRight
	sw $t4, 40($s5)
	la $t5, Tree_Print
	sw $t5, 64($s5)
	la $t6, Tree_Remove
	sw $t6, 52($s5)
	la $t7, Tree_SetKey
	sw $t7, 36($s5)
	la $t8, Tree_SetRight
	sw $t8, 16($s5)
	la $t9, Tree_GetHas_Right
	sw $t9, 56($s5)
	la $s2, Tree_SetHas_Left
	sw $s2, 0($s5)
	la $s4, Tree_Search
	sw $s4, 20($s5)
	la $s6, Tree_GetKey
	sw $s6, 4($s5)
	la $s7, Tree_SetLeft
	sw $s7, 32($s5)
	la $t0, Tree_GetHas_Left
	sw $t0, 44($s5)
	la $t1, Tree_Compare
	sw $t1, 72($s5)
	la $t2, Tree_GetLeft
	sw $t2, 8($s5)
	la $t3, Tree_RecPrint
	sw $t3, 12($s5)
	sw $s5, 0($s3)
	move $t4, $s3
	lw $t5, 0($t4)
	lw $t6, 24($t5)
	move $a0, $t4
	move $a1, $s1
	jalr $t6
	move $t7, $v0
	move $t8, $t7
	move $t9, $s0
	move $s2, $t9
	li $v1, 1
	move $s4, $v1
	move $s6, $s4
L4:
	nop
	bne $s6, 1, L5
	lw $s7, 0($s2)
	lw $t0, 4($s7)
	move $a0, $s2
	jalr $t0
	move $t1, $v0
	move $t2, $t1
	sle $s5, $s1, $t2
	bne $s5, 1, L7
	sne $t3, $s1, $t2
	bne $t3, 1, L7
	lw $s3, 0($s2)
	lw $t5, 44($s3)
	move $a0, $s2
	jalr $t5
	move $t6, $v0
	bne $t6, 1, L9
	lw $t7, 0($s2)
	lw $t9, 8($t7)
	move $a0, $s2
	jalr $t9
	move $s4, $v0
	move $s2, $s4
	b L8
L9:
	nop
	li $v1, 0
	move $s7, $v1
	move $s6, $s7
	lw $t0, 0($s2)
	lw $t1, 0($t0)
	li $v1, 1
	move $s5, $v1
	move $a0, $s2
	move $a1, $s5
	jalr $t1
	move $t2, $v0
	move $t8, $t2
	lw $t3, 0($s2)
	lw $s3, 32($t3)
	move $a0, $s2
	move $a1, $t4
	jalr $s3
	move $t5, $v0
	move $t8, $t5
L8:
	nop
	b L6
L7:
	nop
	lw $t6, 0($s2)
	lw $t7, 56($t6)
	move $a0, $s2
	jalr $t7
	move $t9, $v0
	bne $t9, 1, L11
	lw $s4, 0($s2)
	lw $s7, 40($s4)
	move $a0, $s2
	jalr $s7
	move $t0, $v0
	move $s2, $t0
	b L10
L11:
	nop
	li $v1, 0
	move $t1, $v1
	move $s6, $t1
	lw $s5, 0($s2)
	lw $t2, 28($s5)
	li $v1, 1
	move $t3, $v1
	move $a0, $s2
	move $a1, $t3
	jalr $t2
	move $s3, $v0
	move $t8, $s3
	lw $t5, 0($s2)
	lw $t6, 16($t5)
	move $a0, $s2
	move $a1, $t4
	jalr $t6
	move $t7, $v0
	move $t8, $t7
L10:
	nop
L6:
	nop
	b L4
L5:
	nop
	li $v1, 1
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
	.globl Tree_Delete
Tree_Delete:
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
	move $s4, $s0
	move $s5, $s4
	li $v1, 1
	move $s6, $v1
	move $s7, $s6
	li $v1, 0
	move $t0, $v1
	move $t1, $t0
	li $v1, 1
	move $t2, $v1
	move $t3, $t2
L12:
	nop
	bne $s7, 1, L13
	lw $t4, 0($s3)
	lw $t5, 4($t4)
	move $a0, $s3
	jalr $t5
	move $t6, $v0
	move $t7, $t6
	sle $t8, $s1, $t7
	bne $t8, 1, L15
	sne $t9, $s1, $t7
	bne $t9, 1, L15
	lw $s2, 0($s3)
	lw $s4, 44($s2)
	move $a0, $s3
	jalr $s4
	move $s6, $v0
	bne $s6, 1, L17
	move $s5, $s3
	lw $t0, 0($s3)
	lw $t2, 8($t0)
	move $a0, $s3
	jalr $t2
	move $t4, $v0
	move $s3, $t4
	b L16
L17:
	nop
	li $v1, 0
	move $t5, $v1
	move $s7, $t5
L16:
	nop
	b L14
L15:
	nop
	sle $t6, $t7, $s1
	bne $t6, 1, L19
	sne $t8, $t7, $s1
	bne $t8, 1, L19
	lw $t9, 0($s3)
	lw $s2, 56($t9)
	move $a0, $s3
	jalr $s2
	move $s4, $v0
	bne $s4, 1, L21
	move $s5, $s3
	lw $s6, 0($s3)
	lw $t0, 40($s6)
	move $a0, $s3
	jalr $t0
	move $t2, $v0
	move $s3, $t2
	b L20
L21:
	nop
	li $v1, 0
	move $t4, $v1
	move $s7, $t4
L20:
	nop
	b L18
L19:
	nop
	bne $t3, 1, L23
	lw $t5, 0($s3)
	lw $t6, 56($t5)
	move $a0, $s3
	jalr $t6
	move $t7, $v0
	li $v1, 1
	sne $t8, $t7, $v1
	bne $t8, 1, L25
	lw $t9, 0($s3)
	lw $s2, 44($t9)
	move $a0, $s3
	jalr $s2
	move $s4, $v0
	li $v1, 1
	sne $s6, $s4, $v1
	bne $s6, 1, L25
	li $v1, 1
	move $t0, $v1
	move $t2, $t0
	b L24
L25:
	nop
	move $t4, $s0
	lw $t5, 0($t4)
	lw $t6, 52($t5)
	move $a0, $t4
	move $a1, $s5
	move $a2, $s3
	jalr $t6
	move $t7, $v0
	move $t2, $t7
L24:
	nop
	b L22
L23:
	nop
	move $t8, $s0
	lw $t9, 0($t8)
	lw $s2, 52($t9)
	move $a0, $t8
	move $a1, $s5
	move $a2, $s3
	jalr $s2
	move $s4, $v0
	move $t2, $s4
L22:
	nop
	li $v1, 1
	move $s6, $v1
	move $t1, $s6
	li $v1, 0
	move $t0, $v1
	move $s7, $t0
L18:
	nop
L14:
	nop
	li $v1, 0
	move $t5, $v1
	move $t3, $t5
	b L12
L13:
	nop
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
	.globl Tree_Remove
Tree_Remove:
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
	lw $s3, 0($s2)
	lw $s4, 44($s3)
	move $a0, $s2
	jalr $s4
	move $s5, $v0
	bne $s5, 1, L27
	move $s6, $s0
	lw $s7, 0($s6)
	lw $t0, 60($s7)
	move $a0, $s6
	move $a1, $s1
	move $a2, $s2
	jalr $t0
	move $t1, $v0
	move $t2, $t1
	b L26
L27:
	nop
	lw $t3, 0($s2)
	lw $t4, 56($t3)
	move $a0, $s2
	jalr $t4
	move $t5, $v0
	bne $t5, 1, L29
	move $t6, $s0
	lw $t7, 0($t6)
	lw $t8, 48($t7)
	move $a0, $t6
	move $a1, $s1
	move $a2, $s2
	jalr $t8
	move $t9, $v0
	move $t2, $t9
	b L28
L29:
	nop
	lw $s3, 0($s2)
	lw $s4, 4($s3)
	move $a0, $s2
	jalr $s4
	move $s5, $v0
	move $s7, $s5
	lw $s6, 0($s1)
	lw $t0, 8($s6)
	move $a0, $s1
	jalr $t0
	move $t1, $v0
	lw $t3, 0($t1)
	lw $t4, 4($t3)
	move $a0, $t1
	jalr $t4
	move $t5, $v0
	move $t7, $t5
	move $t6, $s0
	lw $t8, 0($t6)
	lw $t9, 72($t8)
	move $a0, $t6
	move $a1, $s7
	move $a2, $t7
	jalr $t9
	move $s3, $v0
	bne $s3, 1, L31
	lw $s4, 0($s1)
	lw $s5, 32($s4)
	lw $s6, 4($s0)
	move $a0, $s1
	move $a1, $s6
	jalr $s5
	move $t0, $v0
	move $t2, $t0
	lw $t3, 0($s1)
	lw $t1, 0($t3)
	li $v1, 0
	move $t4, $v1
	move $a0, $s1
	move $a1, $t4
	jalr $t1
	move $t5, $v0
	move $t2, $t5
	b L30
L31:
	nop
	lw $t8, 0($s1)
	lw $s7, 16($t8)
	lw $t7, 4($s0)
	move $a0, $s1
	move $a1, $t7
	jalr $s7
	move $t6, $v0
	move $t2, $t6
	lw $t9, 0($s1)
	lw $s3, 28($t9)
	li $v1, 0
	move $s4, $v1
	move $a0, $s1
	move $a1, $s4
	jalr $s3
	move $s5, $v0
	move $t2, $s5
L30:
	nop
L28:
	nop
L26:
	nop
	li $v1, 1
	move $s6, $v1
	move $v0, $s6
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
	.globl Tree_RemoveRight
Tree_RemoveRight:
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
L32:
	nop
	lw $s3, 0($s2)
	lw $s4, 56($s3)
	move $a0, $s2
	jalr $s4
	move $s5, $v0
	bne $s5, 1, L33
	lw $s6, 0($s2)
	lw $s7, 36($s6)
	lw $t0, 0($s2)
	lw $t1, 40($t0)
	move $a0, $s2
	jalr $t1
	move $t2, $v0
	lw $t3, 0($t2)
	lw $t4, 4($t3)
	move $a0, $t2
	jalr $t4
	move $t5, $v0
	move $a0, $s2
	move $a1, $t5
	jalr $s7
	move $t6, $v0
	move $t7, $t6
	move $s1, $s2
	lw $t8, 0($s2)
	lw $t9, 40($t8)
	move $a0, $s2
	jalr $t9
	move $s3, $v0
	move $s2, $s3
	b L32
L33:
	nop
	lw $s4, 0($s1)
	lw $s5, 16($s4)
	lw $s6, 4($s0)
	move $a0, $s1
	move $a1, $s6
	jalr $s5
	move $t0, $v0
	move $t7, $t0
	lw $t1, 0($s1)
	lw $t3, 28($t1)
	li $v1, 0
	move $t2, $v1
	move $a0, $s1
	move $a1, $t2
	jalr $t3
	move $t4, $v0
	move $t7, $t4
	li $v1, 1
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
	.globl Tree_RemoveLeft
Tree_RemoveLeft:
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
L34:
	nop
	lw $s3, 0($s2)
	lw $s4, 44($s3)
	move $a0, $s2
	jalr $s4
	move $s5, $v0
	bne $s5, 1, L35
	lw $s6, 0($s2)
	lw $s7, 36($s6)
	lw $t0, 0($s2)
	lw $t1, 8($t0)
	move $a0, $s2
	jalr $t1
	move $t2, $v0
	lw $t3, 0($t2)
	lw $t4, 4($t3)
	move $a0, $t2
	jalr $t4
	move $t5, $v0
	move $a0, $s2
	move $a1, $t5
	jalr $s7
	move $t6, $v0
	move $t7, $t6
	move $s1, $s2
	lw $t8, 0($s2)
	lw $t9, 8($t8)
	move $a0, $s2
	jalr $t9
	move $s3, $v0
	move $s2, $s3
	b L34
L35:
	nop
	lw $s4, 0($s1)
	lw $s5, 32($s4)
	lw $s6, 4($s0)
	move $a0, $s1
	move $a1, $s6
	jalr $s5
	move $t0, $v0
	move $t7, $t0
	lw $t1, 0($s1)
	lw $t3, 0($t1)
	li $v1, 0
	move $t2, $v1
	move $a0, $s1
	move $a1, $t2
	jalr $t3
	move $t4, $v0
	move $t7, $t4
	li $v1, 1
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
	.globl Tree_Search
Tree_Search:
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
	li $v1, 1
	move $s4, $v1
	move $s5, $s4
	li $v1, 0
	move $s6, $v1
	move $s7, $s6
L36:
	nop
	bne $s5, 1, L37
	lw $t0, 0($s3)
	lw $t1, 4($t0)
	move $a0, $s3
	jalr $t1
	move $t2, $v0
	move $t3, $t2
	sle $t4, $s1, $t3
	bne $t4, 1, L39
	sne $t5, $s1, $t3
	bne $t5, 1, L39
	lw $t6, 0($s3)
	lw $t7, 44($t6)
	move $a0, $s3
	jalr $t7
	move $t8, $v0
	bne $t8, 1, L41
	lw $t9, 0($s3)
	lw $s2, 8($t9)
	move $a0, $s3
	jalr $s2
	move $s4, $v0
	move $s3, $s4
	b L40
L41:
	nop
	li $v1, 0
	move $s6, $v1
	move $s5, $s6
L40:
	nop
	b L38
L39:
	nop
	sle $t0, $t3, $s1
	bne $t0, 1, L43
	sne $t1, $t3, $s1
	bne $t1, 1, L43
	lw $t2, 0($s3)
	lw $t4, 56($t2)
	move $a0, $s3
	jalr $t4
	move $t5, $v0
	bne $t5, 1, L45
	lw $t6, 0($s3)
	lw $t7, 40($t6)
	move $a0, $s3
	jalr $t7
	move $t8, $v0
	move $s3, $t8
	b L44
L45:
	nop
	li $v1, 0
	move $t9, $v1
	move $s5, $t9
L44:
	nop
	b L42
L43:
	nop
	li $v1, 1
	move $s2, $v1
	move $s7, $s2
	li $v1, 0
	move $s4, $v1
	move $s5, $s4
L42:
	nop
L38:
	nop
	b L36
L37:
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
	.globl Tree_Print
Tree_Print:
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
	move $s3, $s0
	lw $s4, 0($s3)
	lw $s5, 12($s4)
	move $a0, $s3
	move $a1, $s2
	jalr $s5
	move $s6, $v0
	move $s7, $s6
	li $v1, 1
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
	.globl Tree_RecPrint
Tree_RecPrint:
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
	lw $s2, 0($s1)
	lw $s3, 44($s2)
	move $a0, $s1
	jalr $s3
	move $s4, $v0
	bne $s4, 1, L47
	move $s5, $s0
	lw $s6, 0($s5)
	lw $s7, 12($s6)
	lw $t0, 0($s1)
	lw $t1, 8($t0)
	move $a0, $s1
	jalr $t1
	move $t2, $v0
	move $a0, $s5
	move $a1, $t2
	jalr $s7
	move $t3, $v0
	move $t4, $t3
	b L46
L47:
	nop
	li $v1, 1
	move $t5, $v1
	move $t4, $t5
L46:
	nop
	lw $t6, 0($s1)
	lw $t7, 4($t6)
	move $a0, $s1
	jalr $t7
	move $t8, $v0
	move $a0, $t8
	jal _print
	lw $t9, 0($s1)
	lw $s2, 56($t9)
	move $a0, $s1
	jalr $s2
	move $s3, $v0
	bne $s3, 1, L49
	move $s4, $s0
	lw $s6, 0($s4)
	lw $t0, 12($s6)
	lw $t1, 0($s1)
	lw $s5, 40($t1)
	move $a0, $s1
	jalr $s5
	move $s7, $v0
	move $a0, $s4
	move $a1, $s7
	jalr $t0
	move $t2, $v0
	move $t4, $t2
	b L48
L49:
	nop
	li $v1, 1
	move $t3, $v1
	move $t4, $t3
L48:
	nop
	li $v1, 1
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
