	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 4
	.globl	__ZN4Vec3C2Ev                   ; -- Begin function _ZN4Vec3C2Ev
	.p2align	2
__ZN4Vec3C2Ev:                          ; @_ZN4Vec3C2Ev
	.cfi_startproc
; %bb.0:
	stp	xzr, xzr, [x0]
	str	xzr, [x0, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN4Vec3C1Ev                   ; -- Begin function _ZN4Vec3C1Ev
	.p2align	2
__ZN4Vec3C1Ev:                          ; @_ZN4Vec3C1Ev
	.cfi_startproc
; %bb.0:
	stp	xzr, xzr, [x0]
	str	xzr, [x0, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN4Vec3C2Eddd                 ; -- Begin function _ZN4Vec3C2Eddd
	.p2align	2
__ZN4Vec3C2Eddd:                        ; @_ZN4Vec3C2Eddd
	.cfi_startproc
; %bb.0:
	stp	d0, d1, [x0]
	str	d2, [x0, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN4Vec3C1Eddd                 ; -- Begin function _ZN4Vec3C1Eddd
	.p2align	2
__ZN4Vec3C1Eddd:                        ; @_ZN4Vec3C1Eddd
	.cfi_startproc
; %bb.0:
	stp	d0, d1, [x0]
	str	d2, [x0, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec3plERKS_               ; -- Begin function _ZNK4Vec3plERKS_
	.p2align	2
__ZNK4Vec3plERKS_:                      ; @_ZNK4Vec3plERKS_
	.cfi_startproc
; %bb.0:
	ldp	d0, d1, [x0]
	ldp	d2, d3, [x1]
	fadd	d0, d2, d0
	fadd	d1, d3, d1
	ldr	d2, [x0, #16]
	ldr	d3, [x1, #16]
	fadd	d2, d3, d2
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN4Vec3pLERKS_                ; -- Begin function _ZN4Vec3pLERKS_
	.p2align	2
__ZN4Vec3pLERKS_:                       ; @_ZN4Vec3pLERKS_
	.cfi_startproc
; %bb.0:
	ldr	q0, [x1]
	ldr	q1, [x0]
	fadd.2d	v0, v1, v0
	str	q0, [x0]
	ldr	d0, [x1, #16]
	ldr	d1, [x0, #16]
	fadd	d0, d1, d0
	str	d0, [x0, #16]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec3miERKS_               ; -- Begin function _ZNK4Vec3miERKS_
	.p2align	2
__ZNK4Vec3miERKS_:                      ; @_ZNK4Vec3miERKS_
	.cfi_startproc
; %bb.0:
	ldp	d0, d1, [x0]
	ldp	d2, d3, [x1]
	fsub	d0, d0, d2
	fsub	d1, d1, d3
	ldr	d2, [x0, #16]
	ldr	d3, [x1, #16]
	fsub	d2, d2, d3
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec3mlEd                  ; -- Begin function _ZNK4Vec3mlEd
	.p2align	2
__ZNK4Vec3mlEd:                         ; @_ZNK4Vec3mlEd
	.cfi_startproc
; %bb.0:
	ldp	d1, d2, [x0]
	fmul	d3, d1, d0
	fmul	d1, d2, d0
	ldr	d2, [x0, #16]
	fmul	d2, d2, d0
	fmov	d0, d3
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZmldRK4Vec3                   ; -- Begin function _ZmldRK4Vec3
	.p2align	2
__ZmldRK4Vec3:                          ; @_ZmldRK4Vec3
	.cfi_startproc
; %bb.0:
	ldp	d1, d2, [x0]
	fmul	d3, d1, d0
	fmul	d1, d2, d0
	ldr	d2, [x0, #16]
	fmul	d2, d2, d0
	fmov	d0, d3
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec3mlERKS_               ; -- Begin function _ZNK4Vec3mlERKS_
	.p2align	2
__ZNK4Vec3mlERKS_:                      ; @_ZNK4Vec3mlERKS_
	.cfi_startproc
; %bb.0:
	ldp	d0, d1, [x0]
	ldp	d2, d3, [x1]
	fmul	d0, d2, d0
	fmul	d1, d3, d1
	ldr	d2, [x0, #16]
	ldr	d3, [x1, #16]
	fmul	d2, d3, d2
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec3dvEd                  ; -- Begin function _ZNK4Vec3dvEd
	.p2align	2
__ZNK4Vec3dvEd:                         ; @_ZNK4Vec3dvEd
	.cfi_startproc
; %bb.0:
	fmov	d1, #1.00000000
	fdiv	d2, d1, d0
	ldp	d0, d1, [x0]
	fmul	d0, d0, d2
	fmul	d1, d1, d2
	ldr	d3, [x0, #16]
	fmul	d2, d3, d2
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec3ixEi                  ; -- Begin function _ZNK4Vec3ixEi
	.p2align	2
__ZNK4Vec3ixEi:                         ; @_ZNK4Vec3ixEi
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	add	x8, x0, #16
	add	x9, x0, #8
	csel	x8, x8, x9, ne
	cmp	w1, #0
	csel	x8, x0, x8, eq
	ldr	d0, [x8]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec3ngEv                  ; -- Begin function _ZNK4Vec3ngEv
	.p2align	2
__ZNK4Vec3ngEv:                         ; @_ZNK4Vec3ngEv
	.cfi_startproc
; %bb.0:
	ldp	d0, d1, [x0]
	fneg	d0, d0
	fneg	d1, d1
	ldr	d2, [x0, #16]
	fneg	d2, d2
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec33dotERKS_             ; -- Begin function _ZNK4Vec33dotERKS_
	.p2align	2
__ZNK4Vec33dotERKS_:                    ; @_ZNK4Vec33dotERKS_
	.cfi_startproc
; %bb.0:
	ldr	d0, [x0]
	ldr	d1, [x1]
	ldur	q2, [x0, #8]
	ldur	q3, [x1, #8]
	fmul.2d	v2, v3, v2
	fmadd	d0, d1, d0, d2
	mov	d1, v2[1]
	fadd	d0, d0, d1
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec35crossERKS_           ; -- Begin function _ZNK4Vec35crossERKS_
	.p2align	2
__ZNK4Vec35crossERKS_:                  ; @_ZNK4Vec35crossERKS_
	.cfi_startproc
; %bb.0:
	ldp	d3, d1, [x1, #8]
	ldp	d5, d2, [x0, #8]
	ldr	d4, [x1]
	fmul	d0, d3, d2
	ldr	d6, [x0]
	fnmsub	d0, d1, d5, d0
	fmul	d1, d6, d1
	fnmsub	d1, d4, d2, d1
	fmul	d2, d4, d5
	fnmsub	d2, d6, d3, d2
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec36lengthEv             ; -- Begin function _ZNK4Vec36lengthEv
	.p2align	2
__ZNK4Vec36lengthEv:                    ; @_ZNK4Vec36lengthEv
	.cfi_startproc
; %bb.0:
	ldr	d0, [x0]
	ldur	q1, [x0, #8]
	fmul.2d	v1, v1, v1
	fmadd	d0, d0, d0, d1
	mov	d1, v1[1]
	fadd	d0, d0, d1
	fsqrt	d0, d0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec39normalizeEv          ; -- Begin function _ZNK4Vec39normalizeEv
	.p2align	2
__ZNK4Vec39normalizeEv:                 ; @_ZNK4Vec39normalizeEv
	.cfi_startproc
; %bb.0:
	ldp	d0, d1, [x0]
	fmul	d2, d0, d0
	fmadd	d2, d1, d1, d2
	ldr	d3, [x0, #16]
	fmadd	d2, d3, d3, d2
	fsqrt	d2, d2
	fmov	d4, #1.00000000
	fdiv	d2, d4, d2
	fmul	d0, d2, d0
	fmul	d1, d2, d1
	fmul	d2, d2, d3
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK4Vec3 ; -- Begin function _ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK4Vec3
	.p2align	2
__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK4Vec3: ; @_ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK4Vec3
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x1
	mov	x20, x0
Lloh0:
	adrp	x1, l_.str@PAGE
Lloh1:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	d0, [x19]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh2:
	adrp	x21, l_.str.1@PAGE
Lloh3:
	add	x21, x21, l_.str.1@PAGEOFF
	mov	x1, x21
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	d0, [x19, #8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	mov	x1, x21
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	d0, [x19, #16]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh4:
	adrp	x1, l_.str.2@PAGE
Lloh5:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x0, x20
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK4Vec38nearZeroEv           ; -- Begin function _ZNK4Vec38nearZeroEv
	.p2align	2
__ZNK4Vec38nearZeroEv:                  ; @_ZNK4Vec38nearZeroEv
	.cfi_startproc
; %bb.0:
	ldr	d0, [x0]
	fabs	d0, d0
	mov	x8, #35898                      ; =0x8c3a
	movk	x8, #57904, lsl #16
	movk	x8, #31118, lsl #32
	movk	x8, #15941, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	b.ge	LBB18_3
; %bb.1:
	ldr	d0, [x0, #8]
	fabs	d0, d0
	fmov	d1, x8
	fcmp	d0, d1
	b.ge	LBB18_3
; %bb.2:
	ldr	d0, [x0, #16]
	fabs	d0, d0
	fmov	d1, x8
	fcmp	d0, d1
	cset	w0, lt
	ret
LBB18_3:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp0:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp1:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB19_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB19_7
; %bb.3:
Ltmp3:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp4:
; %bb.4:
Ltmp5:
Lloh6:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh7:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp6:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp7:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp8:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB19_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp10:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp11:
; %bb.8:
	cbnz	x0, LBB19_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp13:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp14:
LBB19_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB19_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB19_12:
Ltmp15:
	b	LBB19_15
LBB19_13:
Ltmp9:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB19_16
LBB19_14:
Ltmp12:
LBB19_15:
	mov	x20, x0
LBB19_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB19_18
LBB19_17:
Ltmp2:
	mov	x20, x0
LBB19_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp16:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp17:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB19_11
LBB19_20:
Ltmp18:
	mov	x19, x0
Ltmp19:
	bl	___cxa_end_catch
Ltmp20:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB19_22:
Ltmp21:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh6, Lloh7
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table19:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp12-Lfunc_begin0            ;     jumps to Ltmp12
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp8-Ltmp5                    ;   Call between Ltmp5 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp11-Ltmp10                  ;   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin0            ;     jumps to Ltmp12
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp13-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp14-Ltmp13                  ;   Call between Ltmp13 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin0            ;     jumps to Ltmp15
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp16-Ltmp14                  ;   Call between Ltmp14 and Ltmp16
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp17-Ltmp16                  ;   Call between Ltmp16 and Ltmp17
	.uleb128 Ltmp18-Lfunc_begin0            ;     jumps to Ltmp18
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp19-Ltmp17                  ;   Call between Ltmp17 and Ltmp19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp20-Ltmp19                  ;   Call between Ltmp19 and Ltmp20
	.uleb128 Ltmp21-Lfunc_begin0            ;     jumps to Ltmp21
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Lfunc_end0-Ltmp20              ;   Call between Ltmp20 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB20_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB20_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB20_15
LBB20_3:
	cmp	x23, #1
	b.lt	LBB20_12
; %bb.4:
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x23, x8
	b.hs	LBB20_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB20_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB20_8
LBB20_7:
	orr	x8, x23, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x26, x9, x8, eq
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB20_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp22:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp23:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB20_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB20_15
	b	LBB20_12
LBB20_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB20_15
LBB20_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB20_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB20_15
LBB20_14:
	str	xzr, [x20, #24]
	b	LBB20_16
LBB20_15:
	mov	x19, #0                         ; =0x0
LBB20_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB20_17:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
LBB20_18:
Ltmp24:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB20_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB20_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table20:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp22-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp22
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp23-Ltmp22                  ;   Call between Ltmp22 and Ltmp23
	.uleb128 Ltmp24-Lfunc_begin1            ;     jumps to Ltmp24
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp23              ;   Call between Ltmp23 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh8:
	adrp	x0, l_.str.3@PAGE
Lloh9:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB9nqe210106EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.globl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB9nqe210106EPKc: ; @_ZNSt3__120__throw_length_errorB9nqe210106EPKc
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp25:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B9nqe210106EPKc
Ltmp26:
; %bb.1:
Lloh10:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh11:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh12:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh13:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB23_2:
Ltmp27:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table23:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp25-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp25
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp26-Ltmp25                  ;   Call between Ltmp25 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin2            ;     jumps to Ltmp27
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp26              ;   Call between Ltmp26 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B9nqe210106EPKc ; -- Begin function _ZNSt12length_errorC1B9nqe210106EPKc
	.globl	__ZNSt12length_errorC1B9nqe210106EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B9nqe210106EPKc
	.p2align	2
__ZNSt12length_errorC1B9nqe210106EPKc:  ; @_ZNSt12length_errorC1B9nqe210106EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh14:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh15:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"("

l_.str.1:                               ; @.str.1
	.asciz	","

l_.str.2:                               ; @.str.2
	.asciz	")"

l_.str.3:                               ; @.str.3
	.asciz	"basic_string"

.subsections_via_symbols
