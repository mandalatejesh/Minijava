	.text
	.globl 	 main
main:
	move $fp, $sp
	sw $ra, -4($sp)
	subu $sp, $sp, 12
	li $v1, 8
	move $s0, $v1
	move $a0, $s0
	jal _halloc
	move $s1, $v0
	li $v1, 8
	move $s2, $v1
	move $a0, $s2
	jal _halloc
	move $s3, $v0
	la $s4, t101_go
	sw $s4, 4($s3)
	la $s5, t101_run
	sw $s5, 0($s3)
	sw $s3, 0($s1)
	lw $s6, 0($s1)
	lw $s7, 4($s6)
	move $a0, $s1
	jalr $s7
	move $t0, $v0
	move $a0, $t0
	jal _print
	addu $sp, $sp, 12
	lw $ra, -4($fp)
	jal _exitret
	.text
	.globl t101_run
t101_run:
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
	li $v1, 2
	move $s1, $v1
	sw $s1, 4($s0)
	lw $s2, 4($s0)
	move $a0, $s2
	jal _print
	lw $s3, 4($s0)
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
	.globl t101_go
t101_go:
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
	li $v1, 8
	move $s1, $v1
	move $a0, $s1
	jal _halloc
	move $s2, $v0
	li $v1, 8
	move $s3, $v1
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	la $s5, t101_go
	sw $s5, 4($s4)
	la $s6, t101_run
	sw $s6, 0($s4)
	sw $s4, 0($s2)
	move $s7, $s2
	lw $t0, 0($s7)
	lw $t1, 0($t0)
	move $a0, $s7
	jalr $t1
	move $t2, $v0
	move $t3, $t2
	li $v1, 12
	move $t4, $v1
	move $a0, $t4
	jal _halloc
	move $t5, $v0
	li $v1, 12
	move $t6, $v1
	move $a0, $t6
	jal _halloc
	move $t7, $v0
	la $t8, t102_run
	sw $t8, 8($t7)
	la $t9, t102_go
	sw $t9, 4($t7)
	la $s1, t101_run
	sw $s1, 0($t7)
	sw $t7, 0($t5)
	move $s7, $t5
	lw $s3, 0($s7)
	lw $s5, 0($s3)
	move $a0, $s7
	jalr $s5
	move $s4, $v0
	move $t3, $s4
	li $v1, 12
	move $s6, $v1
	move $a0, $s6
	jal _halloc
	move $s2, $v0
	li $v1, 12
	move $t0, $v1
	move $a0, $t0
	jal _halloc
	move $t1, $v0
	la $t2, t102_run
	sw $t2, 8($t1)
	la $t4, t102_go
	sw $t4, 4($t1)
	la $t6, t101_run
	sw $t6, 0($t1)
	sw $t1, 0($s2)
	move $t8, $s2
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
	.globl t102_go
t102_go:
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
	li $v1, 12
	move $s1, $v1
	move $a0, $s1
	jal _halloc
	move $s2, $v0
	li $v1, 12
	move $s3, $v1
	move $a0, $s3
	jal _halloc
	move $s4, $v0
	la $s5, t102_run
	sw $s5, 8($s4)
	la $s6, t102_go
	sw $s6, 4($s4)
	la $s7, t101_run
	sw $s7, 0($s4)
	sw $s4, 0($s2)
	move $t0, $s2
	lw $t1, 0($t0)
	lw $t2, 8($t1)
	move $a0, $t0
	jalr $t2
	move $t3, $v0
	move $t4, $t3
	li $v1, 8
	move $t5, $v1
	move $a0, $t5
	jal _halloc
	move $t6, $v0
	li $v1, 8
	move $t7, $v1
	move $a0, $t7
	jal _halloc
	move $t8, $v0
	la $t9, t101_go
	sw $t9, 4($t8)
	la $s1, t101_run
	sw $s1, 0($t8)
	sw $t8, 0($t6)
	move $s3, $t6
	lw $s5, 0($s3)
	lw $s6, 4($s5)
	move $a0, $s3
	jalr $s6
	move $s4, $v0
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
	.globl t102_run
t102_run:
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
	li $v1, 9
	move $s1, $v1
	sw $s1, 8($s0)
	lw $s2, 8($s0)
	move $a0, $s2
	jal _print
	lw $s3, 8($s0)
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
