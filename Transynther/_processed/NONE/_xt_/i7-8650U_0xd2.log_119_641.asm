.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x320e, %r9
nop
nop
nop
nop
xor %r14, %r14
mov (%r9), %rsi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xe9bc, %r12
nop
nop
nop
nop
nop
sub $13419, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
cmp $41414, %r12
lea addresses_normal_ht+0x1dfbc, %rdx
dec %r12
movups (%rdx), %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0x7bc, %rbx
clflush (%rbx)
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
and $30230, %r12
lea addresses_WT_ht+0xfdbc, %rsi
lea addresses_UC_ht+0x1c7bc, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $62, %rcx
rep movsb
lfence
lea addresses_D_ht+0x93e4, %rsi
lea addresses_WT_ht+0xedbc, %rdi
nop
nop
cmp %r14, %r14
mov $89, %rcx
rep movsb
nop
nop
nop
nop
and $42283, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_PSE+0xfbc, %rdx
nop
sub $24306, %r10
mov (%rdx), %r11d
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'33': 119}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
