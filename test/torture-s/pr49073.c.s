	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr49073.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$2=, 0
	i32.const	$1=, a+4
.LBB0_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label1:
	i32.load	$0=, 0($1)
	block
	i32.const	$push11=, 1
	i32.and 	$push1=, $2, $pop11
	i32.const	$push17=, 0
	i32.eq  	$push18=, $pop1, $pop17
	br_if   	0, $pop18       # 0: down to label3
# BB#2:                                 # %do.body
                                        #   in Loop: Header=BB0_1 Depth=1
	i32.const	$push12=, 4
	i32.ne  	$push2=, $0, $pop12
	br_if   	0, $pop2        # 0: down to label3
# BB#3:                                 # %if.then
	i32.const	$push5=, 0
	i32.const	$push13=, 0
	i32.load	$push6=, c($pop13)
	i32.const	$push7=, 1
	i32.add 	$push0=, $pop6, $pop7
	i32.store	$0=, c($pop5), $pop0
	br      	3               # 3: down to label0
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	end_block                       # label3:
	i32.const	$push16=, 3
	i32.eq  	$2=, $0, $pop16
	i32.const	$push15=, 4
	i32.add 	$1=, $1, $pop15
	i32.const	$push14=, 7
	i32.lt_s	$push3=, $0, $pop14
	br_if   	0, $pop3        # 0: up to label1
# BB#5:                                 # %do.endthread-pre-split
	end_loop                        # label2:
	i32.const	$push4=, 0
	i32.load	$0=, c($pop4)
.LBB0_6:                                # %do.end
	end_block                       # label0:
	block
	i32.const	$push8=, 1
	i32.ne  	$push9=, $0, $pop8
	br_if   	0, $pop9        # 0: down to label4
# BB#7:                                 # %if.end6
	i32.const	$push10=, 0
	return  	$pop10
.LBB0_8:                                # %if.then5
	end_block                       # label4:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	a                       # @a
	.type	a,@object
	.section	.data.a,"aw",@progbits
	.globl	a
	.p2align	4
a:
	.int32	1                       # 0x1
	.int32	2                       # 0x2
	.int32	3                       # 0x3
	.int32	4                       # 0x4
	.int32	5                       # 0x5
	.int32	6                       # 0x6
	.int32	7                       # 0x7
	.size	a, 28

	.hidden	c                       # @c
	.type	c,@object
	.section	.bss.c,"aw",@nobits
	.globl	c
	.p2align	2
c:
	.int32	0                       # 0x0
	.size	c, 4


	.ident	"clang version 3.9.0 "
