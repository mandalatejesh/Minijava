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
	la $s4, t111_run
	sw $s4, 0($s3)
	la $s5, t111_go
	sw $s5, 4($s3)
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
	.globl t111_run
t111_run:
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
	.globl t111_go
t111_go:
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
	la $s5, t111_run
	sw $s5, 0($s4)
	la $s6, t111_go
	sw $s6, 4($s4)
	sw $s4, 0($s2)
	move $s7, $s2
	li $v1, 8
	move $t0, $v1
	move $a0, $t0
	jal _halloc
	move $t1, $v0
	li $v1, 8
	move $t2, $v1
	move $a0, $t2
	jal _halloc
	move $t3, $v0
	la $t4, t111_run
	sw $t4, 0($t3)
	la $t5, t111_go
	sw $t5, 4($t3)
	sw $t3, 0($t1)
	lw $t6, 0($t1)
	lw $t7, 0($t6)
	move $a0, $t1
	jalr $t7
	move $t8, $v0
	move $t9, $t8
	li $v1, 12
	move $s1, $v1
	move $a0, $s1
	jal _halloc
	move $s3, $v0
	li $v1, 12
	move $s5, $v1
	move $a0, $s5
	jal _halloc
	move $s4, $v0
	la $s6, t111_run
	sw $s6, 0($s4)
	la $s2, t112_run
	sw $s2, 8($s4)
	la $t0, t111_go
	sw $t0, 4($s4)
	sw $s4, 0($s3)
	move $s7, $s3
	li $v1, 12
	move $t2, $v1
	move $a0, $t2
	jal _halloc
	move $t4, $v0
	li $v1, 12
	move $t3, $v1
	move $a0, $t3
	jal _halloc
	move $t5, $v0
	la $t6, t111_run
	sw $t6, 0($t5)
	la $t1, t112_run
	sw $t1, 8($t5)
	la $t7, t111_go
	sw $t7, 4($t5)
	sw $t5, 0($t4)
	lw $t8, 0($t4)
	lw $s1, 8($t8)
	move $a0, $t4
	jalr $s1
	move $s5, $v0
	move $t9, $s5
	li $v1, 12
	move $s6, $v1
	move $a0, $s6
	jal _halloc
	move $s2, $v0
	li $v1, 12
	move $s4, $v1
	move $a0, $s4
	jal _halloc
	move $t0, $v0
	la $s7, t111_run
	sw $s7, 0($t0)
	la $s3, t112_run
	sw $s3, 8($t0)
	la $t2, t111_go
	sw $t2, 4($t0)
	sw $t0, 0($s2)
	move $t3, $s2
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
	.globl t112_run
t112_run:
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
