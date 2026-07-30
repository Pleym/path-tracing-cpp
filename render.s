	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 4
	.globl	__Z14calculateColorRK3RayRKNSt3__16vectorIP6ObjectNS2_9allocatorIS5_EEEEi ; -- Begin function _Z14calculateColorRK3RayRKNSt3__16vectorIP6ObjectNS2_9allocatorIS5_EEEEi
	.p2align	2
__Z14calculateColorRK3RayRKNSt3__16vectorIP6ObjectNS2_9allocatorIS5_EEEEi: ; @_Z14calculateColorRK3RayRKNSt3__16vectorIP6ObjectNS2_9allocatorIS5_EEEEi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #480
	stp	x28, x27, [sp, #448]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #464]            ; 16-byte Folded Spill
	add	x29, sp, #464
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-56]
	stur	w2, [x29, #-60]
	ldur	w8, [x29, #-60]
	subs	w8, w8, #0
	b.gt	LBB0_2
	b	LBB0_1
LBB0_1:
	sub	x0, x29, #40
	movi	d2, #0000000000000000
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
	b	LBB0_14
LBB0_2:
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	sub	x8, x29, #136
	bl	__Z18findFirstCollisionRK3RayRKNSt3__16vectorIP6ObjectNS2_9allocatorIS5_EEEE
	ldur	x8, [x29, #-136]
	cbz	x8, LBB0_13
	b	LBB0_3
LBB0_3:
	ldur	x8, [x29, #-136]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-144]
	ldur	x8, [x29, #-144]
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	cbz	x8, LBB0_5
	b	LBB0_4
LBB0_4:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	adrp	x1, __ZTI8Material@PAGE
	add	x1, x1, __ZTI8Material@PAGEOFF
	adrp	x2, __ZTI8Emissive@GOTPAGE
	ldr	x2, [x2, __ZTI8Emissive@GOTPAGEOFF]
	mov	x3, #0                          ; =0x0
	bl	___dynamic_cast
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB0_6
LBB0_5:
	mov	x8, #0                          ; =0x0
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB0_6
LBB0_6:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-152]
	ldur	x8, [x29, #-152]
	cbz	x8, LBB0_10
	b	LBB0_7
LBB0_7:
	ldurb	w8, [x29, #-72]
	tbz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:
	ldur	x0, [x29, #-152]
	bl	__ZNK8Emissive7emittedEv
	stur	d0, [x29, #-40]
	stur	d1, [x29, #-32]
	stur	d2, [x29, #-24]
	b	LBB0_14
LBB0_9:
	sub	x0, x29, #40
	movi	d2, #0000000000000000
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
	b	LBB0_14
LBB0_10:
	sub	x0, x29, #200
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	bl	__ZN3RayC1Ev
	sub	x0, x29, #224
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	bl	__ZN4Vec3C1Ev
	ldr	x3, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x4, [sp, #64]                   ; 8-byte Folded Reload
	ldur	x0, [x29, #-144]
	ldur	x1, [x29, #-48]
	ldr	x8, [x0]
	ldr	x8, [x8]
	sub	x2, x29, #136
	blr	x8
	tbz	w0, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	ldur	x1, [x29, #-56]
	ldur	w8, [x29, #-60]
	subs	w2, w8, #1
	sub	x0, x29, #200
	bl	__Z14calculateColorRK3RayRKNSt3__16vectorIP6ObjectNS2_9allocatorIS5_EEEEi
	add	x1, sp, #216
	str	d0, [sp, #216]
	str	d1, [sp, #224]
	str	d2, [sp, #232]
	sub	x0, x29, #224
	bl	__ZNK4Vec3mlERKS_
	stur	d0, [x29, #-40]
	stur	d1, [x29, #-32]
	stur	d2, [x29, #-24]
	b	LBB0_14
LBB0_12:
	sub	x0, x29, #40
	movi	d2, #0000000000000000
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
	b	LBB0_14
LBB0_13:
	ldur	x8, [x29, #-48]
	add	x0, x8, #24
	bl	__ZNK4Vec39normalizeEv
	str	d0, [sp, #192]
	str	d1, [sp, #200]
	str	d2, [sp, #208]
	ldr	d0, [sp, #200]
	fmov	d2, #1.00000000
	str	d2, [sp, #24]                   ; 8-byte Folded Spill
	fadd	d0, d0, d2
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	str	d0, [sp, #184]
	ldr	d0, [sp, #184]
	fsub	d0, d2, d0
	str	d0, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, sp, #136
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	d0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZmldRK4Vec3
	fmov	d3, d0
	fmov	d0, d2
	ldr	d2, [sp, #24]                   ; 8-byte Folded Reload
	add	x8, sp, #160
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	str	d3, [sp, #160]
	str	d1, [sp, #168]
	str	d0, [sp, #176]
	ldr	d0, [sp, #184]
	str	d0, [sp, #40]                   ; 8-byte Folded Spill
	add	x0, sp, #88
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	fmov	d0, #0.50000000
	mov	x8, #7378697629483820646        ; =0x6666666666666666
	movk	x8, #16358, lsl #48
	fmov	d1, x8
	bl	__ZN4Vec3C1Eddd
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZmldRK4Vec3
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	add	x1, sp, #112
	str	d0, [sp, #112]
	str	d1, [sp, #120]
	str	d2, [sp, #128]
	bl	__ZNK4Vec3plERKS_
	stur	d0, [x29, #-40]
	stur	d1, [x29, #-32]
	stur	d2, [x29, #-24]
	b	LBB0_14
LBB0_14:
	ldur	d0, [x29, #-40]
	ldur	d1, [x29, #-32]
	ldur	d2, [x29, #-24]
	ldp	x29, x30, [sp, #464]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #448]            ; 16-byte Folded Reload
	add	sp, sp, #480
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3RayC1Ev                    ; -- Begin function _ZN3RayC1Ev
	.weak_def_can_be_hidden	__ZN3RayC1Ev
	.p2align	2
__ZN3RayC1Ev:                           ; @_ZN3RayC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZN3RayC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z6renderiiRKNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEEPcRK4Vec3SB_SB_dii ; -- Begin function _Z6renderiiRKNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEEPcRK4Vec3SB_SB_dii
	.p2align	2
__Z6renderiiRKNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEEPcRK4Vec3SB_SB_dii: ; @_Z6renderiiRKNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEEPcRK4Vec3SB_SB_dii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #400
	stp	x28, x27, [sp, #368]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #384]            ; 16-byte Folded Spill
	add	x29, sp, #384
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	ldr	w8, [x29, #16]
	stur	w0, [x29, #-20]
	stur	w1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	stur	x5, [x29, #-56]
	stur	x6, [x29, #-64]
	stur	d0, [x29, #-72]
	stur	w7, [x29, #-76]
	stur	w8, [x29, #-80]
	ldur	s1, [x29, #-20]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldur	s2, [x29, #-24]
                                        ; implicit-def: $d1
	fmov	s1, s2
	sshll.2d	v1, v1, #0
                                        ; kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d0, d0, d1
	stur	d0, [x29, #-88]
	ldur	x1, [x29, #-48]
	ldur	x2, [x29, #-56]
	ldur	x3, [x29, #-64]
	ldur	d0, [x29, #-72]
	ldur	d1, [x29, #-88]
	sub	x0, x29, #184
	bl	__ZN6CameraC1ERK4Vec3S2_S2_dd
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	mov	w9, #3                          ; =0x3
	mul	w8, w8, w9
                                        ; implicit-def: $x9
	mov	x9, x8
	sxtw	x9, w9
	mov	x10, #8                         ; =0x8
	umulh	x9, x9, x10
	mov	w10, #8                         ; =0x8
	smull	x8, w8, w10
	subs	x9, x9, #0
	csinv	x0, x8, xzr, eq
	bl	__Znam
	str	x0, [sp, #192]
	ldur	w8, [x29, #-24]
	subs	w8, w8, #1
	str	w8, [sp, #188]
	b	LBB2_1
LBB2_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_3 Depth 2
                                        ;       Child Loop BB2_5 Depth 3
	ldr	w8, [sp, #188]
	tbnz	w8, #31, LBB2_12
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	str	wzr, [sp, #184]
	b	LBB2_3
LBB2_3:                                 ;   Parent Loop BB2_1 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB2_5 Depth 3
	ldr	w8, [sp, #184]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	LBB2_10
	b	LBB2_4
LBB2_4:                                 ;   in Loop: Header=BB2_3 Depth=2
	add	x0, sp, #160
	movi	d2, #0000000000000000
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
	str	wzr, [sp, #156]
	b	LBB2_5
LBB2_5:                                 ;   Parent Loop BB2_1 Depth=1
                                        ;     Parent Loop BB2_3 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #156]
	ldur	w9, [x29, #-76]
	subs	w8, w8, w9
	b.ge	LBB2_8
	b	LBB2_6
LBB2_6:                                 ;   in Loop: Header=BB2_5 Depth=3
	ldr	s1, [sp, #184]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__Z12randomDoublev
	fmov	d1, d0
	ldr	d0, [sp, #8]                    ; 8-byte Folded Reload
	fadd	d0, d0, d1
	ldur	s2, [x29, #-20]
                                        ; implicit-def: $d1
	fmov	s1, s2
	sshll.2d	v1, v1, #0
                                        ; kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d0, d0, d1
	str	d0, [sp, #144]
	ldr	s1, [sp, #188]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	str	d0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__Z12randomDoublev
	fmov	d1, d0
	ldr	d0, [sp, #16]                   ; 8-byte Folded Reload
	fadd	d0, d0, d1
	ldur	s2, [x29, #-24]
                                        ; implicit-def: $d1
	fmov	s1, s2
	sshll.2d	v1, v1, #0
                                        ; kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d0, d0, d1
	str	d0, [sp, #136]
	ldr	d0, [sp, #144]
	ldr	d1, [sp, #136]
	add	x8, sp, #88
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	sub	x0, x29, #184
	bl	__ZNK6Camera6getRayEdd
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-32]
	ldur	w2, [x29, #-80]
	bl	__Z14calculateColorRK3RayRKNSt3__16vectorIP6ObjectNS2_9allocatorIS5_EEEEi
	add	x1, sp, #64
	str	d0, [sp, #64]
	str	d1, [sp, #72]
	str	d2, [sp, #80]
	add	x0, sp, #160
	bl	__ZN4Vec3pLERKS_
	b	LBB2_7
LBB2_7:                                 ;   in Loop: Header=BB2_5 Depth=3
	ldr	w8, [sp, #156]
	add	w8, w8, #1
	str	w8, [sp, #156]
	b	LBB2_5
LBB2_8:                                 ;   in Loop: Header=BB2_3 Depth=2
	ldur	s1, [x29, #-76]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	add	x0, sp, #160
	bl	__ZNK4Vec3dvEd
	str	d0, [sp, #40]
	str	d1, [sp, #48]
	str	d2, [sp, #56]
	ldur	q0, [sp, #40]
	str	q0, [sp, #160]
	ldr	x8, [sp, #56]
	str	x8, [sp, #176]
	ldr	d0, [sp, #160]
	fsqrt	d0, d0
	ldr	x8, [sp, #192]
	ldr	w9, [sp, #188]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	ldr	w10, [sp, #184]
	add	w10, w9, w10
	mov	w9, #3                          ; =0x3
	mul	w10, w9, w10
	add	w10, w10, #0
	str	d0, [x8, w10, sxtw #3]
	ldr	d0, [sp, #168]
	fsqrt	d0, d0
	ldr	x8, [sp, #192]
	ldr	w10, [sp, #188]
	ldur	w11, [x29, #-20]
	mul	w10, w10, w11
	ldr	w11, [sp, #184]
	add	w10, w10, w11
	mul	w10, w9, w10
	add	w10, w10, #1
	str	d0, [x8, w10, sxtw #3]
	ldr	d0, [sp, #176]
	fsqrt	d0, d0
	ldr	x8, [sp, #192]
	ldr	w10, [sp, #188]
	ldur	w11, [x29, #-20]
	mul	w10, w10, w11
	ldr	w11, [sp, #184]
	add	w10, w10, w11
	mul	w9, w9, w10
	add	w9, w9, #2
	str	d0, [x8, w9, sxtw #3]
	b	LBB2_9
LBB2_9:                                 ;   in Loop: Header=BB2_3 Depth=2
	ldr	w8, [sp, #184]
	add	w8, w8, #1
	str	w8, [sp, #184]
	b	LBB2_3
LBB2_10:                                ;   in Loop: Header=BB2_1 Depth=1
	b	LBB2_11
LBB2_11:                                ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #188]
	subs	w8, w8, #1
	str	w8, [sp, #188]
	b	LBB2_1
LBB2_12:
	ldur	w0, [x29, #-20]
	ldur	w1, [x29, #-24]
	ldr	x2, [sp, #192]
	bl	__Z7img2rgbjjPd
	str	x0, [sp, #32]
	ldur	x0, [x29, #-40]
	ldur	w1, [x29, #-20]
	ldur	w2, [x29, #-24]
	ldr	x3, [sp, #32]
	bl	__Z15writePPM_normalPcjjPh
	ldr	x8, [sp, #192]
	str	x8, [sp]                        ; 8-byte Folded Spill
	cbz	x8, LBB2_14
	b	LBB2_13
LBB2_13:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZdaPv
	b	LBB2_14
LBB2_14:
	ldr	x0, [sp, #32]
	bl	_free
	ldp	x29, x30, [sp, #384]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #368]            ; 16-byte Folded Reload
	add	sp, sp, #400
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12randomDoublev              ; -- Begin function _Z12randomDoublev
	.weak_definition	__Z12randomDoublev
	.p2align	2
__Z12randomDoublev:                     ; @_Z12randomDoublev
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, __ZGVZ12randomDoublevE9generator@TLVPPAGE
	ldr	x0, [x0, __ZGVZ12randomDoublevE9generator@TLVPPAGEOFF]
	ldr	x8, [x0]
	blr	x8
	ldrb	w8, [x0]
	tbnz	w8, #0, LBB3_4
	b	LBB3_1
LBB3_1:
	sub	x0, x29, #4
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__113random_deviceC1B9nqe210106Ev
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
Ltmp5:
	bl	__ZNSt3__113random_deviceclEv
Ltmp6:
	str	w0, [sp, #24]                   ; 4-byte Folded Spill
	b	LBB3_2
LBB3_2:
	ldr	w1, [sp, #24]                   ; 4-byte Folded Reload
	adrp	x0, __ZZ12randomDoublevE9generator@TLVPPAGE
	ldr	x0, [x0, __ZZ12randomDoublevE9generator@TLVPPAGEOFF]
	ldr	x8, [x0]
	blr	x8
Ltmp7:
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B9nqe210106Ej
Ltmp8:
	b	LBB3_3
LBB3_3:
	sub	x0, x29, #4
	bl	__ZNSt3__113random_deviceD1Ev
	adrp	x0, __ZGVZ12randomDoublevE9generator@TLVPPAGE
	ldr	x0, [x0, __ZGVZ12randomDoublevE9generator@TLVPPAGEOFF]
	ldr	x8, [x0]
	blr	x8
	mov	w8, #1                          ; =0x1
	strb	w8, [x0]
	b	LBB3_4
LBB3_4:
	adrp	x0, __ZGVZ12randomDoublevE4dist@TLVPPAGE
	ldr	x0, [x0, __ZGVZ12randomDoublevE4dist@TLVPPAGEOFF]
	ldr	x8, [x0]
	blr	x8
	ldrb	w8, [x0]
	tbnz	w8, #0, LBB3_6
	b	LBB3_5
LBB3_5:
	adrp	x0, __ZZ12randomDoublevE4dist@TLVPPAGE
	ldr	x0, [x0, __ZZ12randomDoublevE4dist@TLVPPAGEOFF]
	ldr	x8, [x0]
	blr	x8
	movi	d0, #0000000000000000
	fmov	d1, #1.00000000
	bl	__ZNSt3__125uniform_real_distributionIdEC1B9nqe210106Edd
	adrp	x0, __ZGVZ12randomDoublevE4dist@TLVPPAGE
	ldr	x0, [x0, __ZGVZ12randomDoublevE4dist@TLVPPAGEOFF]
	ldr	x8, [x0]
	blr	x8
	mov	w8, #1                          ; =0x1
	strb	w8, [x0]
	b	LBB3_6
LBB3_6:
	adrp	x0, __ZZ12randomDoublevE4dist@TLVPPAGE
	ldr	x0, [x0, __ZZ12randomDoublevE4dist@TLVPPAGEOFF]
	ldr	x8, [x0]
	blr	x8
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	adrp	x0, __ZZ12randomDoublevE9generator@TLVPPAGE
	ldr	x0, [x0, __ZZ12randomDoublevE9generator@TLVPPAGEOFF]
	ldr	x8, [x0]
	blr	x8
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__125uniform_real_distributionIdEclB9nqe210106INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB3_7:
Ltmp9:
	stur	x0, [x29, #-16]
	mov	x8, x1
	stur	w8, [x29, #-20]
	sub	x0, x29, #4
	bl	__ZNSt3__113random_deviceD1Ev
	b	LBB3_8
LBB3_8:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp5-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp8-Ltmp7                    ;   Call between Ltmp7 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Lfunc_end0-Ltmp8               ;   Call between Ltmp8 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z9renderMLTiiRKNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEEPcRK4Vec3SB_SB_diii ; -- Begin function _Z9renderMLTiiRKNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEEPcRK4Vec3SB_SB_diii
	.p2align	2
__Z9renderMLTiiRKNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEEPcRK4Vec3SB_SB_diii: ; @_Z9renderMLTiiRKNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEEPcRK4Vec3SB_SB_diii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #496
	stp	x28, x27, [sp, #464]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #480]            ; 16-byte Folded Spill
	add	x29, sp, #480
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	ldr	w9, [x29, #16]
	ldr	w8, [x29, #20]
	stur	w0, [x29, #-20]
	stur	w1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	stur	x5, [x29, #-56]
	stur	x6, [x29, #-64]
	stur	d0, [x29, #-72]
	stur	w7, [x29, #-76]
	stur	w9, [x29, #-80]
	stur	w8, [x29, #-84]
	ldur	s1, [x29, #-20]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldur	s2, [x29, #-24]
                                        ; implicit-def: $d1
	fmov	s1, s2
	sshll.2d	v1, v1, #0
                                        ; kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d0, d0, d1
	stur	d0, [x29, #-96]
	ldur	x1, [x29, #-48]
	ldur	x2, [x29, #-56]
	ldur	x3, [x29, #-64]
	ldur	d0, [x29, #-72]
	ldur	d1, [x29, #-96]
	sub	x0, x29, #192
	bl	__ZN6CameraC1ERK4Vec3S2_S2_dd
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-196]
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-200]
	ldur	s1, [x29, #-196]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d1, d0
	fmov	d0, #1.00000000
	fdiv	d1, d0, d1
	stur	d1, [x29, #-208]
	ldur	s2, [x29, #-200]
                                        ; implicit-def: $d1
	fmov	s1, s2
	sshll.2d	v1, v1, #0
                                        ; kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d0, d0, d1
	stur	d0, [x29, #-216]
	ldur	w8, [x29, #-196]
	ldur	w9, [x29, #-200]
	mul	w8, w8, w9
	mov	w9, #3                          ; =0x3
	mul	w8, w8, w9
                                        ; implicit-def: $x9
	mov	x9, x8
	sxtw	x9, w9
	mov	x10, #8                         ; =0x8
	umulh	x9, x9, x10
	mov	w10, #8                         ; =0x8
	smull	x8, w8, w10
	subs	x9, x9, #0
	csinv	x0, x8, xzr, eq
	bl	__Znam
	stur	x0, [x29, #-224]
	stur	wzr, [x29, #-228]
	b	LBB4_1
LBB4_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_3 Depth 2
                                        ;       Child Loop BB4_5 Depth 3
	ldur	w8, [x29, #-228]
	ldur	w9, [x29, #-200]
	subs	w8, w8, w9
	b.ge	LBB4_14
	b	LBB4_2
LBB4_2:                                 ;   in Loop: Header=BB4_1 Depth=1
	bl	__ZNSt3__16chrono12system_clock3nowEv
	mov	x8, x0
	add	x0, sp, #232
	str	x8, [sp, #232]
	bl	__ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochB9nqe210106Ev
	mov	x8, x0
	add	x0, sp, #240
	str	x8, [sp, #240]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev
	mov	x8, x0
	ldur	w9, [x29, #-228]
	ldur	w10, [x29, #-196]
	mul	w9, w9, w10
	add	w8, w8, w9
	stur	w8, [x29, #-232]
	str	wzr, [sp, #228]
	b	LBB4_3
LBB4_3:                                 ;   Parent Loop BB4_1 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_5 Depth 3
	ldr	w8, [sp, #228]
	ldur	w9, [x29, #-196]
	subs	w8, w8, w9
	b.ge	LBB4_10
	b	LBB4_4
LBB4_4:                                 ;   in Loop: Header=BB4_3 Depth=2
	add	x0, sp, #192
	movi	d2, #0000000000000000
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
	ldr	s1, [sp, #228]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	str	d0, [sp, #48]                   ; 8-byte Folded Spill
	sub	x0, x29, #232
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	bl	__Z18randomDoubleThreadRj
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	fmov	d1, d0
	ldr	d0, [sp, #48]                   ; 8-byte Folded Reload
	fadd	d0, d0, d1
	ldur	d1, [x29, #-208]
	fmul	d0, d0, d1
	str	d0, [sp, #184]
	ldur	s1, [x29, #-228]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	str	d0, [sp, #56]                   ; 8-byte Folded Spill
	bl	__Z18randomDoubleThreadRj
	fmov	d1, d0
	ldr	d0, [sp, #56]                   ; 8-byte Folded Reload
	fadd	d0, d0, d1
	ldur	d1, [x29, #-216]
	fmul	d0, d0, d1
	str	d0, [sp, #176]
	str	wzr, [sp, #172]
	b	LBB4_5
LBB4_5:                                 ;   Parent Loop BB4_1 Depth=1
                                        ;     Parent Loop BB4_3 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #172]
	ldur	w9, [x29, #-76]
	subs	w8, w8, w9
	b.ge	LBB4_8
	b	LBB4_6
LBB4_6:                                 ;   in Loop: Header=BB4_5 Depth=3
	ldur	x0, [x29, #-32]
	ldur	w2, [x29, #-80]
	ldur	w3, [x29, #-84]
	ldr	d0, [sp, #184]
	ldr	d1, [sp, #176]
	ldur	d2, [x29, #-208]
	ldur	d3, [x29, #-216]
	sub	x1, x29, #192
	bl	__Z16metropolisRenderRKNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEERK6Cameraiidddd
	add	x1, sp, #144
	str	d0, [sp, #144]
	str	d1, [sp, #152]
	str	d2, [sp, #160]
	add	x0, sp, #192
	bl	__ZN4Vec3pLERKS_
	b	LBB4_7
LBB4_7:                                 ;   in Loop: Header=BB4_5 Depth=3
	ldr	w8, [sp, #172]
	add	w8, w8, #1
	str	w8, [sp, #172]
	b	LBB4_5
LBB4_8:                                 ;   in Loop: Header=BB4_3 Depth=2
	ldur	s1, [x29, #-76]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	add	x0, sp, #192
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNK4Vec3dvEd
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	d0, [sp, #120]
	str	d1, [sp, #128]
	str	d2, [sp, #136]
	ldur	q0, [sp, #120]
	str	q0, [sp, #192]
	ldr	x8, [sp, #136]
	str	x8, [sp, #208]
	add	x1, sp, #112
	movi	d0, #0000000000000000
	str	d0, [sp, #24]                   ; 8-byte Folded Spill
	str	d0, [sp, #112]
	add	x2, sp, #104
	fmov	d0, #1.00000000
	str	d0, [sp, #32]                   ; 8-byte Folded Spill
	str	d0, [sp, #104]
	bl	__ZNSt3__15clampB9nqe210106IdEERKT_S3_S3_S3_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	d1, [sp, #24]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	d2, [x0]
	str	d2, [sp, #192]
	add	x0, x8, #8
	add	x1, sp, #96
	str	d1, [sp, #96]
	add	x2, sp, #88
	str	d0, [sp, #88]
	bl	__ZNSt3__15clampB9nqe210106IdEERKT_S3_S3_S3_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	d1, [sp, #24]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	d2, [x0]
	str	d2, [sp, #200]
	add	x0, x8, #16
	add	x1, sp, #80
	str	d1, [sp, #80]
	add	x2, sp, #72
	str	d0, [sp, #72]
	bl	__ZNSt3__15clampB9nqe210106IdEERKT_S3_S3_S3_
	ldr	d0, [x0]
	str	d0, [sp, #208]
	ldur	w8, [x29, #-228]
	ldur	w9, [x29, #-196]
	mul	w8, w8, w9
	ldr	w9, [sp, #228]
	add	w9, w8, w9
	mov	w8, #3                          ; =0x3
	mul	w8, w8, w9
	str	w8, [sp, #68]
	ldr	d0, [sp, #192]
	ldur	x8, [x29, #-224]
	ldrsw	x9, [sp, #68]
	str	d0, [x8, x9, lsl #3]
	ldr	d0, [sp, #200]
	ldur	x8, [x29, #-224]
	ldr	w9, [sp, #68]
	add	w9, w9, #1
	str	d0, [x8, w9, sxtw #3]
	ldr	d0, [sp, #208]
	ldur	x8, [x29, #-224]
	ldr	w9, [sp, #68]
	add	w9, w9, #2
	str	d0, [x8, w9, sxtw #3]
	b	LBB4_9
LBB4_9:                                 ;   in Loop: Header=BB4_3 Depth=2
	ldr	w8, [sp, #228]
	add	w8, w8, #1
	str	w8, [sp, #228]
	b	LBB4_3
LBB4_10:                                ;   in Loop: Header=BB4_1 Depth=1
	ldur	w8, [x29, #-228]
	mov	w10, #5                         ; =0x5
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, LBB4_12
	b	LBB4_11
LBB4_11:                                ;   in Loop: Header=BB4_1 Depth=1
	ldur	s1, [x29, #-228]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d1, d0
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d0, x8
	fmul	d0, d0, d1
	ldur	s2, [x29, #-24]
                                        ; implicit-def: $d1
	fmov	s1, s2
	sshll.2d	v1, v1, #0
                                        ; kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [sp, #64]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	w1, [sp, #64]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB4_12
LBB4_12:                                ;   in Loop: Header=BB4_1 Depth=1
	b	LBB4_13
LBB4_13:                                ;   in Loop: Header=BB4_1 Depth=1
	ldur	w8, [x29, #-228]
	add	w8, w8, #1
	stur	w8, [x29, #-228]
	b	LBB4_1
LBB4_14:
	ldur	x0, [x29, #-40]
	ldur	w1, [x29, #-196]
	ldur	w2, [x29, #-200]
	ldur	x3, [x29, #-224]
	bl	__Z12writePPM_MLTPKcjjPKd
	ldur	x8, [x29, #-224]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	cbz	x8, LBB4_16
	b	LBB4_15
LBB4_15:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdaPv
	b	LBB4_16
LBB4_16:
	ldp	x29, x30, [sp, #480]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #464]            ; 16-byte Folded Reload
	add	sp, sp, #496
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochB9nqe210106Ev
	.globl	__ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochB9nqe210106Ev: ; @_ZNKSt3__16chrono10time_pointINS0_12system_clockENS0_8durationIxNS_5ratioILl1ELl1000000EEEEEE16time_since_epochB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev
	.globl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000EEEE5countB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15clampB9nqe210106IdEERKT_S3_S3_S3_ ; -- Begin function _ZNSt3__15clampB9nqe210106IdEERKT_S3_S3_S3_
	.globl	__ZNSt3__15clampB9nqe210106IdEERKT_S3_S3_S3_
	.weak_definition	__ZNSt3__15clampB9nqe210106IdEERKT_S3_S3_S3_
	.p2align	2
__ZNSt3__15clampB9nqe210106IdEERKT_S3_S3_S3_: ; @_ZNSt3__15clampB9nqe210106IdEERKT_S3_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__15clampB9nqe210106IdNS_6__lessIvvEEEERKT_S5_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11createScenev               ; -- Begin function _Z11createScenev
	.p2align	2
__Z11createScenev:                      ; @_Z11createScenev
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #976
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	str	x8, [sp, #224]                  ; 8-byte Folded Spill
	stur	x8, [x29, #-24]
	mov	x0, #32                         ; =0x20
	bl	__Znwm
	str	x0, [sp, #232]                  ; 8-byte Folded Spill
Ltmp12:
	sub	x0, x29, #56
	mov	x8, #-3689348814741910324       ; =0xcccccccccccccccc
	movk	x8, #52429
	movk	x8, #16356, lsl #48
	fmov	d0, x8
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16297, lsl #48
	fmov	d2, x8
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
Ltmp13:
	b	LBB9_1
LBB9_1:
Ltmp14:
	ldr	x0, [sp, #232]                  ; 8-byte Folded Reload
	sub	x1, x29, #56
	bl	__ZN10LambertianC1ERK4Vec3
Ltmp15:
	b	LBB9_2
LBB9_2:
	ldr	x8, [sp, #232]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-32]
	mov	x0, #32                         ; =0x20
	bl	__Znwm
	str	x0, [sp, #216]                  ; 8-byte Folded Spill
Ltmp17:
	sub	x0, x29, #104
	mov	x8, #7864                       ; =0x1eb8
	movk	x8, #60293, lsl #16
	movk	x8, #47185, lsl #32
	movk	x8, #16318, lsl #48
	fmov	d0, x8
	mov	x8, #-3689348814741910324       ; =0xcccccccccccccccc
	movk	x8, #52429
	movk	x8, #16348, lsl #48
	fmov	d1, x8
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #16323, lsl #48
	fmov	d2, x8
	bl	__ZN4Vec3C1Eddd
Ltmp18:
	b	LBB9_3
LBB9_3:
Ltmp19:
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	sub	x1, x29, #104
	bl	__ZN10LambertianC1ERK4Vec3
Ltmp20:
	b	LBB9_4
LBB9_4:
	ldr	x8, [sp, #216]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-80]
	mov	x0, #32                         ; =0x20
	bl	__Znwm
	str	x0, [sp, #208]                  ; 8-byte Folded Spill
Ltmp22:
	sub	x0, x29, #136
	mov	x8, #36700                      ; =0x8f5c
	movk	x8, #62914, lsl #16
	movk	x8, #23592, lsl #32
	movk	x8, #16359, lsl #48
	fmov	d2, x8
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
Ltmp23:
	b	LBB9_5
LBB9_5:
Ltmp24:
	ldr	x0, [sp, #208]                  ; 8-byte Folded Reload
	sub	x1, x29, #136
	bl	__ZN10LambertianC1ERK4Vec3
Ltmp25:
	b	LBB9_6
LBB9_6:
	ldr	x8, [sp, #208]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-112]
	mov	x0, #32                         ; =0x20
	bl	__Znwm
	str	x0, [sp, #200]                  ; 8-byte Folded Spill
Ltmp27:
	sub	x0, x29, #168
	mov	x8, #36700                      ; =0x8f5c
	movk	x8, #62914, lsl #16
	movk	x8, #23592, lsl #32
	movk	x8, #16359, lsl #48
	fmov	d2, x8
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
Ltmp28:
	b	LBB9_7
LBB9_7:
Ltmp29:
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	sub	x1, x29, #168
	bl	__ZN10LambertianC1ERK4Vec3
Ltmp30:
	b	LBB9_8
LBB9_8:
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-144]
	mov	x0, #32                         ; =0x20
	bl	__Znwm
	str	x0, [sp, #192]                  ; 8-byte Folded Spill
Ltmp32:
	sub	x0, x29, #200
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16361, lsl #48
	fmov	d0, x8
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #16339, lsl #48
	fmov	d2, x8
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
Ltmp33:
	b	LBB9_9
LBB9_9:
Ltmp34:
	ldr	x0, [sp, #192]                  ; 8-byte Folded Reload
	sub	x1, x29, #200
	bl	__ZN10LambertianC1ERK4Vec3
Ltmp35:
	b	LBB9_10
LBB9_10:
	ldr	x8, [sp, #192]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-176]
	mov	x0, #32                         ; =0x20
	bl	__Znwm
	str	x0, [sp, #184]                  ; 8-byte Folded Spill
Ltmp37:
	sub	x0, x29, #232
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16361, lsl #48
	fmov	d2, x8
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
Ltmp38:
	b	LBB9_11
LBB9_11:
Ltmp39:
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
	sub	x1, x29, #232
	bl	__ZN8SpecularC1ERK4Vec3
Ltmp40:
	b	LBB9_12
LBB9_12:
	ldr	x8, [sp, #184]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-208]
	mov	x0, #40                         ; =0x28
	bl	__Znwm
	str	x0, [sp, #176]                  ; 8-byte Folded Spill
Ltmp42:
	add	x0, sp, #728
	mov	x8, #-3689348814741910324       ; =0xcccccccccccccccc
	movk	x8, #52429
	movk	x8, #16364, lsl #48
	fmov	d0, x8
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #16355, lsl #48
	fmov	d1, x8
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16329, lsl #48
	fmov	d2, x8
	bl	__ZN4Vec3C1Eddd
Ltmp43:
	b	LBB9_13
LBB9_13:
Ltmp44:
	ldr	x0, [sp, #176]                  ; 8-byte Folded Reload
	add	x1, sp, #728
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #16339, lsl #48
	fmov	d0, x8
	bl	__ZN6GlossyC1ERK4Vec3d
Ltmp45:
	b	LBB9_14
LBB9_14:
	ldr	x8, [sp, #176]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-240]
	mov	x0, #16                         ; =0x10
	bl	__Znwm
	str	x0, [sp, #168]                  ; 8-byte Folded Spill
Ltmp47:
	fmov	d0, #1.50000000
	bl	__ZN10DielectricC1Ed
Ltmp48:
	b	LBB9_15
LBB9_15:
	ldr	x8, [sp, #168]                  ; 8-byte Folded Reload
	str	x8, [sp, #720]
	mov	x0, #32                         ; =0x20
	bl	__Znwm
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
Ltmp50:
	add	x0, sp, #688
	fmov	d2, #5.00000000
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
Ltmp51:
	b	LBB9_16
LBB9_16:
Ltmp52:
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	add	x1, sp, #688
	bl	__ZN8EmissiveC1ERK4Vec3
Ltmp53:
	b	LBB9_17
LBB9_17:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #160]                  ; 8-byte Folded Reload
	str	x8, [sp, #712]
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #687]
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC1B9nqe210106Ev
Ltmp55:
	mov	x0, #48                         ; =0x30
	bl	__Znwm
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
Ltmp56:
	b	LBB9_18
LBB9_18:
	ldr	x8, [sp, #712]
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
Ltmp57:
	add	x0, sp, #648
	movi	d0, #0000000000000000
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #16371, lsl #48
	fmov	d1, x8
	fmov	d2, #-2.00000000
	bl	__ZN4Vec3C1Eddd
Ltmp58:
	b	LBB9_19
LBB9_19:
Ltmp59:
	ldr	x1, [sp, #144]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #152]                  ; 8-byte Folded Reload
	fmov	d0, #1.00000000
	add	x2, sp, #648
	bl	__ZN6SphereC1EP8MaterialdRK4Vec3
Ltmp60:
	b	LBB9_20
LBB9_20:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #152]                  ; 8-byte Folded Reload
	add	x1, sp, #672
	str	x8, [sp, #672]
Ltmp62:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp63:
	b	LBB9_21
LBB9_21:
Ltmp64:
	mov	x0, #64                         ; =0x40
	bl	__Znwm
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
Ltmp65:
	b	LBB9_22
LBB9_22:
	ldur	x8, [x29, #-112]
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
Ltmp66:
	add	x0, sp, #616
	fmov	d1, #-2.00000000
	fmov	d0, d1
	fmov	d2, #-4.00000000
	bl	__ZN4Vec3C1Eddd
Ltmp67:
	b	LBB9_23
LBB9_23:
Ltmp68:
	add	x0, sp, #592
	fmov	d1, #2.00000000
	fmov	d0, d1
	mov	x8, #20972                      ; =0x51ec
	movk	x8, #7864, lsl #16
	movk	x8, #60293, lsl #32
	movk	x8, #49167, lsl #48
	fmov	d2, x8
	bl	__ZN4Vec3C1Eddd
Ltmp69:
	b	LBB9_24
LBB9_24:
Ltmp70:
	ldr	x1, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	add	x2, sp, #616
	add	x3, sp, #592
	bl	__ZN4AABBC1EP8MaterialRK4Vec3S4_
Ltmp71:
	b	LBB9_25
LBB9_25:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	add	x1, sp, #640
	str	x8, [sp, #640]
Ltmp73:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp74:
	b	LBB9_26
LBB9_26:
Ltmp75:
	mov	x0, #64                         ; =0x40
	bl	__Znwm
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp76:
	b	LBB9_27
LBB9_27:
	ldur	x8, [x29, #-80]
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
Ltmp77:
	add	x0, sp, #560
	fmov	d1, #-2.00000000
	fmov	d0, d1
	fmov	d2, #-4.00000000
	bl	__ZN4Vec3C1Eddd
Ltmp78:
	b	LBB9_28
LBB9_28:
Ltmp79:
	add	x0, sp, #536
	mov	x8, #41943                      ; =0xa3d7
	movk	x8, #15728, lsl #16
	movk	x8, #55050, lsl #32
	movk	x8, #49151, lsl #48
	fmov	d0, x8
	fmov	d1, #2.00000000
	movi	d2, #0000000000000000
	bl	__ZN4Vec3C1Eddd
Ltmp80:
	b	LBB9_29
LBB9_29:
Ltmp81:
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	add	x2, sp, #560
	add	x3, sp, #536
	bl	__ZN4AABBC1EP8MaterialRK4Vec3S4_
Ltmp82:
	b	LBB9_30
LBB9_30:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
	add	x1, sp, #584
	str	x8, [sp, #584]
Ltmp84:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp85:
	b	LBB9_31
LBB9_31:
Ltmp86:
	mov	x0, #64                         ; =0x40
	bl	__Znwm
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp87:
	b	LBB9_32
LBB9_32:
	ldur	x8, [x29, #-32]
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
Ltmp88:
	add	x0, sp, #504
	mov	x8, #41943                      ; =0xa3d7
	movk	x8, #15728, lsl #16
	movk	x8, #55050, lsl #32
	movk	x8, #16383, lsl #48
	fmov	d0, x8
	fmov	d1, #-2.00000000
	fmov	d2, #-4.00000000
	bl	__ZN4Vec3C1Eddd
Ltmp89:
	b	LBB9_33
LBB9_33:
Ltmp90:
	add	x0, sp, #480
	fmov	d1, #2.00000000
	fmov	d0, d1
	movi	d2, #0000000000000000
	bl	__ZN4Vec3C1Eddd
Ltmp91:
	b	LBB9_34
LBB9_34:
Ltmp92:
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	add	x2, sp, #504
	add	x3, sp, #480
	bl	__ZN4AABBC1EP8MaterialRK4Vec3S4_
Ltmp93:
	b	LBB9_35
LBB9_35:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x1, sp, #528
	str	x8, [sp, #528]
Ltmp95:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp96:
	b	LBB9_36
LBB9_36:
Ltmp97:
	mov	x0, #64                         ; =0x40
	bl	__Znwm
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp98:
	b	LBB9_37
LBB9_37:
	ldur	x8, [x29, #-144]
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
Ltmp99:
	add	x0, sp, #448
	mov	x8, #-4586634745500139520       ; =0xc059000000000000
	fmov	d2, x8
	fmov	d0, d2
	mov	x8, #44564                      ; =0xae14
	movk	x8, #57671, lsl #16
	movk	x8, #5242, lsl #32
	movk	x8, #49152, lsl #48
	fmov	d1, x8
	bl	__ZN4Vec3C1Eddd
Ltmp100:
	b	LBB9_38
LBB9_38:
Ltmp101:
	add	x0, sp, #424
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d2, x8
	fmov	d0, d2
	fmov	d1, #-2.00000000
	bl	__ZN4Vec3C1Eddd
Ltmp102:
	b	LBB9_39
LBB9_39:
Ltmp103:
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	add	x2, sp, #448
	add	x3, sp, #424
	bl	__ZN4AABBC1EP8MaterialRK4Vec3S4_
Ltmp104:
	b	LBB9_40
LBB9_40:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	add	x1, sp, #472
	str	x8, [sp, #472]
Ltmp106:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp107:
	b	LBB9_41
LBB9_41:
Ltmp108:
	mov	x0, #64                         ; =0x40
	bl	__Znwm
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp109:
	b	LBB9_42
LBB9_42:
	ldur	x8, [x29, #-112]
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
Ltmp110:
	add	x0, sp, #392
	fmov	d0, #-2.00000000
	fmov	d1, #2.00000000
	fmov	d2, #-4.00000000
	bl	__ZN4Vec3C1Eddd
Ltmp111:
	b	LBB9_43
LBB9_43:
Ltmp112:
	add	x0, sp, #368
	fmov	d0, #2.00000000
	mov	x8, #44564                      ; =0xae14
	movk	x8, #57671, lsl #16
	movk	x8, #5242, lsl #32
	movk	x8, #16384, lsl #48
	fmov	d1, x8
	movi	d2, #0000000000000000
	bl	__ZN4Vec3C1Eddd
Ltmp113:
	b	LBB9_44
LBB9_44:
Ltmp114:
	ldr	x1, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	add	x2, sp, #392
	add	x3, sp, #368
	bl	__ZN4AABBC1EP8MaterialRK4Vec3S4_
Ltmp115:
	b	LBB9_45
LBB9_45:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	add	x1, sp, #416
	str	x8, [sp, #416]
Ltmp117:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp118:
	b	LBB9_46
LBB9_46:
Ltmp119:
	mov	x0, #48                         ; =0x30
	bl	__Znwm
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp120:
	b	LBB9_47
LBB9_47:
	ldur	x8, [x29, #-208]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
Ltmp121:
	add	x0, sp, #336
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #49139, lsl #48
	fmov	d0, x8
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #49145, lsl #48
	fmov	d1, x8
	fmov	d2, #-2.50000000
	bl	__ZN4Vec3C1Eddd
Ltmp122:
	b	LBB9_48
LBB9_48:
Ltmp123:
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16345, lsl #48
	fmov	d0, x8
	add	x2, sp, #336
	bl	__ZN6SphereC1EP8MaterialdRK4Vec3
Ltmp124:
	b	LBB9_49
LBB9_49:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	add	x1, sp, #360
	str	x8, [sp, #360]
Ltmp126:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp127:
	b	LBB9_50
LBB9_50:
Ltmp128:
	mov	x0, #48                         ; =0x30
	bl	__Znwm
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp129:
	b	LBB9_51
LBB9_51:
	ldur	x8, [x29, #-240]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
Ltmp130:
	add	x0, sp, #304
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #49113, lsl #48
	fmov	d0, x8
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #49145, lsl #48
	fmov	d1, x8
	fmov	d2, #-2.50000000
	bl	__ZN4Vec3C1Eddd
Ltmp131:
	b	LBB9_52
LBB9_52:
Ltmp132:
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16345, lsl #48
	fmov	d0, x8
	add	x2, sp, #304
	bl	__ZN6SphereC1EP8MaterialdRK4Vec3
Ltmp133:
	b	LBB9_53
LBB9_53:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x1, sp, #328
	str	x8, [sp, #328]
Ltmp135:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp136:
	b	LBB9_54
LBB9_54:
Ltmp137:
	mov	x0, #48                         ; =0x30
	bl	__Znwm
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp138:
	b	LBB9_55
LBB9_55:
	ldur	x8, [x29, #-176]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
Ltmp139:
	add	x0, sp, #272
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16345, lsl #48
	fmov	d0, x8
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #49145, lsl #48
	fmov	d1, x8
	fmov	d2, #-2.50000000
	bl	__ZN4Vec3C1Eddd
Ltmp140:
	b	LBB9_56
LBB9_56:
Ltmp141:
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16345, lsl #48
	fmov	d0, x8
	add	x2, sp, #272
	bl	__ZN6SphereC1EP8MaterialdRK4Vec3
Ltmp142:
	b	LBB9_57
LBB9_57:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #296
	str	x8, [sp, #296]
Ltmp144:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp145:
	b	LBB9_58
LBB9_58:
Ltmp146:
	mov	x0, #48                         ; =0x30
	bl	__Znwm
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp147:
	b	LBB9_59
LBB9_59:
	ldr	x8, [sp, #720]
	str	x8, [sp]                        ; 8-byte Folded Spill
Ltmp148:
	add	x0, sp, #240
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #16371, lsl #48
	fmov	d0, x8
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #49145, lsl #48
	fmov	d1, x8
	fmov	d2, #-2.50000000
	bl	__ZN4Vec3C1Eddd
Ltmp149:
	b	LBB9_60
LBB9_60:
Ltmp150:
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16345, lsl #48
	fmov	d0, x8
	add	x2, sp, #240
	bl	__ZN6SphereC1EP8MaterialdRK4Vec3
Ltmp151:
	b	LBB9_61
LBB9_61:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #264
	str	x8, [sp, #264]
Ltmp153:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp154:
	b	LBB9_62
LBB9_62:
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #687]
	ldrb	w8, [sp, #687]
	tbnz	w8, #0, LBB9_84
	b	LBB9_83
LBB9_63:
Ltmp16:
	mov	x8, x0
	ldr	x0, [sp, #232]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_86
LBB9_64:
Ltmp21:
	mov	x8, x0
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_86
LBB9_65:
Ltmp26:
	mov	x8, x0
	ldr	x0, [sp, #208]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_86
LBB9_66:
Ltmp31:
	mov	x8, x0
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_86
LBB9_67:
Ltmp36:
	mov	x8, x0
	ldr	x0, [sp, #192]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_86
LBB9_68:
Ltmp41:
	mov	x8, x0
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_86
LBB9_69:
Ltmp46:
	mov	x8, x0
	ldr	x0, [sp, #176]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_86
LBB9_70:
Ltmp49:
	mov	x8, x0
	ldr	x0, [sp, #168]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_86
LBB9_71:
Ltmp54:
	mov	x8, x0
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_86
LBB9_72:
Ltmp155:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB9_85
LBB9_73:
Ltmp61:
	mov	x8, x0
	ldr	x0, [sp, #152]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_85
LBB9_74:
Ltmp72:
	mov	x8, x0
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_85
LBB9_75:
Ltmp83:
	mov	x8, x0
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_85
LBB9_76:
Ltmp94:
	mov	x8, x0
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_85
LBB9_77:
Ltmp105:
	mov	x8, x0
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_85
LBB9_78:
Ltmp116:
	mov	x8, x0
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_85
LBB9_79:
Ltmp125:
	mov	x8, x0
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_85
LBB9_80:
Ltmp134:
	mov	x8, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_85
LBB9_81:
Ltmp143:
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_85
LBB9_82:
Ltmp152:
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	__ZdlPv
	b	LBB9_85
LBB9_83:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev
	b	LBB9_84
LBB9_84:
	add	sp, sp, #976
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB9_85:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev
	b	LBB9_86
LBB9_86:
	ldur	x0, [x29, #-64]
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table9:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp12-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp15-Ltmp12                  ;   Call between Ltmp12 and Ltmp15
	.uleb128 Ltmp16-Lfunc_begin1            ;     jumps to Ltmp16
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp17-Ltmp15                  ;   Call between Ltmp15 and Ltmp17
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp20-Ltmp17                  ;   Call between Ltmp17 and Ltmp20
	.uleb128 Ltmp21-Lfunc_begin1            ;     jumps to Ltmp21
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Ltmp22-Ltmp20                  ;   Call between Ltmp20 and Ltmp22
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin1            ; >> Call Site 6 <<
	.uleb128 Ltmp25-Ltmp22                  ;   Call between Ltmp22 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin1            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin1            ; >> Call Site 7 <<
	.uleb128 Ltmp27-Ltmp25                  ;   Call between Ltmp25 and Ltmp27
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin1            ; >> Call Site 8 <<
	.uleb128 Ltmp30-Ltmp27                  ;   Call between Ltmp27 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin1            ;     jumps to Ltmp31
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin1            ; >> Call Site 9 <<
	.uleb128 Ltmp32-Ltmp30                  ;   Call between Ltmp30 and Ltmp32
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin1            ; >> Call Site 10 <<
	.uleb128 Ltmp35-Ltmp32                  ;   Call between Ltmp32 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin1            ;     jumps to Ltmp36
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin1            ; >> Call Site 11 <<
	.uleb128 Ltmp37-Ltmp35                  ;   Call between Ltmp35 and Ltmp37
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin1            ; >> Call Site 12 <<
	.uleb128 Ltmp40-Ltmp37                  ;   Call between Ltmp37 and Ltmp40
	.uleb128 Ltmp41-Lfunc_begin1            ;     jumps to Ltmp41
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin1            ; >> Call Site 13 <<
	.uleb128 Ltmp42-Ltmp40                  ;   Call between Ltmp40 and Ltmp42
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin1            ; >> Call Site 14 <<
	.uleb128 Ltmp45-Ltmp42                  ;   Call between Ltmp42 and Ltmp45
	.uleb128 Ltmp46-Lfunc_begin1            ;     jumps to Ltmp46
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin1            ; >> Call Site 15 <<
	.uleb128 Ltmp47-Ltmp45                  ;   Call between Ltmp45 and Ltmp47
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin1            ; >> Call Site 16 <<
	.uleb128 Ltmp48-Ltmp47                  ;   Call between Ltmp47 and Ltmp48
	.uleb128 Ltmp49-Lfunc_begin1            ;     jumps to Ltmp49
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin1            ; >> Call Site 17 <<
	.uleb128 Ltmp50-Ltmp48                  ;   Call between Ltmp48 and Ltmp50
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin1            ; >> Call Site 18 <<
	.uleb128 Ltmp53-Ltmp50                  ;   Call between Ltmp50 and Ltmp53
	.uleb128 Ltmp54-Lfunc_begin1            ;     jumps to Ltmp54
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp55-Lfunc_begin1            ; >> Call Site 19 <<
	.uleb128 Ltmp56-Ltmp55                  ;   Call between Ltmp55 and Ltmp56
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin1            ; >> Call Site 20 <<
	.uleb128 Ltmp60-Ltmp57                  ;   Call between Ltmp57 and Ltmp60
	.uleb128 Ltmp61-Lfunc_begin1            ;     jumps to Ltmp61
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp62-Lfunc_begin1            ; >> Call Site 21 <<
	.uleb128 Ltmp65-Ltmp62                  ;   Call between Ltmp62 and Ltmp65
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp66-Lfunc_begin1            ; >> Call Site 22 <<
	.uleb128 Ltmp71-Ltmp66                  ;   Call between Ltmp66 and Ltmp71
	.uleb128 Ltmp72-Lfunc_begin1            ;     jumps to Ltmp72
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin1            ; >> Call Site 23 <<
	.uleb128 Ltmp76-Ltmp73                  ;   Call between Ltmp73 and Ltmp76
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp77-Lfunc_begin1            ; >> Call Site 24 <<
	.uleb128 Ltmp82-Ltmp77                  ;   Call between Ltmp77 and Ltmp82
	.uleb128 Ltmp83-Lfunc_begin1            ;     jumps to Ltmp83
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp84-Lfunc_begin1            ; >> Call Site 25 <<
	.uleb128 Ltmp87-Ltmp84                  ;   Call between Ltmp84 and Ltmp87
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp88-Lfunc_begin1            ; >> Call Site 26 <<
	.uleb128 Ltmp93-Ltmp88                  ;   Call between Ltmp88 and Ltmp93
	.uleb128 Ltmp94-Lfunc_begin1            ;     jumps to Ltmp94
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp95-Lfunc_begin1            ; >> Call Site 27 <<
	.uleb128 Ltmp98-Ltmp95                  ;   Call between Ltmp95 and Ltmp98
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp99-Lfunc_begin1            ; >> Call Site 28 <<
	.uleb128 Ltmp104-Ltmp99                 ;   Call between Ltmp99 and Ltmp104
	.uleb128 Ltmp105-Lfunc_begin1           ;     jumps to Ltmp105
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp106-Lfunc_begin1           ; >> Call Site 29 <<
	.uleb128 Ltmp109-Ltmp106                ;   Call between Ltmp106 and Ltmp109
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp110-Lfunc_begin1           ; >> Call Site 30 <<
	.uleb128 Ltmp115-Ltmp110                ;   Call between Ltmp110 and Ltmp115
	.uleb128 Ltmp116-Lfunc_begin1           ;     jumps to Ltmp116
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp117-Lfunc_begin1           ; >> Call Site 31 <<
	.uleb128 Ltmp120-Ltmp117                ;   Call between Ltmp117 and Ltmp120
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp121-Lfunc_begin1           ; >> Call Site 32 <<
	.uleb128 Ltmp124-Ltmp121                ;   Call between Ltmp121 and Ltmp124
	.uleb128 Ltmp125-Lfunc_begin1           ;     jumps to Ltmp125
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp126-Lfunc_begin1           ; >> Call Site 33 <<
	.uleb128 Ltmp129-Ltmp126                ;   Call between Ltmp126 and Ltmp129
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp130-Lfunc_begin1           ; >> Call Site 34 <<
	.uleb128 Ltmp133-Ltmp130                ;   Call between Ltmp130 and Ltmp133
	.uleb128 Ltmp134-Lfunc_begin1           ;     jumps to Ltmp134
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp135-Lfunc_begin1           ; >> Call Site 35 <<
	.uleb128 Ltmp138-Ltmp135                ;   Call between Ltmp135 and Ltmp138
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp139-Lfunc_begin1           ; >> Call Site 36 <<
	.uleb128 Ltmp142-Ltmp139                ;   Call between Ltmp139 and Ltmp142
	.uleb128 Ltmp143-Lfunc_begin1           ;     jumps to Ltmp143
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp144-Lfunc_begin1           ; >> Call Site 37 <<
	.uleb128 Ltmp147-Ltmp144                ;   Call between Ltmp144 and Ltmp147
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin1           ; >> Call Site 38 <<
	.uleb128 Ltmp151-Ltmp148                ;   Call between Ltmp148 and Ltmp151
	.uleb128 Ltmp152-Lfunc_begin1           ;     jumps to Ltmp152
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp153-Lfunc_begin1           ; >> Call Site 39 <<
	.uleb128 Ltmp154-Ltmp153                ;   Call between Ltmp153 and Ltmp154
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp154-Lfunc_begin1           ; >> Call Site 40 <<
	.uleb128 Lfunc_end1-Ltmp154             ;   Call between Ltmp154 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10LambertianC1ERK4Vec3      ; -- Begin function _ZN10LambertianC1ERK4Vec3
	.weak_def_can_be_hidden	__ZN10LambertianC1ERK4Vec3
	.p2align	2
__ZN10LambertianC1ERK4Vec3:             ; @_ZN10LambertianC1ERK4Vec3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZN10LambertianC2ERK4Vec3
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN8SpecularC1ERK4Vec3         ; -- Begin function _ZN8SpecularC1ERK4Vec3
	.weak_def_can_be_hidden	__ZN8SpecularC1ERK4Vec3
	.p2align	2
__ZN8SpecularC1ERK4Vec3:                ; @_ZN8SpecularC1ERK4Vec3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZN8SpecularC2ERK4Vec3
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6GlossyC1ERK4Vec3d          ; -- Begin function _ZN6GlossyC1ERK4Vec3d
	.weak_def_can_be_hidden	__ZN6GlossyC1ERK4Vec3d
	.p2align	2
__ZN6GlossyC1ERK4Vec3d:                 ; @_ZN6GlossyC1ERK4Vec3d
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	d0, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	d0, [sp, #8]
	bl	__ZN6GlossyC2ERK4Vec3d
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN10DielectricC1Ed            ; -- Begin function _ZN10DielectricC1Ed
	.weak_def_can_be_hidden	__ZN10DielectricC1Ed
	.p2align	2
__ZN10DielectricC1Ed:                   ; @_ZN10DielectricC1Ed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	d0, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	d0, [sp, #16]
	bl	__ZN10DielectricC2Ed
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN8EmissiveC1ERK4Vec3         ; -- Begin function _ZN8EmissiveC1ERK4Vec3
	.weak_def_can_be_hidden	__ZN8EmissiveC1ERK4Vec3
	.p2align	2
__ZN8EmissiveC1ERK4Vec3:                ; @_ZN8EmissiveC1ERK4Vec3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZN8EmissiveC2ERK4Vec3
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC1B9nqe210106Ev: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_ ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
	.weak_definition	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6SphereC1EP8MaterialdRK4Vec3 ; -- Begin function _ZN6SphereC1EP8MaterialdRK4Vec3
	.weak_def_can_be_hidden	__ZN6SphereC1EP8MaterialdRK4Vec3
	.p2align	2
__ZN6SphereC1EP8MaterialdRK4Vec3:       ; @_ZN6SphereC1EP8MaterialdRK4Vec3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	d0, [sp, #24]
	str	x2, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	d0, [sp, #24]
	ldr	x2, [sp, #16]
	bl	__ZN6SphereC2EP8MaterialdRK4Vec3
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN4AABBC1EP8MaterialRK4Vec3S4_ ; -- Begin function _ZN4AABBC1EP8MaterialRK4Vec3S4_
	.weak_def_can_be_hidden	__ZN4AABBC1EP8MaterialRK4Vec3S4_
	.p2align	2
__ZN4AABBC1EP8MaterialRK4Vec3S4_:       ; @_ZN4AABBC1EP8MaterialRK4Vec3S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZN4AABBC2EP8MaterialRK4Vec3S4_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z15createTestScenev           ; -- Begin function _Z15createTestScenev
	.p2align	2
__Z15createTestScenev:                  ; @_Z15createTestScenev
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #272
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #256]            ; 16-byte Folded Spill
	add	x29, sp, #256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	x0, x8
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-24]
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-25]
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC1B9nqe210106Ev
Ltmp156:
	mov	x0, #32                         ; =0x20
	bl	__Znwm
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp157:
	b	LBB20_1
LBB20_1:
Ltmp158:
	sub	x0, x29, #80
	fmov	d2, #8.00000000
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
Ltmp159:
	b	LBB20_2
LBB20_2:
Ltmp160:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	sub	x1, x29, #80
	bl	__ZN8EmissiveC1ERK4Vec3
Ltmp161:
	b	LBB20_3
LBB20_3:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-40]
Ltmp163:
	mov	x0, #32                         ; =0x20
	bl	__Znwm
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp164:
	b	LBB20_4
LBB20_4:
Ltmp165:
	sub	x0, x29, #112
	mov	x8, #7378697629483820646        ; =0x6666666666666666
	movk	x8, #16358, lsl #48
	fmov	d2, x8
	fmov	d0, d2
	fmov	d1, d2
	bl	__ZN4Vec3C1Eddd
Ltmp166:
	b	LBB20_5
LBB20_5:
Ltmp167:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	sub	x1, x29, #112
	bl	__ZN10LambertianC1ERK4Vec3
Ltmp168:
	b	LBB20_6
LBB20_6:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-88]
Ltmp170:
	mov	x0, #48                         ; =0x30
	bl	__Znwm
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp171:
	b	LBB20_7
LBB20_7:
	ldur	x8, [x29, #-40]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
Ltmp172:
	add	x0, sp, #112
	movi	d0, #0000000000000000
	fmov	d1, #1.00000000
	fmov	d2, #-3.00000000
	bl	__ZN4Vec3C1Eddd
Ltmp173:
	b	LBB20_8
LBB20_8:
Ltmp174:
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16361, lsl #48
	fmov	d0, x8
	add	x2, sp, #112
	bl	__ZN6SphereC1EP8MaterialdRK4Vec3
Ltmp175:
	b	LBB20_9
LBB20_9:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	sub	x1, x29, #120
	stur	x8, [x29, #-120]
Ltmp177:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp178:
	b	LBB20_10
LBB20_10:
Ltmp179:
	mov	x0, #64                         ; =0x40
	bl	__Znwm
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp180:
	b	LBB20_11
LBB20_11:
	ldur	x8, [x29, #-88]
	str	x8, [sp]                        ; 8-byte Folded Spill
Ltmp181:
	add	x0, sp, #80
	fmov	d2, #-5.00000000
	fmov	d0, d2
	fmov	d1, #-1.00000000
	bl	__ZN4Vec3C1Eddd
Ltmp182:
	b	LBB20_12
LBB20_12:
Ltmp183:
	add	x0, sp, #56
	fmov	d2, #5.00000000
	fmov	d0, d2
	movi	d1, #0000000000000000
	bl	__ZN4Vec3C1Eddd
Ltmp184:
	b	LBB20_13
LBB20_13:
Ltmp185:
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x2, sp, #80
	add	x3, sp, #56
	bl	__ZN4AABBC1EP8MaterialRK4Vec3S4_
Ltmp186:
	b	LBB20_14
LBB20_14:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #104
	str	x8, [sp, #104]
Ltmp188:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE9push_backB9nqe210106EOS2_
Ltmp189:
	b	LBB20_15
LBB20_15:
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-25]
	ldurb	w8, [x29, #-25]
	tbnz	w8, #0, LBB20_22
	b	LBB20_21
LBB20_16:
Ltmp190:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB20_23
LBB20_17:
Ltmp162:
	mov	x8, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	bl	__ZdlPv
	b	LBB20_23
LBB20_18:
Ltmp169:
	mov	x8, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	bl	__ZdlPv
	b	LBB20_23
LBB20_19:
Ltmp176:
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	bl	__ZdlPv
	b	LBB20_23
LBB20_20:
Ltmp187:
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	bl	__ZdlPv
	b	LBB20_23
LBB20_21:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev
	b	LBB20_22
LBB20_22:
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272
	ret
LBB20_23:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev
	b	LBB20_24
LBB20_24:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table20:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp156-Lfunc_begin2           ; >> Call Site 1 <<
	.uleb128 Ltmp157-Ltmp156                ;   Call between Ltmp156 and Ltmp157
	.uleb128 Ltmp190-Lfunc_begin2           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp158-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp161-Ltmp158                ;   Call between Ltmp158 and Ltmp161
	.uleb128 Ltmp162-Lfunc_begin2           ;     jumps to Ltmp162
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp163-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Ltmp164-Ltmp163                ;   Call between Ltmp163 and Ltmp164
	.uleb128 Ltmp190-Lfunc_begin2           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin2           ; >> Call Site 4 <<
	.uleb128 Ltmp168-Ltmp165                ;   Call between Ltmp165 and Ltmp168
	.uleb128 Ltmp169-Lfunc_begin2           ;     jumps to Ltmp169
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp170-Lfunc_begin2           ; >> Call Site 5 <<
	.uleb128 Ltmp171-Ltmp170                ;   Call between Ltmp170 and Ltmp171
	.uleb128 Ltmp190-Lfunc_begin2           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp172-Lfunc_begin2           ; >> Call Site 6 <<
	.uleb128 Ltmp175-Ltmp172                ;   Call between Ltmp172 and Ltmp175
	.uleb128 Ltmp176-Lfunc_begin2           ;     jumps to Ltmp176
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp177-Lfunc_begin2           ; >> Call Site 7 <<
	.uleb128 Ltmp180-Ltmp177                ;   Call between Ltmp177 and Ltmp180
	.uleb128 Ltmp190-Lfunc_begin2           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp181-Lfunc_begin2           ; >> Call Site 8 <<
	.uleb128 Ltmp186-Ltmp181                ;   Call between Ltmp181 and Ltmp186
	.uleb128 Ltmp187-Lfunc_begin2           ;     jumps to Ltmp187
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp188-Lfunc_begin2           ; >> Call Site 9 <<
	.uleb128 Ltmp189-Ltmp188                ;   Call between Ltmp188 and Ltmp189
	.uleb128 Ltmp190-Lfunc_begin2           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp189-Lfunc_begin2           ; >> Call Site 10 <<
	.uleb128 Lfunc_end2-Ltmp189             ;   Call between Ltmp189 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #352
	stp	x28, x27, [sp, #320]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #336]            ; 16-byte Folded Spill
	add	x29, sp, #336
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	wzr, [x29, #-20]
	stur	w0, [x29, #-24]
	stur	x1, [x29, #-32]
	ldur	w8, [x29, #-24]
	subs	w8, w8, #7
	b.ge	LBB21_2
	b	LBB21_1
LBB21_1:
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	ldr	x0, [x8]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_fprintf
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-20]
	b	LBB21_27
LBB21_2:
	bl	_omp_get_num_procs
	stur	w0, [x29, #-36]
	ldur	w0, [x29, #-36]
	bl	_omp_set_num_threads
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #8]
	bl	_atoi
	stur	w0, [x29, #-40]
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #16]
	bl	_atoi
	stur	w0, [x29, #-44]
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #24]
	bl	_atoi
	stur	w0, [x29, #-48]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #32]
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #40]
	bl	_atoi
	stur	w0, [x29, #-60]
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #48]
	bl	_atoi
	stur	w0, [x29, #-64]
	sub	x0, x29, #88
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	bl	__ZN4Vec3C1Ev
	sub	x0, x29, #112
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	bl	__ZN4Vec3C1Ev
	sub	x0, x29, #136
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	bl	__ZN4Vec3C1Ev
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, __ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	str	x1, [sp, #112]                  ; 8-byte Folded Spill
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
	ldr	x1, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x0, __ZNSt3__13cinE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__13cinE@GOTPAGEOFF]
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	add	x1, x8, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	add	x1, x8, #16
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	add	x1, x8, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	add	x1, x8, #16
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
	ldr	x1, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	add	x1, x8, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	add	x1, x8, #16
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	sub	x1, x29, #144
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
	add	x8, sp, #168
	bl	__Z11createScenev
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #160]
	ldur	w8, [x29, #-64]
	cbnz	w8, LBB21_6
	b	LBB21_3
LBB21_3:
	ldur	w0, [x29, #-40]
	ldur	w1, [x29, #-44]
	ldur	x3, [x29, #-56]
	ldur	d0, [x29, #-144]
	ldur	w7, [x29, #-48]
	ldur	w8, [x29, #-60]
Ltmp203:
	mov	x9, sp
	str	w8, [x9]
	add	x2, sp, #168
	sub	x4, x29, #88
	sub	x5, x29, #112
	sub	x6, x29, #136
	bl	__Z6renderiiRKNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEEPcRK4Vec3SB_SB_dii
Ltmp204:
	b	LBB21_4
LBB21_4:
	b	LBB21_16
LBB21_5:
Ltmp225:
	str	x0, [sp, #152]
	mov	x8, x1
	str	w8, [sp, #148]
	add	x0, sp, #168
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev
	b	LBB21_28
LBB21_6:
	ldur	w8, [x29, #-64]
	subs	w8, w8, #1
	b.ne	LBB21_11
	b	LBB21_7
LBB21_7:
Ltmp197:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp198:
	b	LBB21_8
LBB21_8:
Ltmp199:
	adrp	x0, __ZNSt3__13cinE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__13cinE@GOTPAGEOFF]
	add	x1, sp, #144
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp200:
	b	LBB21_9
LBB21_9:
	ldur	w0, [x29, #-40]
	ldur	w1, [x29, #-44]
	ldur	x3, [x29, #-56]
	ldur	d0, [x29, #-144]
	ldur	w7, [x29, #-48]
	ldur	w10, [x29, #-60]
	ldr	w8, [sp, #144]
Ltmp201:
	mov	x9, sp
	str	w10, [x9]
	str	w8, [x9, #4]
	add	x2, sp, #168
	sub	x4, x29, #88
	sub	x5, x29, #112
	sub	x6, x29, #136
	bl	__Z9renderMLTiiRKNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEEPcRK4Vec3SB_SB_diii
Ltmp202:
	b	LBB21_10
LBB21_10:
	b	LBB21_15
LBB21_11:
Ltmp191:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp192:
	b	LBB21_12
LBB21_12:
Ltmp193:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
Ltmp194:
	b	LBB21_13
LBB21_13:
Ltmp195:
	mov	w0, #1                          ; =0x1
	bl	_exit
Ltmp196:
	b	LBB21_14
LBB21_14:
	brk	#0x1
LBB21_15:
	b	LBB21_16
LBB21_16:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	add	x0, sp, #136
	str	x8, [sp, #136]
Ltmp205:
	add	x1, sp, #160
	bl	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp206:
	b	LBB21_17
LBB21_17:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	add	x1, sp, #120
	str	x8, [sp, #120]
Ltmp207:
	add	x0, sp, #128
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
Ltmp208:
	b	LBB21_18
LBB21_18:
Ltmp209:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp210:
	b	LBB21_19
LBB21_19:
Ltmp211:
	add	x0, sp, #128
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	str	d0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp212:
	b	LBB21_20
LBB21_20:
Ltmp213:
	ldr	d0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp214:
	b	LBB21_21
LBB21_21:
Ltmp215:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp216:
	b	LBB21_22
LBB21_22:
Ltmp217:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
Ltmp218:
	b	LBB21_23
LBB21_23:
Ltmp219:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp220:
	b	LBB21_24
LBB21_24:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-56]
Ltmp221:
	bl	__ZNSt3__1lsB9nqe210106INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp222:
	b	LBB21_25
LBB21_25:
Ltmp223:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
Ltmp224:
	b	LBB21_26
LBB21_26:
	stur	wzr, [x29, #-20]
	add	x0, sp, #168
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED1B9nqe210106Ev
	b	LBB21_27
LBB21_27:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #336]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #352
	ret
LBB21_28:
	ldr	x0, [sp, #152]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table21:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp203-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp203
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp203-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp224-Ltmp203                ;   Call between Ltmp203 and Ltmp224
	.uleb128 Ltmp225-Lfunc_begin3           ;     jumps to Ltmp225
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp224-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp224             ;   Call between Ltmp224 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
	.weak_definition	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB9nqe210106EPFRS3_S4_E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ; -- Begin function _ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	2
__ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ; @_ZNSt3__14endlB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	mov	w1, #10                         ; =0xa
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	ldr	x0, [sp, #8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE ; -- Begin function _ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.globl	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.weak_definition	__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	2
__ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE: ; @_ZNSt3__16chronomiB9nqe210106INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	add	x8, sp, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	.globl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev: ; @_ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3RayC2Ev                    ; -- Begin function _ZN3RayC2Ev
	.weak_def_can_be_hidden	__ZN3RayC2Ev
	.p2align	2
__ZN3RayC2Ev:                           ; @_ZN3RayC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZN4Vec3C1Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #24
	bl	__ZN4Vec3C1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113random_deviceC1B9nqe210106Ev ; -- Begin function _ZNSt3__113random_deviceC1B9nqe210106Ev
	.globl	__ZNSt3__113random_deviceC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__113random_deviceC1B9nqe210106Ev
	.p2align	2
__ZNSt3__113random_deviceC1B9nqe210106Ev: ; @_ZNSt3__113random_deviceC1B9nqe210106Ev
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #32
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106ILi0EEEPKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
Ltmp227:
	bl	__ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp228:
	b	LBB28_1
LBB28_1:
	add	x0, sp, #32
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB28_2:
Ltmp229:
	str	x0, [sp, #24]
	mov	x8, x1
	str	w8, [sp, #20]
	add	x0, sp, #32
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB28_3
LBB28_3:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table28:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp227-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp227
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp227-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp228-Ltmp227                ;   Call between Ltmp227 and Ltmp228
	.uleb128 Ltmp229-Lfunc_begin4           ;     jumps to Ltmp229
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp228-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp228             ;   Call between Ltmp228 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B9nqe210106Ej ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B9nqe210106Ej
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B9nqe210106Ej
	.weak_def_can_be_hidden	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B9nqe210106Ej
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B9nqe210106Ej: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B9nqe210106Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B9nqe210106Ej
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125uniform_real_distributionIdEC1B9nqe210106Edd ; -- Begin function _ZNSt3__125uniform_real_distributionIdEC1B9nqe210106Edd
	.globl	__ZNSt3__125uniform_real_distributionIdEC1B9nqe210106Edd
	.weak_def_can_be_hidden	__ZNSt3__125uniform_real_distributionIdEC1B9nqe210106Edd
	.p2align	2
__ZNSt3__125uniform_real_distributionIdEC1B9nqe210106Edd: ; @_ZNSt3__125uniform_real_distributionIdEC1B9nqe210106Edd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	d0, [sp, #16]
	str	d1, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	bl	__ZNSt3__125uniform_real_distributionIdEC2B9nqe210106Edd
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__125uniform_real_distributionIdEclB9nqe210106INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_ ; -- Begin function _ZNSt3__125uniform_real_distributionIdEclB9nqe210106INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	.weak_definition	__ZNSt3__125uniform_real_distributionIdEclB9nqe210106INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	.p2align	2
__ZNSt3__125uniform_real_distributionIdEclB9nqe210106INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_: ; @_ZNSt3__125uniform_real_distributionIdEclB9nqe210106INS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x2, [sp, #8]
	ldr	x1, [sp]
	mov	x0, x2
	bl	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106ILi0EEEPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106ILi0EEEPKc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106ILi0EEEPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106ILi0EEEPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106ILi0EEEPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106ILi0EEEPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106ILi0EEEPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106ILi0EEEPKc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106ILi0EEEPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106ILi0EEEPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106ILi0EEEPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC1B9nqe210106Ev
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC1B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIcEC1B9nqe210106Ev: ; @_ZNSt3__19allocatorIcEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.globl	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc: ; @_ZNSt3__111char_traitsIcE6lengthB9nqe210106EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B9nqe210106Ev: ; @_ZNSt3__19allocatorIcEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_ ; -- Begin function _ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.globl	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.weak_definition	__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.p2align	2
__ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_: ; @_ZNSt3__118__constexpr_strlenB9nqe210106IcEEmPKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B9nqe210106Ej ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B9nqe210106Ej
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B9nqe210106Ej
	.weak_def_can_be_hidden	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B9nqe210106Ej
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B9nqe210106Ej: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B9nqe210106Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	ldur	w8, [x29, #-12]
	mov	w10, #-1                        ; =0xffffffff
	and	w8, w8, w10
	str	w8, [x9]
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #24]
	b	LBB40_1
LBB40_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #624
	b.hs	LBB40_4
	b	LBB40_2
LBB40_2:                                ;   in Loop: Header=BB40_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	ldr	w9, [x8, x9, lsl #2]
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	ldr	w0, [x8, x9, lsl #2]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm30ELi0EEEjj
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	eor	w10, w8, w0
	mov	w8, #35173                      ; =0x8965
	movk	w8, #27655, lsl #16
	mul	w8, w8, w10
	mov	w8, w8
                                        ; kill: def $x8 killed $w8
	ldr	x10, [sp, #24]
	add	x8, x8, x10
                                        ; kill: def $w8 killed $w8 killed $x8
	mov	w8, w8
                                        ; kill: def $x8 killed $w8
	ldr	x10, [sp, #24]
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, x10, lsl #2]
	b	LBB40_3
LBB40_3:                                ;   in Loop: Header=BB40_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB40_1
LBB40_4:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	xzr, [x8, #2496]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm30ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm30ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm30ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm30ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm30ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #30
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125uniform_real_distributionIdEC2B9nqe210106Edd ; -- Begin function _ZNSt3__125uniform_real_distributionIdEC2B9nqe210106Edd
	.globl	__ZNSt3__125uniform_real_distributionIdEC2B9nqe210106Edd
	.weak_def_can_be_hidden	__ZNSt3__125uniform_real_distributionIdEC2B9nqe210106Edd
	.p2align	2
__ZNSt3__125uniform_real_distributionIdEC2B9nqe210106Edd: ; @_ZNSt3__125uniform_real_distributionIdEC2B9nqe210106Edd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	d0, [sp, #16]
	str	d1, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	bl	__ZNSt3__125uniform_real_distributionIdE10param_typeC1B9nqe210106Edd
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125uniform_real_distributionIdE10param_typeC1B9nqe210106Edd ; -- Begin function _ZNSt3__125uniform_real_distributionIdE10param_typeC1B9nqe210106Edd
	.globl	__ZNSt3__125uniform_real_distributionIdE10param_typeC1B9nqe210106Edd
	.weak_def_can_be_hidden	__ZNSt3__125uniform_real_distributionIdE10param_typeC1B9nqe210106Edd
	.p2align	2
__ZNSt3__125uniform_real_distributionIdE10param_typeC1B9nqe210106Edd: ; @_ZNSt3__125uniform_real_distributionIdE10param_typeC1B9nqe210106Edd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	d0, [sp, #16]
	str	d1, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	bl	__ZNSt3__125uniform_real_distributionIdE10param_typeC2B9nqe210106Edd
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125uniform_real_distributionIdE10param_typeC2B9nqe210106Edd ; -- Begin function _ZNSt3__125uniform_real_distributionIdE10param_typeC2B9nqe210106Edd
	.globl	__ZNSt3__125uniform_real_distributionIdE10param_typeC2B9nqe210106Edd
	.weak_def_can_be_hidden	__ZNSt3__125uniform_real_distributionIdE10param_typeC2B9nqe210106Edd
	.p2align	2
__ZNSt3__125uniform_real_distributionIdE10param_typeC2B9nqe210106Edd: ; @_ZNSt3__125uniform_real_distributionIdE10param_typeC2B9nqe210106Edd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	d0, [sp, #16]
	str	d1, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	d0, [sp, #16]
	str	d0, [x0]
	ldr	d0, [sp, #8]
	str	d0, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE ; -- Begin function _ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE
	.weak_definition	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE
	.p2align	2
__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE: ; @_ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__125uniform_real_distributionIdE10param_type1bB9nqe210106Ev
	str	d0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__125uniform_real_distributionIdE10param_type1aB9nqe210106Ev
	fmov	d1, d0
	ldr	d0, [sp]                        ; 8-byte Folded Reload
	fsub	d0, d0, d1
	str	d0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__118generate_canonicalB9nqe210106IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__125uniform_real_distributionIdE10param_type1aB9nqe210106Ev
	ldr	d1, [sp, #8]                    ; 8-byte Folded Reload
	fmov	d2, d0
	ldr	d0, [sp, #16]                   ; 8-byte Folded Reload
	fmadd	d0, d0, d1, d2
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__125uniform_real_distributionIdE10param_type1bB9nqe210106Ev ; -- Begin function _ZNKSt3__125uniform_real_distributionIdE10param_type1bB9nqe210106Ev
	.globl	__ZNKSt3__125uniform_real_distributionIdE10param_type1bB9nqe210106Ev
	.weak_definition	__ZNKSt3__125uniform_real_distributionIdE10param_type1bB9nqe210106Ev
	.p2align	2
__ZNKSt3__125uniform_real_distributionIdE10param_type1bB9nqe210106Ev: ; @_ZNKSt3__125uniform_real_distributionIdE10param_type1bB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__125uniform_real_distributionIdE10param_type1aB9nqe210106Ev ; -- Begin function _ZNKSt3__125uniform_real_distributionIdE10param_type1aB9nqe210106Ev
	.globl	__ZNKSt3__125uniform_real_distributionIdE10param_type1aB9nqe210106Ev
	.weak_definition	__ZNKSt3__125uniform_real_distributionIdE10param_type1aB9nqe210106Ev
	.p2align	2
__ZNKSt3__125uniform_real_distributionIdE10param_type1aB9nqe210106Ev: ; @_ZNKSt3__125uniform_real_distributionIdE10param_type1aB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118generate_canonicalB9nqe210106IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_ ; -- Begin function _ZNSt3__118generate_canonicalB9nqe210106IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	.globl	__ZNSt3__118generate_canonicalB9nqe210106IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	.weak_definition	__ZNSt3__118generate_canonicalB9nqe210106IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	.p2align	2
__ZNSt3__118generate_canonicalB9nqe210106IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_: ; @_ZNSt3__118generate_canonicalB9nqe210106IdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x8, #53                         ; =0x35
	stur	x8, [x29, #-16]
	stur	x8, [x29, #-24]
	mov	x8, #32                         ; =0x20
	stur	x8, [x29, #-32]
	mov	x8, #2                          ; =0x2
	stur	x8, [x29, #-40]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB9nqe210106Ev
	str	w0, [sp, #16]                   ; 4-byte Folded Spill
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB9nqe210106Ev
	mov	x8, x0
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	subs	w8, w0, w8
	ucvtf	d0, w8
	fmov	d1, #1.00000000
	fadd	d0, d0, d1
	str	d0, [sp, #48]
	mov	x8, #4751297606875873280        ; =0x41f0000000000000
	fmov	d0, x8
	str	d0, [sp, #40]
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB9nqe210106Ev
	mov	x8, x0
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	subs	w8, w0, w8
	ucvtf	d0, w8
	str	d0, [sp, #32]
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #24]
	b	LBB48_1
LBB48_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #2
	b.hs	LBB48_4
	b	LBB48_2
LBB48_2:                                ;   in Loop: Header=BB48_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB9nqe210106Ev
	mov	x8, x0
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w0, w8
	ucvtf	d0, w8
	ldr	d1, [sp, #40]
	ldr	d2, [sp, #32]
	fmadd	d0, d0, d1, d2
	str	d0, [sp, #32]
	b	LBB48_3
LBB48_3:                                ;   in Loop: Header=BB48_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldr	d0, [sp, #40]
	mov	x8, #4751297606875873280        ; =0x41f0000000000000
	fmov	d1, x8
	fmul	d0, d0, d1
	str	d0, [sp, #40]
	b	LBB48_1
LBB48_4:
	ldr	d0, [sp, #32]
	ldr	d1, [sp, #40]
	fdiv	d0, d0, d1
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB9nqe210106Ev ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB9nqe210106Ev
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB9nqe210106Ev
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB9nqe210106Ev
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB9nqe210106Ev: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3maxB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB9nqe210106Ev ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB9nqe210106Ev
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB9nqe210106Ev
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB9nqe210106Ev
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB9nqe210106Ev: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE3minB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x9, [x8, #2496]
	add	x9, x9, #1
	mov	x11, #624                       ; =0x270
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	stur	x9, [x29, #-16]
	mov	w9, #2147483647                 ; =0x7fffffff
	stur	w9, [x29, #-20]
	ldr	x9, [x8, #2496]
	ldr	w9, [x8, x9, lsl #2]
	and	w9, w9, #0x80000000
	ldur	x10, [x29, #-16]
	ldr	w10, [x8, x10, lsl #2]
	and	w10, w10, #0x7fffffff
	orr	w9, w9, w10
	stur	w9, [x29, #-24]
	ldr	x9, [x8, #2496]
	add	x9, x9, #397
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	str	x9, [sp, #32]
	ldr	x9, [sp, #32]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	ldur	w0, [x29, #-24]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm1ELi0EEEjj
	ldr	w9, [sp, #8]                    ; 4-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	eor	w9, w9, w0
	ldur	w10, [x29, #-24]
	and	w11, w10, #0x1
	mov	w10, #45279                     ; =0xb0df
	movk	w10, #39176, lsl #16
	mul	w10, w10, w11
	eor	w9, w9, w10
	ldr	x10, [x8, #2496]
	str	w9, [x8, x10, lsl #2]
	ldr	x9, [x8, #2496]
	ldr	w9, [x8, x9, lsl #2]
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	ldr	x9, [x8, #2496]
	ldr	w0, [x8, x9, lsl #2]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm11ELi0EEEjj
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	mov	w10, #-1                        ; =0xffffffff
	and	w10, w0, w10
	eor	w8, w8, w10
	str	w8, [sp, #28]
	ldur	x8, [x29, #-16]
	str	x8, [x9, #2496]
	ldr	w0, [sp, #28]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm7ELi0EEEjj
	mov	w8, #22144                      ; =0x5680
	movk	w8, #40236, lsl #16
	and	w9, w0, w8
	ldr	w8, [sp, #28]
	eor	w8, w8, w9
	str	w8, [sp, #28]
	ldr	w0, [sp, #28]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm15ELi0EEEjj
	mov	w8, #-272236544                 ; =0xefc60000
	and	w9, w0, w8
	ldr	w8, [sp, #28]
	eor	w8, w8, w9
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	ldr	w0, [sp, #28]
	bl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm18ELi0EEEjj
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	eor	w0, w8, w0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm1ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm1ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm1ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm1ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm1ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm11ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm11ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm11ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm11ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm11ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #11
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm7ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm7ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm7ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm7ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm7ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w9, [sp, #12]
	mov	w8, #-1                         ; =0xffffffff
	and	w0, w8, w9, lsl #7
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm15ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm15ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm15ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm15ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB9nqe210106ILm15ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w9, [sp, #12]
	mov	w8, #-1                         ; =0xffffffff
	and	w0, w8, w9, lsl #15
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm18ELi0EEEjj ; -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm18ELi0EEEjj
	.weak_definition	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm18ELi0EEEjj
	.p2align	2
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm18ELi0EEEjj: ; @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB9nqe210106ILm18ELi0EEEjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsr	w0, w8, #18
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15clampB9nqe210106IdNS_6__lessIvvEEEERKT_S5_S5_S5_T0_ ; -- Begin function _ZNSt3__15clampB9nqe210106IdNS_6__lessIvvEEEERKT_S5_S5_S5_T0_
	.globl	__ZNSt3__15clampB9nqe210106IdNS_6__lessIvvEEEERKT_S5_S5_S5_T0_
	.weak_definition	__ZNSt3__15clampB9nqe210106IdNS_6__lessIvvEEEERKT_S5_S5_S5_T0_
	.p2align	2
__ZNSt3__15clampB9nqe210106IdNS_6__lessIvvEEEERKT_S5_S5_S5_T0_: ; @_ZNSt3__15clampB9nqe210106IdNS_6__lessIvvEEEERKT_S5_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB9nqe210106IddEEbRKT_RKT0_
	tbz	w0, #0, LBB57_2
	b	LBB57_1
LBB57_1:
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB57_6
LBB57_2:
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB9nqe210106IddEEbRKT_RKT0_
	tbz	w0, #0, LBB57_4
	b	LBB57_3
LBB57_3:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB57_5
LBB57_4:
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB57_5
LBB57_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB57_6
LBB57_6:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessIvvEclB9nqe210106IddEEbRKT_RKT0_ ; -- Begin function _ZNKSt3__16__lessIvvEclB9nqe210106IddEEbRKT_RKT0_
	.globl	__ZNKSt3__16__lessIvvEclB9nqe210106IddEEbRKT_RKT0_
	.weak_definition	__ZNKSt3__16__lessIvvEclB9nqe210106IddEEbRKT_RKT0_
	.p2align	2
__ZNKSt3__16__lessIvvEclB9nqe210106IddEEbRKT_RKT0_: ; @_ZNKSt3__16__lessIvvEclB9nqe210106IddEEbRKT_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	d0, [x8]
	ldr	x8, [sp, #8]
	ldr	d1, [x8]
	fcmp	d0, d1
	cset	w0, mi
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN10LambertianC2ERK4Vec3      ; -- Begin function _ZN10LambertianC2ERK4Vec3
	.weak_def_can_be_hidden	__ZN10LambertianC2ERK4Vec3
	.p2align	2
__ZN10LambertianC2ERK4Vec3:             ; @_ZN10LambertianC2ERK4Vec3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN8MaterialC2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTV10Lambertian@GOTPAGE
	ldr	x8, [x8, __ZTV10Lambertian@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	q0, [x8]
	stur	q0, [x0, #8]
	ldr	x8, [x8, #16]
	str	x8, [x0, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN8MaterialC2Ev               ; -- Begin function _ZN8MaterialC2Ev
	.weak_def_can_be_hidden	__ZN8MaterialC2Ev
	.p2align	2
__ZN8MaterialC2Ev:                      ; @_ZN8MaterialC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, __ZTV8Material@GOTPAGE
	ldr	x8, [x8, __ZTV8Material@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN8MaterialD1Ev               ; -- Begin function _ZN8MaterialD1Ev
	.weak_def_can_be_hidden	__ZN8MaterialD1Ev
	.p2align	2
__ZN8MaterialD1Ev:                      ; @_ZN8MaterialD1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	str	x8, [sp, #8]
	brk	#0x1
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN8MaterialD0Ev               ; -- Begin function _ZN8MaterialD0Ev
	.weak_def_can_be_hidden	__ZN8MaterialD0Ev
	.p2align	2
__ZN8MaterialD0Ev:                      ; @_ZN8MaterialD0Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	brk	#0x1
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN8SpecularC2ERK4Vec3         ; -- Begin function _ZN8SpecularC2ERK4Vec3
	.weak_def_can_be_hidden	__ZN8SpecularC2ERK4Vec3
	.p2align	2
__ZN8SpecularC2ERK4Vec3:                ; @_ZN8SpecularC2ERK4Vec3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN8MaterialC2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTV8Specular@GOTPAGE
	ldr	x8, [x8, __ZTV8Specular@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	q0, [x8]
	stur	q0, [x0, #8]
	ldr	x8, [x8, #16]
	str	x8, [x0, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6GlossyC2ERK4Vec3d          ; -- Begin function _ZN6GlossyC2ERK4Vec3d
	.weak_def_can_be_hidden	__ZN6GlossyC2ERK4Vec3d
	.p2align	2
__ZN6GlossyC2ERK4Vec3d:                 ; @_ZN6GlossyC2ERK4Vec3d
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	d0, [sp, #16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZN8MaterialC2Ev
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTV6Glossy@GOTPAGE
	ldr	x8, [x8, __ZTV6Glossy@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x9]
	ldr	x8, [sp, #24]
	ldr	q0, [x8]
	stur	q0, [x9, #8]
	ldr	x8, [x8, #16]
	str	x8, [x9, #24]
	ldr	d0, [sp, #16]
	fmov	d1, #1.00000000
	fcmp	d0, d1
	b.pl	LBB64_2
	b	LBB64_1
LBB64_1:
	ldr	d0, [sp, #16]
	str	d0, [sp]                        ; 8-byte Folded Spill
	b	LBB64_3
LBB64_2:
	fmov	d0, #1.00000000
	str	d0, [sp]                        ; 8-byte Folded Spill
	b	LBB64_3
LBB64_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	d0, [sp]                        ; 8-byte Folded Reload
	str	d0, [x8, #32]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN10DielectricC2Ed            ; -- Begin function _ZN10DielectricC2Ed
	.weak_def_can_be_hidden	__ZN10DielectricC2Ed
	.p2align	2
__ZN10DielectricC2Ed:                   ; @_ZN10DielectricC2Ed
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	d0, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN8MaterialC2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTV10Dielectric@GOTPAGE
	ldr	x8, [x8, __ZTV10Dielectric@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldr	d0, [sp, #16]
	str	d0, [x0, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN8EmissiveC2ERK4Vec3         ; -- Begin function _ZN8EmissiveC2ERK4Vec3
	.weak_def_can_be_hidden	__ZN8EmissiveC2ERK4Vec3
	.p2align	2
__ZN8EmissiveC2ERK4Vec3:                ; @_ZN8EmissiveC2ERK4Vec3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN8MaterialC2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTV8Emissive@GOTPAGE
	ldr	x8, [x8, __ZTV8Emissive@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	q0, [x8]
	stur	q0, [x0, #8]
	ldr	x8, [x8, #16]
	str	x8, [x0, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6SphereC2EP8MaterialdRK4Vec3 ; -- Begin function _ZN6SphereC2EP8MaterialdRK4Vec3
	.weak_def_can_be_hidden	__ZN6SphereC2EP8MaterialdRK4Vec3
	.p2align	2
__ZN6SphereC2EP8MaterialdRK4Vec3:       ; @_ZN6SphereC2EP8MaterialdRK4Vec3
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	d0, [sp, #24]
	str	x2, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	bl	__ZN6ObjectC2EP8Material
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTV6Sphere@GOTPAGE
	ldr	x8, [x8, __ZTV6Sphere@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldr	d0, [sp, #24]
	str	d0, [x0, #16]
	ldr	x8, [sp, #16]
	ldr	q0, [x8]
	stur	q0, [x0, #24]
	ldr	x8, [x8, #16]
	str	x8, [x0, #40]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6ObjectC2EP8Material        ; -- Begin function _ZN6ObjectC2EP8Material
	.weak_def_can_be_hidden	__ZN6ObjectC2EP8Material
	.p2align	2
__ZN6ObjectC2EP8Material:               ; @_ZN6ObjectC2EP8Material
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	adrp	x8, __ZTV6Object@GOTPAGE
	ldr	x8, [x8, __ZTV6Object@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldr	x8, [sp]
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6ObjectD1Ev                 ; -- Begin function _ZN6ObjectD1Ev
	.weak_def_can_be_hidden	__ZN6ObjectD1Ev
	.p2align	2
__ZN6ObjectD1Ev:                        ; @_ZN6ObjectD1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	str	x8, [sp, #8]
	brk	#0x1
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN6ObjectD0Ev                 ; -- Begin function _ZN6ObjectD0Ev
	.weak_def_can_be_hidden	__ZN6ObjectD0Ev
	.p2align	2
__ZN6ObjectD0Ev:                        ; @_ZN6ObjectD0Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	brk	#0x1
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN4AABBC2EP8MaterialRK4Vec3S4_ ; -- Begin function _ZN4AABBC2EP8MaterialRK4Vec3S4_
	.weak_def_can_be_hidden	__ZN4AABBC2EP8MaterialRK4Vec3S4_
	.p2align	2
__ZN4AABBC2EP8MaterialRK4Vec3S4_:       ; @_ZN4AABBC2EP8MaterialRK4Vec3S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	bl	__ZN6ObjectC2EP8Material
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTV4AABB@GOTPAGE
	ldr	x8, [x8, __ZTV4AABB@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldr	x8, [sp, #24]
	ldr	q0, [x8]
	str	q0, [x0, #16]
	ldr	x8, [x8, #16]
	str	x8, [x0, #32]
	ldr	x8, [sp, #16]
	ldr	q0, [x8]
	stur	q0, [x0, #40]
	ldr	x8, [x8, #16]
	str	x8, [x0, #56]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_ ; -- Begin function _ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.globl	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.weak_definition	__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.p2align	2
__ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_: ; @_ZNSt3__16chronomiB9nqe210106IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, sp, #24
	str	x8, [sp, #24]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	add	x0, sp, #16
	str	x8, [sp, #16]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	add	x1, sp, #32
	str	x8, [sp, #32]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.globl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev: ; @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.globl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.weak_definition	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.p2align	2
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B9nqe210106IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B9nqe210106IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	add	x0, sp, #8
	str	d0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	d0, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE ; -- Begin function _ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.globl	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.weak_definition	__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.p2align	2
__ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE: ; @_ZNSt3__16chrono13duration_castB9nqe210106INS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_
	stur	d0, [x29, #-8]
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_ ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_
	.globl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_
	.weak_definition	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_
	.p2align	2
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclB9nqe210106ERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB9nqe210106Ev
	scvtf	d0, x0
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	mov	x1, sp
	str	d0, [sp]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B9nqe210106IdLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2B9nqe210106IdLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	d0, [x8]
	str	d0, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB9nqe210106IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp251:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp252:
	b	LBB82_1
LBB82_1:
Ltmp254:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp255:
	b	LBB82_2
LBB82_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB82_18
	b	LBB82_3
LBB82_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp256:
	bl	__ZNKSt3__18ios_base5flagsB9nqe210106Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp257:
	b	LBB82_4
LBB82_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB82_6
	b	LBB82_5
LBB82_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB82_7
LBB82_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB82_7
LBB82_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp258:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp259:
	b	LBB82_8
LBB82_8:
	ldr	w5, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp260:
	bl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp261:
	b	LBB82_9
LBB82_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	tbz	w0, #0, LBB82_17
	b	LBB82_10
LBB82_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp262:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
Ltmp263:
	b	LBB82_11
LBB82_11:
	b	LBB82_17
LBB82_12:
Ltmp253:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB82_14
LBB82_13:
Ltmp264:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB82_14
LBB82_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp265:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp266:
	b	LBB82_15
LBB82_15:
	bl	___cxa_end_catch
	b	LBB82_16
LBB82_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB82_17:
	b	LBB82_18
LBB82_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB82_16
LBB82_19:
Ltmp267:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp268:
	bl	___cxa_end_catch
Ltmp269:
	b	LBB82_20
LBB82_20:
	b	LBB82_21
LBB82_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB82_22:
Ltmp270:
	bl	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table82:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp251-Lfunc_begin5           ; >> Call Site 1 <<
	.uleb128 Ltmp252-Ltmp251                ;   Call between Ltmp251 and Ltmp252
	.uleb128 Ltmp253-Lfunc_begin5           ;     jumps to Ltmp253
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp254-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp263-Ltmp254                ;   Call between Ltmp254 and Ltmp263
	.uleb128 Ltmp264-Lfunc_begin5           ;     jumps to Ltmp264
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp263-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp265-Ltmp263                ;   Call between Ltmp263 and Ltmp265
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp265-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp266-Ltmp265                ;   Call between Ltmp265 and Ltmp266
	.uleb128 Ltmp267-Lfunc_begin5           ;     jumps to Ltmp267
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp266-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp268-Ltmp266                ;   Call between Ltmp266 and Ltmp268
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp268-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp269-Ltmp268                ;   Call between Ltmp268 and Ltmp269
	.uleb128 Ltmp270-Lfunc_begin5           ;     jumps to Ltmp270
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp269-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Lfunc_end5-Ltmp269             ;   Call between Ltmp269 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
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
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB9nqe210106IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB84_2
	b	LBB84_1
LBB84_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB84_23
LBB84_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthB9nqe210106Ev
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.le	LBB84_4
	b	LBB84_3
LBB84_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB84_5
LBB84_4:
	str	xzr, [sp, #72]
	b	LBB84_5
LBB84_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB84_9
	b	LBB84_6
LBB84_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB84_8
	b	LBB84_7
LBB84_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB84_23
LBB84_8:
	b	LBB84_9
LBB84_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB84_18
	b	LBB84_10
LBB84_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp272:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp273:
	b	LBB84_11
LBB84_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB84_14
	b	LBB84_12
LBB84_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB84_15
LBB84_13:
Ltmp274:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB84_24
LBB84_14:
	str	wzr, [sp, #24]
	b	LBB84_15
LBB84_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB84_17
	b	LBB84_16
LBB84_16:
	b	LBB84_23
LBB84_17:
	b	LBB84_18
LBB84_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB84_22
	b	LBB84_19
LBB84_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB84_21
	b	LBB84_20
LBB84_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB84_23
LBB84_21:
	b	LBB84_22
LBB84_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB9nqe210106El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB84_23
LBB84_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB84_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table84:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp272-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp272
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp272-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp273-Ltmp272                ;   Call between Ltmp272 and Ltmp273
	.uleb128 Ltmp274-Lfunc_begin6           ;     jumps to Ltmp274
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp273-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp273             ;   Call between Ltmp273 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB9nqe210106Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.globl	__ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB9nqe210106Ev: ; @_ZNKSt3__18ios_base5flagsB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	tbnz	w0, #0, LBB87_2
	b	LBB87_1
LBB87_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	b	LBB87_2
LBB87_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB9nqe210106Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateB9nqe210106Ej
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
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
	.private_extern	__ZNKSt3__18ios_base5widthB9nqe210106Ev ; -- Begin function _ZNKSt3__18ios_base5widthB9nqe210106Ev
	.globl	__ZNKSt3__18ios_base5widthB9nqe210106Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB9nqe210106Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB9nqe210106Ev: ; @_ZNKSt3__18ios_base5widthB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB9nqe210106EPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B9nqe210106Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	bl	__ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB9nqe210106El ; -- Begin function _ZNSt3__18ios_base5widthB9nqe210106El
	.globl	__ZNSt3__18ios_base5widthB9nqe210106El
	.weak_definition	__ZNSt3__18ios_base5widthB9nqe210106El
	.p2align	2
__ZNSt3__18ios_base5widthB9nqe210106El: ; @_ZNSt3__18ios_base5widthB9nqe210106El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe210106Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC1B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_
	.globl	__ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_: ; @_ZNSt3__112__to_addressB9nqe210106IcEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	tbz	w0, #0, LBB98_2
	b	LBB98_1
LBB98_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB98_3
LBB98_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB98_3
LBB98_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #23]
	lsr	w8, w8, #7
	subs	w8, w8, #0
	cset	w0, ne
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc ; -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc
	.globl	__ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc
	.weak_definition	__ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc
	.p2align	2
__ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc: ; @_ZNSt3__114pointer_traitsIPcE10pointer_toB9nqe210106ERc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B9nqe210106ERNS_13basic_ostreamIcS2_EE
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp283:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp284:
	b	LBB103_1
LBB103_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB103_2:
Ltmp285:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table103:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp283-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp284-Ltmp283                ;   Call between Ltmp283 and Ltmp284
	.uleb128 Ltmp285-Lfunc_begin7           ;     jumps to Ltmp285
	.byte	1                               ;   On action: 1
Lcst_end7:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.globl	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB9nqe210106Ev: ; @_ZNKSt3__18ios_base5rdbufB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w0, ne
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB9nqe210106Ec
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp287:
	bl	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp288:
	b	LBB107_1
LBB107_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp289:
	bl	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp290:
	b	LBB107_2
LBB107_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB107_3:
Ltmp291:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB107_4
LBB107_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table107:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp287-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp287
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp287-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp290-Ltmp287                ;   Call between Ltmp287 and Ltmp290
	.uleb128 Ltmp291-Lfunc_begin8           ;     jumps to Ltmp291
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp290-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp290             ;   Call between Ltmp290 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei ; -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.globl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.weak_definition	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.p2align	2
__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei: ; @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB9nqe210106Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev ; -- Begin function _ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.globl	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.weak_definition	__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.p2align	2
__ZNSt3__111char_traitsIcE3eofB9nqe210106Ev: ; @_ZNSt3__111char_traitsIcE3eofB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB9nqe210106INS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB9nqe210106Ec: ; @_ZNKSt3__15ctypeIcE5widenB9nqe210106Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB9nqe210106Ej ; -- Begin function _ZNSt3__18ios_base8setstateB9nqe210106Ej
	.globl	__ZNSt3__18ios_base8setstateB9nqe210106Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB9nqe210106Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB9nqe210106Ej: ; @_ZNSt3__18ios_base8setstateB9nqe210106Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC2B9nqe210106Ev: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	add	x0, x8, #16
	bl	__ZNSt3__19allocatorIP6ObjectEC1B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIP6ObjectEC1B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIP6ObjectEC1B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIP6ObjectEC1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIP6ObjectEC1B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIP6ObjectEC1B9nqe210106Ev: ; @_ZNSt3__19allocatorIP6ObjectEC1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIP6ObjectEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIP6ObjectEC2B9nqe210106Ev ; -- Begin function _ZNSt3__19allocatorIP6ObjectEC2B9nqe210106Ev
	.globl	__ZNSt3__19allocatorIP6ObjectEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIP6ObjectEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__19allocatorIP6ObjectEC2B9nqe210106Ev: ; @_ZNSt3__19allocatorIP6ObjectEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP6ObjectEEEC2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP6ObjectEEEC2B9nqe210106Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP6ObjectEEEC2B9nqe210106Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP6ObjectEEEC2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP6ObjectEEEC2B9nqe210106Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP6ObjectEEEC2B9nqe210106Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP6ObjectEEEC2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED2B9nqe210106Ev: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEED2B9nqe210106Ev
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp295:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_
Ltmp296:
	b	LBB118_1
LBB118_1:
Ltmp297:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev
Ltmp298:
	b	LBB118_2
LBB118_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB118_3:
Ltmp299:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table118:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp295-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp298-Ltmp295                ;   Call between Ltmp295 and Ltmp298
	.uleb128 Ltmp299-Lfunc_begin9           ;     jumps to Ltmp299
	.byte	1                               ;   On action: 1
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_ ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC1B9nqe210106ERS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorclB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, LBB120_2
	b	LBB120_1
LBB120_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE10deallocateB9nqe210106ERS4_PS3_m
	b	LBB120_2
LBB120_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_ ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE16__destroy_vectorC2B9nqe210106ERS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE5clearB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE5clearB9nqe210106Ev: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev: ; @_ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
Ltmp301:
	add	x1, x10, x11, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
Ltmp302:
	b	LBB123_1
LBB123_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB123_2:
Ltmp303:
	bl	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table123:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp301-Lfunc_begin10          ; >> Call Site 1 <<
	.uleb128 Ltmp302-Ltmp301                ;   Call between Ltmp301 and Ltmp302
	.uleb128 Ltmp303-Lfunc_begin10          ;     jumps to Ltmp303
	.byte	1                               ;   On action: 1
Lcst_end10:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE10deallocateB9nqe210106ERS4_PS3_m ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE10deallocateB9nqe210106ERS4_PS3_m
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE10deallocateB9nqe210106ERS4_PS3_m
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE10deallocateB9nqe210106ERS4_PS3_m
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE10deallocateB9nqe210106ERS4_PS3_m: ; @_ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE10deallocateB9nqe210106ERS4_PS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIP6ObjectE10deallocateB9nqe210106EPS2_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8capacityB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8capacityB9nqe210106Ev: ; @_ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev: ; @_ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_ ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_
	.weak_definition	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE22__base_destruct_at_endB9nqe210106EPS2_
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB127_1
LBB127_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB127_4
	b	LBB127_2
LBB127_2:                               ;   in Loop: Header=BB127_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #8
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp306:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_
Ltmp307:
	b	LBB127_3
LBB127_3:                               ;   in Loop: Header=BB127_1 Depth=1
	b	LBB127_1
LBB127_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB127_5:
Ltmp308:
	bl	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table127:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp306-Lfunc_begin11          ; >> Call Site 1 <<
	.uleb128 Ltmp307-Ltmp306                ;   Call between Ltmp306 and Ltmp307
	.uleb128 Ltmp308-Lfunc_begin11          ;     jumps to Ltmp308
	.byte	1                               ;   On action: 1
Lcst_end11:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
	.globl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em: ; @_ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
Ltmp309:
	add	x1, x10, x11, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
Ltmp310:
	b	LBB128_1
LBB128_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB128_2:
Ltmp311:
	bl	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table128:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp309-Lfunc_begin12          ; >> Call Site 1 <<
	.uleb128 Ltmp310-Ltmp309                ;   Call between Ltmp309 and Ltmp310
	.uleb128 Ltmp311-Lfunc_begin12          ;     jumps to Ltmp311
	.byte	1                               ;   On action: 1
Lcst_end12:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIP6ObjectE7destroyB9nqe210106EPS2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_ ; -- Begin function _ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	.globl	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	.weak_definition	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	.p2align	2
__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_: ; @_ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIP6ObjectE7destroyB9nqe210106EPS2_ ; -- Begin function _ZNSt3__19allocatorIP6ObjectE7destroyB9nqe210106EPS2_
	.globl	__ZNSt3__19allocatorIP6ObjectE7destroyB9nqe210106EPS2_
	.weak_definition	__ZNSt3__19allocatorIP6ObjectE7destroyB9nqe210106EPS2_
	.p2align	2
__ZNSt3__19allocatorIP6ObjectE7destroyB9nqe210106EPS2_: ; @_ZNSt3__19allocatorIP6ObjectE7destroyB9nqe210106EPS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_ ; -- Begin function _ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.globl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.weak_definition	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.p2align	2
__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_: ; @_ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	add	x1, x8, x9, lsl #3
	bl	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIP6ObjectEEEEvPKvS6_S6_S6_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev: ; @_ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIP6ObjectEEEEvPKvS6_S6_S6_ ; -- Begin function _ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIP6ObjectEEEEvPKvS6_S6_S6_
	.globl	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIP6ObjectEEEEvPKvS6_S6_S6_
	.weak_definition	__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIP6ObjectEEEEvPKvS6_S6_S6_
	.p2align	2
__ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIP6ObjectEEEEvPKvS6_S6_S6_: ; @_ZNSt3__131__annotate_contiguous_containerB9nqe210106INS_9allocatorIP6ObjectEEEEvPKvS6_S6_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIP6ObjectE10deallocateB9nqe210106EPS2_m ; -- Begin function _ZNSt3__19allocatorIP6ObjectE10deallocateB9nqe210106EPS2_m
	.globl	__ZNSt3__19allocatorIP6ObjectE10deallocateB9nqe210106EPS2_m
	.weak_definition	__ZNSt3__19allocatorIP6ObjectE10deallocateB9nqe210106EPS2_m
	.p2align	2
__ZNSt3__19allocatorIP6ObjectE10deallocateB9nqe210106EPS2_m: ; @_ZNSt3__19allocatorIP6ObjectE10deallocateB9nqe210106EPS2_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	x2, #8                          ; =0x8
	bl	__ZNSt3__119__libcpp_deallocateB9nqe210106IP6ObjectEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB9nqe210106IP6ObjectEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB9nqe210106IP6ObjectEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB9nqe210106IP6ObjectEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB9nqe210106IP6ObjectEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB9nqe210106IP6ObjectEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB9nqe210106IP6ObjectEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	lsl	x8, x8, #3
	str	x8, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	tbz	w0, #0, LBB136_2
	b	LBB136_1
LBB136_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	__ZdlPvSt11align_val_t
	b	LBB136_3
LBB136_2:
	ldur	x0, [x29, #-8]
	bl	__ZdlPv
	b	LBB136_3
LBB136_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em ; -- Begin function _ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	.globl	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	.weak_definition	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	.p2align	2
__ZNSt3__124__is_overaligned_for_newB9nqe210106Em: ; @_ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #16
	cset	w0, hi
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_ ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_
	.weak_definition	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.hs	LBB138_2
	b	LBB138_1
LBB138_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJS2_EEEvDpOT_
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	b	LBB138_3
LBB138_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_
	str	x0, [sp, #8]
	b	LBB138_3
LBB138_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	subs	x0, x8, #8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJS2_EEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJS2_EEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJS2_EEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJS2_EEEvDpOT_: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE30__emplace_back_assume_capacityB9nqe210106IJS2_EEEvDpOT_
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #24
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m
	ldr	x0, [sp, #32]
	bl	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp316:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE9constructB9nqe210106IS3_JS3_ELi0EEEvRS4_PT_DpOT0_
Ltmp317:
	b	LBB139_1
LBB139_1:
	add	x0, sp, #24
	ldr	x8, [sp, #32]
	add	x8, x8, #8
	str	x8, [sp, #32]
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB139_2:
Ltmp318:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	add	x0, sp, #24
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	b	LBB139_3
LBB139_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table139:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Lfunc_begin13-Lfunc_begin13    ; >> Call Site 1 <<
	.uleb128 Ltmp316-Lfunc_begin13          ;   Call between Lfunc_begin13 and Ltmp316
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp316-Lfunc_begin13          ; >> Call Site 2 <<
	.uleb128 Ltmp317-Ltmp316                ;   Call between Ltmp316 and Ltmp317
	.uleb128 Ltmp318-Lfunc_begin13          ;     jumps to Ltmp318
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp317-Lfunc_begin13          ; >> Call Site 3 <<
	.uleb128 Lfunc_end13-Ltmp317            ;   Call between Ltmp317 and Lfunc_end13
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end13:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_ ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_
	.weak_definition	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE11__recommendB9nqe210106Em
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x0, sp, #40
	add	x3, x8, #16
	bl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC1EmmS5_
	ldr	x0, [sp, #56]
	bl	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp319:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE9constructB9nqe210106IS3_JS3_ELi0EEEvRS4_PT_DpOT0_
Ltmp320:
	b	LBB140_1
LBB140_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #40
	ldr	x8, [sp, #56]
	add	x8, x8, #8
	str	x8, [sp, #56]
Ltmp321:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
Ltmp322:
	b	LBB140_2
LBB140_2:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB140_3:
Ltmp323:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED1Ev
	b	LBB140_4
LBB140_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table140:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Lfunc_begin14-Lfunc_begin14    ; >> Call Site 1 <<
	.uleb128 Ltmp319-Lfunc_begin14          ;   Call between Lfunc_begin14 and Ltmp319
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp319-Lfunc_begin14          ; >> Call Site 2 <<
	.uleb128 Ltmp322-Ltmp319                ;   Call between Ltmp319 and Ltmp322
	.uleb128 Ltmp323-Lfunc_begin14          ;     jumps to Ltmp323
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp322-Lfunc_begin14          ; >> Call Site 3 <<
	.uleb128 Lfunc_end14-Ltmp322            ;   Call between Ltmp322 and Lfunc_end14
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end14:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC1B9nqe210106ERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE9constructB9nqe210106IS3_JS3_ELi0EEEvRS4_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE9constructB9nqe210106IS3_JS3_ELi0EEEvRS4_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE9constructB9nqe210106IS3_JS3_ELi0EEEvRS4_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE9constructB9nqe210106IS3_JS3_ELi0EEEvRS4_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE9constructB9nqe210106IS3_JS3_ELi0EEEvRS4_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIP6ObjectE9constructB9nqe210106IS2_JS2_EEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD1B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionC2B9nqe210106ERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	str	x9, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	ldr	x10, [sp, #8]
	add	x9, x9, x10, lsl #3
	str	x9, [x8, #16]
	ldr	x0, [x8]
	ldr	x1, [sp, #8]
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em
	.globl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em: ; @_ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE19__annotate_increaseB9nqe210106Em
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	ldr	x12, [sp]                       ; 8-byte Folded Reload
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x10, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
Ltmp324:
	add	x1, x11, x12, lsl #3
	add	x8, x8, x10, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
Ltmp325:
	b	LBB145_1
LBB145_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB145_2:
Ltmp326:
	bl	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table145:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp324-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp325-Ltmp324                ;   Call between Ltmp324 and Ltmp325
	.uleb128 Ltmp326-Lfunc_begin15          ;     jumps to Ltmp326
	.byte	1                               ;   On action: 1
Lcst_end15:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__19allocatorIP6ObjectE9constructB9nqe210106IS2_JS2_EEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIP6ObjectE9constructB9nqe210106IS2_JS2_EEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIP6ObjectE9constructB9nqe210106IS2_JS2_EEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIP6ObjectE9constructB9nqe210106IS2_JS2_EEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIP6ObjectE9constructB9nqe210106IS2_JS2_EEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE21_ConstructTransactionD2B9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x9
	stur	x8, [x29, #-8]
	ldr	x8, [x9, #8]
	ldr	x10, [x9]
	str	x8, [x10, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB147_2
	b	LBB147_1
LBB147_1:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x9]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x1, x8, x9
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_shrinkB9nqe210106Em
	b	LBB147_2
LBB147_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE11__recommendB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE11__recommendB9nqe210106Em
	.globl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE11__recommendB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE11__recommendB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE11__recommendB9nqe210106Em: ; @_ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE11__recommendB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ls	LBB148_2
	b	LBB148_1
LBB148_1:
	bl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
LBB148_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2                         ; =0x2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	b.lo	LBB148_4
	b	LBB148_3
LBB148_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB148_5
LBB148_4:
	ldr	x9, [sp, #24]
	mov	x8, #2                          ; =0x2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB148_5
LBB148_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC1EmmS5_ ; -- Begin function _ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC1EmmS5_
	.globl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC1EmmS5_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC1EmmS5_
	.p2align	2
__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC1EmmS5_: ; @_ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC1EmmS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC2EmmS5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.weak_definition	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE17__annotate_deleteB9nqe210106Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldr	x10, [x8, #8]
	ldr	x11, [x8]
	subs	x10, x10, x11
	mov	x11, #8                         ; =0x8
	sdiv	x11, x10, x11
	mov	x10, #0                         ; =0x0
	subs	x10, x10, x11
	add	x9, x9, x10, lsl #3
	str	x9, [sp, #24]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8, #8]
	bl	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, x8, #16
	bl	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIP6ObjectEEPS3_EEvRT_T0_S8_S8_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	x8, [x0]
	str	x8, [x0, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB9nqe210106IPP6ObjectEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB9nqe210106IPP6ObjectEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #16
	add	x1, x8, #24
	bl	__ZNSt3__14swapB9nqe210106IPP6ObjectEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4sizeB9nqe210106Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED1Ev
	.globl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED1Ev: ; @_ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev
	.globl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev: ; @_ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8max_sizeB9nqe210106Ev
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp328:
	bl	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp329:
	b	LBB152_1
LBB152_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB152_2:
Ltmp330:
	bl	___clang_call_terminate
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table152:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp328-Lfunc_begin16          ; >> Call Site 1 <<
	.uleb128 Ltmp329-Ltmp328                ;   Call between Ltmp328 and Ltmp329
	.uleb128 Ltmp330-Lfunc_begin16          ;     jumps to Ltmp330
	.byte	1                               ;   On action: 1
Lcst_end16:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev ; -- Begin function _ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.globl	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.weak_definition	__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.p2align	2
__ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev: ; @_ZNSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE20__throw_length_errorB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.globl	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_: ; @_ZNSt3__13maxB9nqe210106ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.globl	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13minB9nqe210106ImEERKT_S3_S3_: ; @_ZNSt3__13minB9nqe210106ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__19allocatorIP6ObjectE8max_sizeB9nqe210106Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev ; -- Begin function _ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.globl	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.weak_definition	__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.p2align	2
__ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev: ; @_ZNSt3__114numeric_limitsIlE3maxB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13minB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB158_2
	b	LBB158_1
LBB158_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB158_3
LBB158_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB158_3
LBB158_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_ ; -- Begin function _ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.globl	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.weak_definition	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.p2align	2
__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_: ; @_ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w0, lo
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorIP6ObjectE8max_sizeB9nqe210106Ev ; -- Begin function _ZNKSt3__19allocatorIP6ObjectE8max_sizeB9nqe210106Ev
	.globl	__ZNKSt3__19allocatorIP6ObjectE8max_sizeB9nqe210106Ev
	.weak_definition	__ZNKSt3__19allocatorIP6ObjectE8max_sizeB9nqe210106Ev
	.p2align	2
__ZNKSt3__19allocatorIP6ObjectE8max_sizeB9nqe210106Ev: ; @_ZNKSt3__19allocatorIP6ObjectE8max_sizeB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #2305843009213693951        ; =0x1fffffffffffffff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev: ; @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #9223372036854775807        ; =0x7fffffffffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB9nqe210106EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.globl	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.weak_definition	__ZNSt3__120__throw_length_errorB9nqe210106EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB9nqe210106EPKc: ; @_ZNSt3__120__throw_length_errorB9nqe210106EPKc
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
Ltmp333:
	bl	__ZNSt12length_errorC1B9nqe210106EPKc
Ltmp334:
	b	LBB162_1
LBB162_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB162_2:
Ltmp335:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB162_3
LBB162_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table162:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Lfunc_begin17-Lfunc_begin17    ; >> Call Site 1 <<
	.uleb128 Ltmp333-Lfunc_begin17          ;   Call between Lfunc_begin17 and Ltmp333
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp333-Lfunc_begin17          ; >> Call Site 2 <<
	.uleb128 Ltmp334-Ltmp333                ;   Call between Ltmp333 and Ltmp334
	.uleb128 Ltmp335-Lfunc_begin17          ;     jumps to Ltmp335
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp334-Lfunc_begin17          ; >> Call Site 3 <<
	.uleb128 Lfunc_end17-Ltmp334            ;   Call between Ltmp334 and Lfunc_end17
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end17:
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
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt12length_errorC2B9nqe210106EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt12length_errorC2B9nqe210106EPKc ; -- Begin function _ZNSt12length_errorC2B9nqe210106EPKc
	.globl	__ZNSt12length_errorC2B9nqe210106EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC2B9nqe210106EPKc
	.p2align	2
__ZNSt12length_errorC2B9nqe210106EPKc:  ; @_ZNSt12length_errorC2B9nqe210106EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTVSt12length_error@GOTPAGE
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13maxB9nqe210106ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB9nqe210106ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB165_2
	b	LBB165_1
LBB165_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB165_3
LBB165_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB165_3
LBB165_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC2EmmS5_ ; -- Begin function _ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC2EmmS5_
	.globl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC2EmmS5_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC2EmmS5_
	.p2align	2
__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC2EmmS5_: ; @_ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEEC2EmmS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x9, [sp]                        ; 8-byte Folded Spill
	mov	x8, x9
	stur	x8, [x29, #-8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9, #24]
	ldr	x8, [sp, #24]
	str	x8, [x9, #32]
	ldur	x8, [x29, #-24]
	cbnz	x8, LBB166_2
	b	LBB166_1
LBB166_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB166_3
LBB166_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIP6ObjectEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	b	LBB166_3
LBB166_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	x10, [sp, #32]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #16]
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-24]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #24]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIP6ObjectEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m ; -- Begin function _ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIP6ObjectEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m
	.globl	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIP6ObjectEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIP6ObjectEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIP6ObjectEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m: ; @_ZNSt3__119__allocate_at_leastB9nqe210106INS_9allocatorIP6ObjectEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIP6ObjectE8allocateB9nqe210106Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIP6ObjectE8allocateB9nqe210106Em ; -- Begin function _ZNSt3__19allocatorIP6ObjectE8allocateB9nqe210106Em
	.globl	__ZNSt3__19allocatorIP6ObjectE8allocateB9nqe210106Em
	.weak_definition	__ZNSt3__19allocatorIP6ObjectE8allocateB9nqe210106Em
	.p2align	2
__ZNSt3__19allocatorIP6ObjectE8allocateB9nqe210106Em: ; @_ZNSt3__19allocatorIP6ObjectE8allocateB9nqe210106Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE8max_sizeB9nqe210106IS4_Li0EEEmRKS4_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB168_2
	b	LBB168_1
LBB168_1:
	bl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
LBB168_2:
	ldr	x0, [sp, #16]
	mov	x1, #8                          ; =0x8
	bl	__ZNSt3__117__libcpp_allocateB9nqe210106IP6ObjectEEPT_NS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB9nqe210106v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.globl	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.weak_definition	__ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB9nqe210106v: ; @_ZSt28__throw_bad_array_new_lengthB9nqe210106v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt20bad_array_new_lengthC1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB9nqe210106IP6ObjectEEPT_NS_15__element_countEm ; -- Begin function _ZNSt3__117__libcpp_allocateB9nqe210106IP6ObjectEEPT_NS_15__element_countEm
	.globl	__ZNSt3__117__libcpp_allocateB9nqe210106IP6ObjectEEPT_NS_15__element_countEm
	.weak_definition	__ZNSt3__117__libcpp_allocateB9nqe210106IP6ObjectEEPT_NS_15__element_countEm
	.p2align	2
__ZNSt3__117__libcpp_allocateB9nqe210106IP6ObjectEEPT_NS_15__element_countEm: ; @_ZNSt3__117__libcpp_allocateB9nqe210106IP6ObjectEEPT_NS_15__element_countEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	lsl	x8, x8, #3
	str	x8, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__is_overaligned_for_newB9nqe210106Em
	tbz	w0, #0, LBB170_2
	b	LBB170_1
LBB170_1:
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	__ZnwmSt11align_val_t
	stur	x0, [x29, #-8]
	b	LBB170_3
LBB170_2:
	ldr	x0, [sp]
	bl	__Znwm
	stur	x0, [x29, #-8]
	b	LBB170_3
LBB170_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIP6ObjectEEPS3_EEvRT_T0_S8_S8_ ; -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIP6ObjectEEPS3_EEvRT_T0_S8_S8_
	.globl	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIP6ObjectEEPS3_EEvRT_T0_S8_S8_
	.weak_definition	__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIP6ObjectEEPS3_EEvRT_T0_S8_S8_
	.p2align	2
__ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIP6ObjectEEPS3_EEvRT_T0_S8_S8_: ; @_ZNSt3__134__uninitialized_allocator_relocateB9nqe210106INS_9allocatorIP6ObjectEEPS3_EEvRT_T0_S8_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x9, x8, x9
	mov	x8, #8                          ; =0x8
	sdiv	x9, x9, x8
	mul	x2, x8, x9
	bl	_memcpy
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB9nqe210106IPP6ObjectEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_ ; -- Begin function _ZNSt3__14swapB9nqe210106IPP6ObjectEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.globl	__ZNSt3__14swapB9nqe210106IPP6ObjectEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.weak_definition	__ZNSt3__14swapB9nqe210106IPP6ObjectEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.p2align	2
__ZNSt3__14swapB9nqe210106IPP6ObjectEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_: ; @_ZNSt3__14swapB9nqe210106IPP6ObjectEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em ; -- Begin function _ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em
	.globl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em
	.weak_definition	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em
	.p2align	2
__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em: ; @_ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE14__annotate_newB9nqe210106Em
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE4dataB9nqe210106Ev
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
Ltmp337:
	add	x1, x10, x11, lsl #3
	add	x2, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIP6ObjectNS_9allocatorIS2_EEE31__annotate_contiguous_containerB9nqe210106EPKvS7_
Ltmp338:
	b	LBB173_1
LBB173_1:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB173_2:
Ltmp339:
	bl	___clang_call_terminate
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table173:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Ltmp337-Lfunc_begin18          ; >> Call Site 1 <<
	.uleb128 Ltmp338-Ltmp337                ;   Call between Ltmp337 and Ltmp338
	.uleb128 Ltmp339-Lfunc_begin18          ;     jumps to Ltmp339
	.byte	1                               ;   On action: 1
Lcst_end18:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED2Ev
	.globl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED2Ev: ; @_ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEED2Ev
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	cbz	x8, LBB174_3
	b	LBB174_1
LBB174_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x0, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp340:
	bl	__ZNKSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp341:
	b	LBB174_2
LBB174_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE10deallocateB9nqe210106ERS4_PS3_m
	b	LBB174_3
LBB174_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB174_4:
Ltmp342:
	bl	___clang_call_terminate
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table174:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Ltmp340-Lfunc_begin19          ; >> Call Site 1 <<
	.uleb128 Ltmp341-Ltmp340                ;   Call between Ltmp340 and Ltmp341
	.uleb128 Ltmp342-Lfunc_begin19          ;     jumps to Ltmp342
	.byte	1                               ;   On action: 1
Lcst_end19:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE5clearB9nqe210106Ev ; -- Begin function _ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.globl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.weak_definition	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.p2align	2
__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE5clearB9nqe210106Ev: ; @_ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE5clearB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE8capacityB9nqe210106Ev ; -- Begin function _ZNKSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.globl	__ZNKSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.weak_definition	__ZNKSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.p2align	2
__ZNKSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE8capacityB9nqe210106Ev: ; @_ZNKSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE8capacityB9nqe210106Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_ ; -- Begin function _ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_
	.globl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_
	.weak_definition	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_
	.p2align	2
__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_: ; @_ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIP6ObjectRNS_9allocatorIS2_EEE17__destruct_at_endB9nqe210106EPS2_NS_17integral_constantIbLb0EEE
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB178_1
LBB178_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB178_4
	b	LBB178_2
LBB178_2:                               ;   in Loop: Header=BB178_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #32]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #8
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB9nqe210106IP6ObjectEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp344:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP6ObjectEEE7destroyB9nqe210106IS3_Li0EEEvRS4_PT_
Ltmp345:
	b	LBB178_3
LBB178_3:                               ;   in Loop: Header=BB178_1 Depth=1
	b	LBB178_1
LBB178_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB178_5:
Ltmp346:
	bl	___clang_call_terminate
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table178:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Ltmp344-Lfunc_begin20          ; >> Call Site 1 <<
	.uleb128 Ltmp345-Ltmp344                ;   Call between Ltmp344 and Ltmp345
	.uleb128 Ltmp346-Lfunc_begin20          ;     jumps to Ltmp346
	.byte	1                               ;   On action: 1
Lcst_end20:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase10:
	.p2align	2, 0x0
                                        ; -- End function
	.private_extern	__ZTS8Material          ; @_ZTS8Material
	.section	__TEXT,__const
	.globl	__ZTS8Material
	.weak_definition	__ZTS8Material
__ZTS8Material:
	.asciz	"8Material"

	.private_extern	__ZTI8Material          ; @_ZTI8Material
	.section	__DATA,__const
	.globl	__ZTI8Material
	.weak_definition	__ZTI8Material
	.p2align	3, 0x0
__ZTI8Material:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS8Material-9223372036854775808

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"[Progress] "

l_.str.1:                               ; @.str.1
	.asciz	"%"

l_.str.2:                               ; @.str.2
	.asciz	"completed\n"

l_.str.3:                               ; @.str.3
	.asciz	"Usage: %s width height samples_per_pixel output_path max_depth render_mode(0=path tracing,1=MLT)\n"

l_.str.4:                               ; @.str.4
	.asciz	"Enter camera origin: (x,y,z)"

l_.str.5:                               ; @.str.5
	.asciz	"Enter camera lookat: (x,y,z)"

l_.str.6:                               ; @.str.6
	.asciz	"Enter camera v_up: (x,y,z)"

l_.str.7:                               ; @.str.7
	.asciz	"Enter camera v_fov: "

l_.str.8:                               ; @.str.8
	.asciz	"Rendering effect is being generated......"

l_.str.9:                               ; @.str.9
	.asciz	"Enter MLT iterations: "

l_.str.10:                              ; @.str.10
	.asciz	"Invalid render mode.Use 0 for normal render or 1 for MLT."

l_.str.11:                              ; @.str.11
	.asciz	"Render complete. Time taken: "

l_.str.12:                              ; @.str.12
	.asciz	" seconds."

l_.str.13:                              ; @.str.13
	.asciz	"Render complete.Please check the outputfile: "

.tbss __ZZ12randomDoublevE9generator$tlv$init, 2504, 3 ; @_ZZ12randomDoublevE9generator

	.section	__DATA,__thread_vars,thread_local_variables
	.globl	__ZZ12randomDoublevE9generator
	.weak_definition	__ZZ12randomDoublevE9generator
__ZZ12randomDoublevE9generator:
	.quad	__tlv_bootstrap
	.quad	0
	.quad	__ZZ12randomDoublevE9generator$tlv$init

.tbss __ZGVZ12randomDoublevE9generator$tlv$init, 8, 3 ; @_ZGVZ12randomDoublevE9generator

	.globl	__ZGVZ12randomDoublevE9generator
	.weak_definition	__ZGVZ12randomDoublevE9generator
__ZGVZ12randomDoublevE9generator:
	.quad	__tlv_bootstrap
	.quad	0
	.quad	__ZGVZ12randomDoublevE9generator$tlv$init

.tbss __ZZ12randomDoublevE4dist$tlv$init, 16, 3 ; @_ZZ12randomDoublevE4dist

	.globl	__ZZ12randomDoublevE4dist
	.weak_definition	__ZZ12randomDoublevE4dist
__ZZ12randomDoublevE4dist:
	.quad	__tlv_bootstrap
	.quad	0
	.quad	__ZZ12randomDoublevE4dist$tlv$init

.tbss __ZGVZ12randomDoublevE4dist$tlv$init, 8, 3 ; @_ZGVZ12randomDoublevE4dist

	.globl	__ZGVZ12randomDoublevE4dist
	.weak_definition	__ZGVZ12randomDoublevE4dist
__ZGVZ12randomDoublevE4dist:
	.quad	__tlv_bootstrap
	.quad	0
	.quad	__ZGVZ12randomDoublevE4dist$tlv$init

	.section	__TEXT,__cstring,cstring_literals
l_.str.14:                              ; @.str.14
	.asciz	"/dev/urandom"

	.section	__DATA,__const
	.globl	__ZTV8Material                  ; @_ZTV8Material
	.weak_def_can_be_hidden	__ZTV8Material
	.p2align	3, 0x0
__ZTV8Material:
	.quad	0
	.quad	__ZTI8Material
	.quad	___cxa_pure_virtual
	.quad	__ZN8MaterialD1Ev
	.quad	__ZN8MaterialD0Ev

	.globl	__ZTV6Object                    ; @_ZTV6Object
	.weak_def_can_be_hidden	__ZTV6Object
	.p2align	3, 0x0
__ZTV6Object:
	.quad	0
	.quad	__ZTI6Object
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	__ZN6ObjectD1Ev
	.quad	__ZN6ObjectD0Ev

	.private_extern	__ZTS6Object            ; @_ZTS6Object
	.section	__TEXT,__const
	.globl	__ZTS6Object
	.weak_definition	__ZTS6Object
__ZTS6Object:
	.asciz	"6Object"

	.private_extern	__ZTI6Object            ; @_ZTI6Object
	.section	__DATA,__const
	.globl	__ZTI6Object
	.weak_definition	__ZTI6Object
	.p2align	3, 0x0
__ZTI6Object:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS6Object-9223372036854775808

	.section	__TEXT,__cstring,cstring_literals
l_.str.15:                              ; @.str.15
	.asciz	"vector"

.subsections_via_symbols
