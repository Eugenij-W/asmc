include time.inc

    .code

main proc

  local ltime

    mov ltime,0x55C9D859
    localtime(&ltime)

    .assert [rax].tm.tm_sec  == 21
    .assert [rax].tm.tm_min  == 11
    .assert [rax].tm.tm_hour == 13
    .assert [rax].tm.tm_mday == 11
    .assert [rax].tm.tm_mon  == 7
    .assert [rax].tm.tm_year == 115
    .assert [rax].tm.tm_wday == 2
    .assert [rax].tm.tm_yday == 222
    .assert [rax].tm.tm_isdst == 1

    mov ltime,0x55C9D859
    gmtime(&ltime)

    .assert [rax].tm.tm_sec  == 21
    .assert [rax].tm.tm_min  == 11
    .assert [rax].tm.tm_hour == 11
    .assert [rax].tm.tm_mday == 11
    .assert [rax].tm.tm_mon  == 7
    .assert [rax].tm.tm_year == 115
    .assert [rax].tm.tm_wday == 2
    .assert [rax].tm.tm_yday == 222
    .assert [rax].tm.tm_isdst == 0

    xor eax,eax
    ret

main endp

    END
