.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rsi
lea addresses_A_ht+0xaac, %r9
nop
nop
nop
nop
sub $2104, %r11
mov (%r9), %r8
xor %r12, %r12
lea addresses_WC_ht+0x1bbf5, %rsi
nop
nop
sub $18273, %rbp
mov (%rsi), %r8
add $45609, %r12
lea addresses_A_ht+0x62e4, %r8
clflush (%r8)
nop
nop
cmp $7542, %r10
movb (%r8), %r9b
nop
sub $14164, %r9
lea addresses_WT_ht+0x1519c, %r11
add %r12, %r12
movups (%r11), %xmm4
vpextrq $0, %xmm4, %rbp
nop
add $36001, %r9
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rdx

// Faulty Load
lea addresses_D+0xb0e4, %rax
nop
mfence
movaps (%rax), %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 960, '49': 774}
00 00 00 00 49 49 49 49 49 49 49 00 00 00 49 49 00 00 00 00 49 49 49 49 49 49 49 00 49 49 00 00 49 49 49 49 49 00 49 49 49 49 49 00 00 49 00 00 49 00 00 00 49 49 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 49 49 49 00 00 00 00 49 49 49 49 49 00 00 49 49 49 49 00 49 49 00 49 49 49 49 00 00 49 00 00 00 00 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 00 49 00 00 49 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 00 00 00 49 00 00 49 49 00 49 49 49 49 49 49 49 49 49 49 00 49 00 00 00 00 00 49 00 49 49 49 00 49 00 49 00 49 00 00 00 49 49 49 49 49 00 49 49 49 49 00 00 49 49 00 49 49 49 49 00 49 49 49 49 49 49 49 49 00 00 49 49 49 49 00 49 49 00 00 00 00 00 00 49 00 00 00 49 00 00 49 49 00 00 49 00 00 49 00 49 00 00 00 49 00 49 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 00 49 49 49 49 00 00 00 49 00 49 49 00 49 49 00 00 49 00 49 00 49 49 49 49 49 49 49 49 00 00 49 00 49 00 00 00 00 49 49 49 00 00 49 49 49 49 49 49 49 00 49 49 49 49 00 49 00 00 00 00 00 00 00 00 00 49 49 49 49 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 00 00 00 00 00 00 00 49 49 49 49 00 00 00 00 49 00 49 00 00 00 49 49 49 49 49 49 49 49 49 00 00 00 00 00 49 49 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 49 49 49 00 49 00 00 00 00 00 00 49 49 49 49 00 49 00 00 49 00 00 00 00 49 49 49 00 00 00 00 00 00 00 49 49 00 49 49 00 00 00 49 00 00 00 00 00 00 49 49 49 49 49 49 49 00 00 00 00 00 00 00 00 49 49 49 49 49 00 00 00 00 00 00 00 49 49 49 00 49 49 49 49 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 49 00 49 49 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 49 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 49 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 00 49 49 49 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 49 00 00 00 00 00 00 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 49 49 49 49 49 49 00 00 00 49 49 00 49 49 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 49 49 49 49 49 00 00 49 49 49 49 49 00 00 49 49 49 49 49 49 49 00 00 49 00 49 00 00 49 00 00 49 49 49 49 49 49 49 49 49 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 00 00 49 00 49 49 49 00 00 00 00 49 49 49 49 49 00 49 49 49 49 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 49 49 00 00 00 00 49 00 49 49 49 49 49 49 49 00 49 00 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 49 00 00 00 00 00 49 49 49 49 49 49 49 00 49 49 49 00 00 49 00 49 49 49 49 49 49 49 00 00 00 00 00 00 00 49 49 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 49 49 49 49 49 00 00 00 00 00 00 49 00 49 00 00 00 49 49 49 00 00 00 00 49
*/
