.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x15cc2, %rsi
lea addresses_D_ht+0xdcc2, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $11, %rcx
rep movsl
nop
and $44179, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WT+0x1df56, %rbp
nop
nop
nop
and $49937, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbp)
nop
sub %rax, %rax

// Store
lea addresses_D+0xa792, %r8
clflush (%r8)
nop
nop
xor %r12, %r12
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Faulty Load
lea addresses_D+0xf182, %r8
clflush (%r8)
sub %rsi, %rsi
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
