.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// Load
lea addresses_normal+0xdc83, %r14
nop
nop
nop
nop
sub %rsi, %rsi
movb (%r14), %cl
nop
add $11154, %r12

// REPMOV
lea addresses_A+0x3e23, %rsi
lea addresses_WT+0x15123, %rdi
nop
nop
sub $14954, %r14
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_D+0x5323, %rcx
nop
inc %r14
movw $0x5152, (%rcx)
nop
and $47350, %r14

// Store
lea addresses_WT+0x15123, %r14
nop
nop
add $13920, %rdi
movl $0x51525354, (%r14)
nop
nop
cmp $52527, %rcx

// Store
lea addresses_A+0x12d63, %r11
nop
cmp $36893, %r8
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_WT+0x15123, %r12
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r12), %r14w
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/