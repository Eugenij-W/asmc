; XMVECTORROUND.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;
include DirectXMath.inc

    .code

    option win64:rsp nosave noauto

XMVectorRound proc XM_CALLCONV V:FXMVECTOR

    inl_XMVectorRound(xmm0)
    ret

XMVectorRound endp

    end
