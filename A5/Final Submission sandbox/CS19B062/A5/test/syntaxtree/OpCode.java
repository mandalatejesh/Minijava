//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> "abs"
 *       | "add"
 *       | "addciu"
 *       | "addu"
 *       | "and"
 *       | "b"
 *       | "bal"
 *       | "bc0f"
 *       | "bc0fl"
 *       | "bc0t"
 *       | "bc0tlbc1f"
 *       | "bc1fl"
 *       | "bc1t"
 *       | "bc1tl"
 *       | "bc2f"
 *       | "bc2fl"
 *       | "bc2t"
 *       | "bc2tl"
 *       | "beq"
 *       | "beql"
 *       | "beqz"
 *       | "beqzl"
 *       | "bge"
 *       | "bgel"
 *       | "bgeu"
 *       | "bgeul"
 *       | "bgez"
 *       | "bgezal"
 *       | "bgezall"
 *       | "bgezl"
 *       | "bgt"
 *       | "bgtl"
 *       | "bgtu"
 *       | "bgtul"
 *       | "bgtz"
 *       | "bgtzl"
 *       | "ble"
 *       | "blel"
 *       | "bleu"
 *       | "bleul"
 *       | "blez"
 *       | "blezl"
 *       | "blt"
 *       | "bltl"
 *       | "bltu"
 *       | "bltul"
 *       | "bltz"
 *       | "bltzal"
 *       | "bltzall"
 *       | "bltzl"
 *       | "bne"
 *       | "bnel"
 *       | "bnez"
 *       | "bnezl"
 *       | "break"
 *       | "cache"
 *       | "cfc0"
 *       | "cfc1"
 *       | "cfc2"
 *       | "ctc0"
 *       | "ctc1"
 *       | "ctc2"
 *       | "dabs"
 *       | "dadd"
 *       | "daddi"
 *       | "daddiu"
 *       | "daddu"
 *       | "ddiv"
 *       | "ddivd"
 *       | "ddivdu"
 *       | "ddivu"
 *       | "div"
 *       | "divd"
 *       | "divdu"
 *       | "divo"
 *       | "divou"
 *       | "divu"
 *       | "dla"
 *       | "dli"
 *       | "dmadd16"
 *       | "dmfc0"
 *       | "dmfc1"
 *       | "dmfc2"
 *       | "dmtc0"
 *       | "dmtc1"
 *       | "dmtc2"
 *       | "dmul"
 *       | "dmulo"
 *       | "dmulou"
 *       | "dmult"
 *       | "dmultu"
 *       | "dneg"
 *       | "dnegu"
 *       | "drem"
 *       | "dremu"
 *       | "dret"
 *       | "drol"
 *       | "dror"
 *       | "dsll"
 *       | "dsllv"
 *       | "dsll32"
 *       | "dsra"
 *       | "dsra32"
 *       | "dsrl"
 *       | "dsrlv"
 *       | "dsrl32"
 *       | "dsub"
 *       | "dsubu"
 *       | "eret"
 *       | "ffc"
 *       | "ffs"
 *       | "flushd"
 *       | "j"
 *       | "jr"
 *       | "jal"
 *       | "jalr"
 *       | "la"
 *       | "lb"
 *       | "lbu"
 *       | "ld"
 *       | "ldl"
 *       | "ldr"
 *       | "ldxc1"
 *       | "lh"
 *       | "lhu"
 *       | "li"
 *       | "ll"
 *       | "lld"
 *       | "lui"
 *       | "lw"
 *       | "lwc1"
 *       | "lwl"
 *       | "lwr"
 *       | "lwu"
 *       | "lwxc1"
 *       | "madd"
 *       | "maddu"
 *       | "mad"
 *       | "madu"
 *       | "madd16"
 *       | "max"
 *       | "mfc0"
 *       | "mfc1"
 *       | "mfc2"
 *       | "mfhi"
 *       | "mflo"
 *       | "min"
 *       | "move"
 *       | "movf"
 *       | "movn"
 *       | "movt"
 *       | "movz"
 *       | "msub"
 *       | "msubu"
 *       | "mtc0"
 *       | "mtc1"
 *       | "mtc2"
 *       | "mthi"
 *       | "mtlo"
 *       | "mul"
 *       | "mulu"
 *       | "mulo"
 *       | "mulou"
 *       | "mult"
 *       | "multu"
 *       | "neg"
 *       | "negu"
 *       | "nop"
 *       | "nor"
 *       | "not"
 *       | "or"
 *       | "ori"
 *       | "pref"
 *       | "prefx"
 *       | "r2u"
 *       | "radd"
 *       | "rem"
 *       | "remu"
 *       | "rfe"
 *       | "rmul"
 *       | "rol"
 *       | "ror"
 *       | "rsub"
 *       | "sb"
 *       | "sc"
 *       | "scd"
 *       | "sd"
 *       | "sdbbp"
 *       | "sdc1"
 *       | "sdl"
 *       | "sdr"
 *       | "sdxc1"
 *       | "selsl"
 *       | "selsr"
 *       | "seq"
 *       | "sge"
 *       | "sgeu"
 *       | "sgt"
 *       | "sgtu"
 *       | "sh"
 *       | "sle"
 *       | "sleu"
 *       | "sll"
 *       | "sllv"
 *       | "slt"
 *       | "slti"
 *       | "sltiu"
 *       | "sltu"
 *       | "sne"
 *       | "sra"
 *       | "srav"
 *       | "srl"
 *       | "srlv"
 *       | "standby"
 *       | "sub"
 *       | "subu"
 *       | "suspend"
 *       | "sw"
 *       | "swc1"
 *       | "swl"
 *       | "swr"
 *       | "swxc1"
 *       | "sync"
 *       | "syscall"
 *       | "teq"
 *       | "teqi"
 *       | "tge"
 *       | "tgei"
 *       | "tgeiu"
 *       | "tgeu"
 *       | "tlbp"
 *       | "tlbr"
 *       | "tlbwi"
 *       | "tlbwr"
 *       | "tlt"
 *       | "tlti"
 *       | "tltiu"
 *       | "tltu"
 *       | "tne"
 *       | "tnei"
 *       | "u2r"
 *       | "uld"
 *       | "ulh"
 *       | "ulhu"
 *       | "ulw"
 *       | "usd"
 *       | "ushusw"
 *       | "waiti"
 *       | "wb"
 *       | "xor"
 *       | "xori"
 *       | "abs.s"
 *       | "add.s"
 *       | "c.eq.s"
 *       | "c.f.s"
 *       | "c.le.s"
 *       | "c.lt.s"
 *       | "c.nge.s"
 *       | "c.ngl.s"
 *       | "c.ngt.s"
 *       | "c.ole.s"
 *       | "c.olt.s"
 *       | "c.seq.s"
 *       | "c.sf.s"
 *       | "c.ueq.s"
 *       | "c.ule.s"
 *       | "c.ult.s"
 *       | "c.un.s"
 *       | "ceil.l.d"
 *       | "ceil.l.s"
 *       | "ceil.w.d"
 *       | "ceil.w.s"
 *       | "cvt.d.l"
 *       | "cvt.d.s"
 *       | "cvt.d.w"
 *       | "cvt.l.d"
 *       | "cvt.l.s"
 *       | "cvt.s.d"
 *       | "cvt.s.l"
 *       | "cvt.s.w"
 *       | "cvt.w.d"
 *       | "cvt.w.s"
 *       | "div.s"
 *       | "floor.l.d"
 *       | "floor.l.s"
 *       | "floor.w.d"
 *       | "floor.w.s"
 *       | "l.d"
 *       | "l.s"
 *       | "ldc1"
 *       | "madd.s"
 *       | "mov.s"
 *       | "movf.s"
 *       | "movn.s"
 *       | "movt.s"
 *       | "movz.s"
 *       | "msub.s"
 *       | "mul.s"
 *       | "neg.s"
 *       | "nmadd.s"
 *       | "nmsub.s"
 *       | "recip.s"
 *       | "round.l.d"
 *       | "round.l.s"
 *       | "round.w.d"
 *       | "round.w.s"
 *       | "rsqrt.s"
 *       | "s.d"
 *       | "s.s"
 *       | "sqrt.s"
 *       | "sub.s"
 *       | "trunc.l.d"
 *       | "trunc.l.s"
 */
public class OpCode implements Node {
   public NodeChoice f0;

   public OpCode(NodeChoice n0) {
      f0 = n0;
   }

   public void accept(visitor.Visitor v) {
      v.visit(this);
   }
   public <R,A> R accept(visitor.GJVisitor<R,A> v, A argu) {
      return v.visit(this,argu);
   }
   public <R> R accept(visitor.GJNoArguVisitor<R> v) {
      return v.visit(this);
   }
   public <A> void accept(visitor.GJVoidVisitor<A> v, A argu) {
      v.visit(this,argu);
   }
}

