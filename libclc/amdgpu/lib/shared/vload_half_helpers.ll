;;===----------------------------------------------------------------------===;;
;
; Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
; See https://llvm.org/LICENSE.txt for license information.
; SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
;
;;===----------------------------------------------------------------------===;;

define float @__clc_vload_half_float_helper__private(half addrspace(0)* nocapture %ptr) nounwind alwaysinline {
  %data = load half, half addrspace(0)* %ptr
  %res = fpext half %data to float
  ret float %res
}

define float @__clc_vload_half_float_helper__global(half addrspace(1)* nocapture %ptr) nounwind alwaysinline {
  %data = load half, half addrspace(1)* %ptr
  %res = fpext half %data to float
  ret float %res
}

define float @__clc_vload_half_float_helper__local(half addrspace(3)* nocapture %ptr) nounwind alwaysinline {
  %data = load half, half addrspace(3)* %ptr
  %res = fpext half %data to float
  ret float %res
}

define float @__clc_vload_half_float_helper__constant(half addrspace(2)* nocapture %ptr) nounwind alwaysinline {
  %data = load half, half addrspace(2)* %ptr
  %res = fpext half %data to float
  ret float %res
}
