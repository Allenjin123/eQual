; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:32:32:32-a:0-n16:32-i64:64:64-i32:32:32-i16:16:16-i1:8:8-f32:32:32-f64:64:64-v32:32:32-v64:64:64-v512:512:512-v1024:1024:1024-v2048:2048:2048"
target triple = "hexagon"

%"class.std::__1::ios_base::Init" = type { i8 }
%"class.std::__1::basic_ostream" = type { ptr, %"class.std::__1::basic_ios" }
%"class.std::__1::basic_ios" = type { %"class.std::__1::ios_base", ptr, %struct.anon.3 }
%"class.std::__1::ios_base" = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.anon.3 = type { i32 }
%"class.std::__1::locale::id" = type { %struct.anon.3, i32 }
%struct.compute_res_attr_t = type { [20 x i64] }
%struct.compute_res_vtcm_page_t = type { i32, i32, [8 x %struct.compute_res_vtcm_page_def_t] }
%struct.compute_res_vtcm_page_def_t = type { i32, i32 }
%"class.std::__1::basic_ostringstream" = type { %"class.std::__1::basic_ostream.base", %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_ios" }
%"class.std::__1::basic_ostream.base" = type { ptr }
%"class.std::__1::basic_stringbuf" = type { %"class.std::__1::basic_streambuf", %"class.std::__1::basic_string", ptr, i32 }
%"class.std::__1::basic_streambuf" = type { ptr, %"class.std::__1::basic_ostream.base", ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.1" }
%"class.std::__1::__compressed_pair.1" = type { %"struct.std::__1::__compressed_pair_elem.2" }
%"struct.std::__1::__compressed_pair_elem.2" = type { %"union.std::__1::basic_string<char>::__rep" }
%"union.std::__1::basic_string<char>::__rep" = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.3, i32, ptr }
%"struct.std::__1::pair" = type { ptr, i32 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.10" }
%"class.std::__1::__compressed_pair.10" = type { %"class.std::__1::basic_ostream.base", %"class.std::__1::basic_ostream.base" }
%struct.HAP_power_request_t = type { i8, %union.anon }
%union.anon = type { %struct.HAP_power_vapss_payload }
%struct.HAP_power_vapss_payload = type { i8, i32, i8, %struct.HAP_power_bus_bw, %struct.HAP_power_bus_bw, %struct.HAP_power_bus_bw, %struct.HAP_power_bus_bw }
%struct.HAP_power_bus_bw = type { i8, i64, i16 }
%"class.std::__1::unique_ptr.40" = type { %"class.std::__1::__compressed_pair.41" }
%"class.std::__1::__compressed_pair.41" = type { %"class.std::__1::basic_ostream.base" }
%"struct.std::__1::pair.11" = type { ptr, %"class.std::__1::unique_ptr.40" }
%"class.std::__1::unique_ptr.61" = type { %"class.std::__1::__compressed_pair.62" }
%"class.std::__1::__compressed_pair.62" = type { %"class.std::__1::basic_ostream.base", %"struct.std::__1::__compressed_pair_elem.64" }
%"struct.std::__1::__compressed_pair_elem.64" = type { %"class.std::__1::__hash_node_destructor" }
%"class.std::__1::__hash_node_destructor" = type <{ ptr, i8, [3 x i8] }>
%"class.std::__1::vector.30" = type { ptr, ptr, %"class.std::__1::__compressed_pair.41" }
%struct.MemoryCopy = type { ptr, ptr, i32 }
%struct.BufferSet = type { ptr, i32, i32 }

$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev = comdat any

$_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j = comdat any

$_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE = comdat any

$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = comdat any

$_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE20__throw_length_errorB8ne190000Ev = comdat any

$_ZSt28__throw_bad_array_new_lengthB8ne190000v = comdat any

$_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEED2B8ne190000Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne190000EPKc = comdat any

$_ZNSt12length_errorC2B8ne190000EPKc = comdat any

$_ZNSt3__14endlB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ = comdat any

$_ZNSt3__116__pad_and_outputB8ne190000IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000Ejc = comdat any

$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190000Ev = comdat any

$_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE7emplaceIJS3_EEENS_11__wrap_iterIPS3_EENS8_IPKS3_EEDpOT_ = comdat any

$_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE12emplace_backIJS3_EEEvDpOT_ = comdat any

$_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEED2Ev = comdat any

$_ZN10HexagonAPIC2Ev = comdat any

$_ZN10HexagonAPI16AcquireResourcesEv = comdat any

$_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEED2B8ne190000Ev = comdat any

$_ZNKSt3__114default_deleteI13BufferManagerEclB8ne190000EPS1_ = comdat any

$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_S2_EEEE = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000ILi0EEEPKc = comdat any

$_ZN13BufferManager21AllocateHexagonBufferIJRjjRbEEEPvDpOT_ = comdat any

$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE25__emplace_unique_key_argsIS2_JNS_4pairIKS2_S7_EEEEENSL_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEEbEERKT_DpOT0_ = comdat any

$_ZNSt3__14pairIKPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEED2Ev = comdat any

$_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev = comdat any

$_ZNKSt3__121__murmur2_or_cityhashIjLj32EEclB8ne190000EPKvj = comdat any

$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE8__rehashILb1EEEvj = comdat any

$_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS6_EEEEEES4_EEEEEclB8ne190000EPSB_ = comdat any

$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE11__do_rehashILb1EEEvj = comdat any

$_ZN13BufferManager21AllocateHexagonBufferIJRjS1_jRbEEEPvDpOT_ = comdat any

$_ZN13BufferManager17FreeHexagonBufferEPv = comdat any

$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE4findIS2_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEERKT_ = comdat any

$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE6removeENS_21__hash_const_iteratorIPNS_11__hash_nodeIS8_S2_EEEE = comdat any

$_ZN13BufferManager4CopyEPvS0_j = comdat any

$_ZN13DDRAllocationC2Ejj = comdat any

$_ZN13DDRAllocationD2Ev = comdat any

$_ZN13DDRAllocationD0Ev = comdat any

$_ZN14VTCMAllocationC2Ejj = comdat any

$_ZN10HexagonAPI11getVtcmPoolEv = comdat any

$_ZN14VTCMAllocationD2Ev = comdat any

$_ZN14VTCMAllocationD0Ev = comdat any

$_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev = comdat any

$_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE9push_backB8ne190000EOS5_ = comdat any

$_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE16__destroy_vectorclB8ne190000Ev = comdat any

$_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne190000Ev = comdat any

$_ZNKSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE20__throw_length_errorB8ne190000Ev = comdat any

$_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev = comdat any

$_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev = comdat any

$_ZTV13DDRAllocation = comdat any

$_ZTS13DDRAllocation = comdat any

$_ZTS10Allocation = comdat any

$_ZTI10Allocation = comdat any

$_ZTI13DDRAllocation = comdat any

$_ZTV14VTCMAllocation = comdat any

$_ZTS14VTCMAllocation = comdat any

$_ZTI14VTCMAllocation = comdat any

@llvm.global_ctors = appending global [4 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_VTCMPool.cpp, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_HexagonAPI.cpp, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_HexagonCAPI.cpp, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_HexagonBuffer.cpp, ptr null }]
@_ZL9_Ios_init = internal global %"class.std::__1::ios_base::Init" zeroinitializer, align 1
@.str = private unnamed_addr constant [101 x i8] c"/home/allenjin/Projects/qualcomm-mlir/hexagon-mlir/qcom_hexagon_backend/bin/runtime/src/VTCMPool.cpp\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"ERROR: HAP_compute_res_attr_init(&resInfo) failed with error %d.\00", align 1
@.str.2 = private unnamed_addr constant [134 x i8] c"ERROR: compute_resource_query_VTCM( 0, &vtcmDeviceSize_, &totalBlockLayout, &availBlockSize, &availBlockLayout) failed with error %d.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\22Less than 1MB VTCM available\22\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"(availBlockSize >= (1024 * 1024))\00", align 1
@.str.5 = private unnamed_addr constant [122 x i8] c"ERROR: HAP_compute_res_attr_set_vtcm_param_v2( &resInfo, vtcmDeviceSize_, pageSize, availBlockSize) failed with error %d.\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"\22HAP_compute_res_acquire failed to acquire requested VTCM resource\22\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"(contextId_)\00", align 1
@.str.8 = private unnamed_addr constant [109 x i8] c"ERROR: HAP_compute_res_attr_get_vtcm_ptr_v2(&resInfo, &vtcmData_, &vtcmAllocatedSize_) failed with error %d.\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"\22HAP_compute_res_acquire returned nullptr when allocating VTCM\22\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"(vtcmData_ != nullptr)\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"\22HAP_compute_res_acquire failed to allocate minimum amount of VTCM\22\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"(vtcmAllocatedSize_ >= availBlockSize)\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"ERROR: HAP_compute_res_release(contextId_) failed with error %d.\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"\22No free VTCM\22\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"(!free_.empty())\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"\22Minimum VTCM alloation must be 128 bytes - nbytes \22 << nbytes\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"(nbytes >= 0x80)\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"\22Not enough contiguous VTCM space at the end to allocate\22\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"(lastFreeEntry->second >= nbytes)\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"\22Not enough contiguous VTCM space to allocate\22\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"(entryToAllocate->second >= nbytes)\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"\22Attempted to free a pointer that had not been allocated\22\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"(it != allocations_.end())\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"\22Attempted to free a different size than was allocated\22\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"(it->second == nbytes)\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"\22Attempting to free a pointer that was already free\22\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"(ptrToFree != it->first)\00", align 1
@.str.28 = private unnamed_addr constant [68 x i8] c"\22free_ is in an inconsistent state, freed block overlaps with next\22\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"(ptrToFree + nbytes <= it->first)\00", align 1
@.str.30 = private unnamed_addr constant [75 x i8] c"\22free_ is in an inconsistent state, freed block overlaps with \22 \22previous\22\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"(it_prev->first + it_prev->second <= ptrToFree)\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c" failed at \00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZL9_Ios_init.2 = internal global %"class.std::__1::ios_base::Init" zeroinitializer, align 1
@_ZZN10HexagonAPI6GlobalEvE4inst = internal unnamed_addr global ptr null, align 4
@_ZGVZN10HexagonAPI6GlobalEvE4inst = internal global i64 0, section ".bss._ZGVZN10HexagonAPI6GlobalEvE4inst", align 8
@.str.38 = private unnamed_addr constant [103 x i8] c"/home/allenjin/Projects/qualcomm-mlir/hexagon-mlir/qcom_hexagon_backend/bin/runtime/src/HexagonAPI.cpp\00", align 1
@.str.1.39 = private unnamed_addr constant [85 x i8] c"HMX resource allocation failed at HAP_power_set_HMX request with the return value %d\00", align 1
@.str.2.40 = private unnamed_addr constant [32 x i8] c"\22Free called outside a session\22\00", align 1
@.str.3.41 = private unnamed_addr constant [8 x i8] c"(false)\00", align 1
@.str.4.4 = private unnamed_addr constant [23 x i8] c"runtimeVtcm != nullptr\00", align 1
@.str.5.5 = private unnamed_addr constant [105 x i8] c"/home/allenjin/Projects/qualcomm-mlir/hexagon-mlir/qcom_hexagon_backend/bin/runtime/include/HexagonAPI.h\00", align 1
@.str.6.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7.6 = private unnamed_addr constant [25 x i8] c"bufferManager != nullptr\00", align 1
@.str.9.42 = private unnamed_addr constant [59 x i8] c"\22Attempt made to free unknown or already freed allocation\22\00", align 1
@.str.10.43 = private unnamed_addr constant [25 x i8] c"(it != bufferMap_.end())\00", align 1
@.str.11.44 = private unnamed_addr constant [108 x i8] c"/home/allenjin/Projects/qualcomm-mlir/hexagon-mlir/qcom_hexagon_backend/bin/runtime/include/BufferManager.h\00", align 1
@.str.12.45 = private unnamed_addr constant [22 x i8] c"it->second != nullptr\00", align 1
@.str.17.46 = private unnamed_addr constant [48 x i8] c"\22One of the src/dst should be a hexagon buffer\22\00", align 1
@_ZL9_Ios_init.48 = internal global %"class.std::__1::ios_base::Init" zeroinitializer, align 1
@_ZL9_Ios_init.56 = internal global %"class.std::__1::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str.2.59 = private unnamed_addr constant [106 x i8] c"/home/allenjin/Projects/qualcomm-mlir/hexagon-mlir/qcom_hexagon_backend/bin/runtime/src/HexagonBuffer.cpp\00", align 1
@.str.4.70 = private unnamed_addr constant [79 x i8] c"\22Internal failure, allocations_ should be set \22 \22in HexagonBuffer constructor\22\00", align 1
@.str.5.71 = private unnamed_addr constant [22 x i8] c"(allocations_.size())\00", align 1
@.str.6.72 = private unnamed_addr constant [44 x i8] c"\22HexagonBuffer should be either 1-d or 2-d\22\00", align 1
@.str.7.73 = private unnamed_addr constant [31 x i8] c"((ndim_ == 1) || (ndim_ == 2))\00", align 1
@.str.8.74 = private unnamed_addr constant [25 x i8] c"allocations_.size() != 1\00", align 1
@.str.9.57 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10.75 = private unnamed_addr constant [32 x i8] c"bytesToCopy <= src.TotalBytes()\00", align 1
@.str.11.76 = private unnamed_addr constant [33 x i8] c"bytesToCopy <= dest.TotalBytes()\00", align 1
@_ZNSt3__14cerrE = external global %"class.std::__1::basic_ostream", align 4
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 4
@_ZTISt20bad_array_new_length = external constant ptr
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 4
@_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 4
@_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant [4 x ptr], align 4
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant { [16 x ptr] }, align 4
@_ZTV13DDRAllocation = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13DDRAllocation, ptr @_ZN13DDRAllocationD2Ev, ptr @_ZN13DDRAllocationD0Ev] }, comdat, align 4
@.str.17.58 = private unnamed_addr constant [9 x i8] c"ret != 0\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13DDRAllocation = linkonce_odr hidden constant [16 x i8] c"13DDRAllocation\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS10Allocation = linkonce_odr hidden constant [13 x i8] c"10Allocation\00", comdat, align 1
@_ZTI10Allocation = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i32 2), ptr @_ZTS10Allocation }, comdat, align 4
@_ZTI13DDRAllocation = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2), ptr @_ZTS13DDRAllocation, ptr @_ZTI10Allocation }, comdat, align 4
@_ZTV14VTCMAllocation = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI14VTCMAllocation, ptr @_ZN14VTCMAllocationD2Ev, ptr @_ZN14VTCMAllocationD0Ev] }, comdat, align 4
@.str.18.60 = private unnamed_addr constant [60 x i8] c"\22VTCMAllocation called for invalid alignment \22 << alignment\00", align 1
@.str.19.61 = private unnamed_addr constant [46 x i8] c"((alignment <= 0x80) || (alignment == 0x800))\00", align 1
@.str.20.62 = private unnamed_addr constant [22 x i8] c"\22VTCM not acquired\\n\22\00", align 1
@.str.21.63 = private unnamed_addr constant [36 x i8] c"HexagonAPI::Global()->getVtcmPool()\00", align 1
@_ZTS14VTCMAllocation = linkonce_odr hidden constant [17 x i8] c"14VTCMAllocation\00", comdat, align 1
@_ZTI14VTCMAllocation = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2), ptr @_ZTS14VTCMAllocation, ptr @_ZTI10Allocation }, comdat, align 4
@.str.22.64 = private unnamed_addr constant [35 x i8] c"\22runtimeVtcm has not been created\22\00", align 1
@.str.23.65 = private unnamed_addr constant [14 x i8] c"(runtimeVtcm)\00", align 1
@.str.24.66 = private unnamed_addr constant [105 x i8] c"/home/allenjin/Projects/qualcomm-mlir/hexagon-mlir/qcom_hexagon_backend/bin/runtime/include/HexagonAPI.h\00", align 1
@.str.25.67 = private unnamed_addr constant [7 x i8] c"vector\00", align 1

@_ZN8VtcmPoolC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN8VtcmPoolC2Ev
@_ZN8VtcmPoolD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN8VtcmPoolD2Ev
@_ZN13HexagonBufferC1Ejjb = hidden unnamed_addr alias void (ptr, i32, i32, i1), ptr @_ZN13HexagonBufferC2Ejjb
@_ZN13HexagonBufferC1Ejjjb = hidden unnamed_addr alias void (ptr, i32, i32, i32, i1), ptr @_ZN13HexagonBufferC2Ejjjb
@_ZN13HexagonBufferD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN13HexagonBufferD2Ev

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #0

declare ptr @malloc(i64) local_unnamed_addr #1

define void @hexkl_linalg_matmul(i64 %0, ptr readonly captures(none) %1, i64 %2, ptr readonly captures(none) %3, i64 %4, ptr readonly captures(none) %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) local_unnamed_addr #1 {
  %13 = getelementptr i8, ptr %5, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %1, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %3, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = tail call ptr @hexagon_runtime_alloc_1d(i32 65536, i64 128, i1 true)
  tail call void @hexagon_runtime_copy(ptr %19, ptr %18, i32 65536, i1 true, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(2097152) %14, i8 0, i32 2097152, i1 false)
  %20 = tail call ptr @hexagon_runtime_alloc_1d(i32 65536, i64 128, i1 true)
  %21 = tail call ptr @hexagon_runtime_alloc_1d(i32 1048576, i64 128, i1 true)
  %22 = tail call ptr @malloc(i64 68)
  %23 = ptrtoint ptr %22 to i32
  %24 = add i32 %23, 63
  %25 = and i32 %24, -64
  %26 = inttoptr i32 %25 to ptr
  tail call void @hexagon_runtime_copy(ptr %20, ptr %16, i32 65536, i1 true, i1 false)
  tail call void @hexagon_runtime_copy(ptr %21, ptr nonnull %14, i32 1048576, i1 true, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %12, %142
  %27 = phi i64 [ 0, %12 ], [ %143, %142 ]
  %28 = shl nuw nsw i64 %27, 6
  %29 = shl nuw nsw i64 %27, 9
  %30 = trunc nuw nsw i64 %29 to i32
  %31 = getelementptr float, ptr %21, i32 %30
  %32 = trunc nuw nsw i64 %29 to i32
  %33 = getelementptr float, ptr %21, i32 %32
  %34 = getelementptr i8, ptr %33, i32 256
  %35 = trunc nuw nsw i64 %29 to i32
  %36 = getelementptr float, ptr %21, i32 %35
  %37 = getelementptr i8, ptr %36, i32 512
  %38 = trunc nuw nsw i64 %29 to i32
  %39 = getelementptr float, ptr %21, i32 %38
  %40 = getelementptr i8, ptr %39, i32 768
  %41 = trunc nuw nsw i64 %29 to i32
  %42 = getelementptr float, ptr %21, i32 %41
  %43 = getelementptr i8, ptr %42, i32 1024
  %44 = trunc nuw nsw i64 %29 to i32
  %45 = getelementptr float, ptr %21, i32 %44
  %46 = getelementptr i8, ptr %45, i32 1280
  %47 = trunc nuw nsw i64 %29 to i32
  %48 = getelementptr float, ptr %21, i32 %47
  %49 = getelementptr i8, ptr %48, i32 1536
  %50 = trunc nuw nsw i64 %29 to i32
  %51 = getelementptr float, ptr %21, i32 %50
  %52 = getelementptr i8, ptr %51, i32 1792
  br label %53

53:                                               ; preds = %.preheader, %53
  %54 = phi i64 [ 0, %.preheader ], [ %140, %53 ]
  %55 = add nuw nsw i64 %54, %28
  %56 = trunc nuw nsw i64 %55 to i32
  %57 = getelementptr half, ptr %20, i32 %56
  %58 = load half, ptr %57, align 2
  %59 = fpext half %58 to float
  store float %59, ptr %26, align 64
  %60 = shl nuw nsw i64 %54, 9
  %61 = trunc nuw nsw i64 %60 to i32
  %62 = getelementptr half, ptr %19, i32 %61
  %63 = load <64 x half>, ptr %62, align 2
  %64 = load <64 x float>, ptr %31, align 4
  %65 = insertelement <1 x float> poison, float %59, i64 0
  %66 = shufflevector <1 x float> %65, <1 x float> poison, <64 x i32> zeroinitializer
  %67 = fpext <64 x half> %63 to <64 x float>
  %68 = fmul fast <64 x float> %66, %67
  %69 = fadd fast <64 x float> %68, %64
  store <64 x float> %69, ptr %31, align 4
  %70 = trunc nuw nsw i64 %60 to i32
  %71 = getelementptr half, ptr %19, i32 %70
  %72 = getelementptr i8, ptr %71, i32 128
  %73 = load <64 x half>, ptr %72, align 2
  %74 = load <64 x float>, ptr %34, align 4
  %75 = load <1 x float>, ptr %26, align 64
  %76 = shufflevector <1 x float> %75, <1 x float> poison, <64 x i32> zeroinitializer
  %77 = fpext <64 x half> %73 to <64 x float>
  %78 = fmul fast <64 x float> %76, %77
  %79 = fadd fast <64 x float> %78, %74
  store <64 x float> %79, ptr %34, align 4
  %80 = trunc nuw nsw i64 %60 to i32
  %81 = getelementptr half, ptr %19, i32 %80
  %82 = getelementptr i8, ptr %81, i32 256
  %83 = load <64 x half>, ptr %82, align 2
  %84 = load <64 x float>, ptr %37, align 4
  %85 = load <1 x float>, ptr %26, align 64
  %86 = shufflevector <1 x float> %85, <1 x float> poison, <64 x i32> zeroinitializer
  %87 = fpext <64 x half> %83 to <64 x float>
  %88 = fmul fast <64 x float> %86, %87
  %89 = fadd fast <64 x float> %88, %84
  store <64 x float> %89, ptr %37, align 4
  %90 = trunc nuw nsw i64 %60 to i32
  %91 = getelementptr half, ptr %19, i32 %90
  %92 = getelementptr i8, ptr %91, i32 384
  %93 = load <64 x half>, ptr %92, align 2
  %94 = load <64 x float>, ptr %40, align 4
  %95 = load <1 x float>, ptr %26, align 64
  %96 = shufflevector <1 x float> %95, <1 x float> poison, <64 x i32> zeroinitializer
  %97 = fpext <64 x half> %93 to <64 x float>
  %98 = fmul fast <64 x float> %96, %97
  %99 = fadd fast <64 x float> %98, %94
  store <64 x float> %99, ptr %40, align 4
  %100 = trunc nuw nsw i64 %60 to i32
  %101 = getelementptr half, ptr %19, i32 %100
  %102 = getelementptr i8, ptr %101, i32 512
  %103 = load <64 x half>, ptr %102, align 2
  %104 = load <64 x float>, ptr %43, align 4
  %105 = load <1 x float>, ptr %26, align 64
  %106 = shufflevector <1 x float> %105, <1 x float> poison, <64 x i32> zeroinitializer
  %107 = fpext <64 x half> %103 to <64 x float>
  %108 = fmul fast <64 x float> %106, %107
  %109 = fadd fast <64 x float> %108, %104
  store <64 x float> %109, ptr %43, align 4
  %110 = trunc nuw nsw i64 %60 to i32
  %111 = getelementptr half, ptr %19, i32 %110
  %112 = getelementptr i8, ptr %111, i32 640
  %113 = load <64 x half>, ptr %112, align 2
  %114 = load <64 x float>, ptr %46, align 4
  %115 = load <1 x float>, ptr %26, align 64
  %116 = shufflevector <1 x float> %115, <1 x float> poison, <64 x i32> zeroinitializer
  %117 = fpext <64 x half> %113 to <64 x float>
  %118 = fmul fast <64 x float> %116, %117
  %119 = fadd fast <64 x float> %118, %114
  store <64 x float> %119, ptr %46, align 4
  %120 = trunc nuw nsw i64 %60 to i32
  %121 = getelementptr half, ptr %19, i32 %120
  %122 = getelementptr i8, ptr %121, i32 768
  %123 = load <64 x half>, ptr %122, align 2
  %124 = load <64 x float>, ptr %49, align 4
  %125 = load <1 x float>, ptr %26, align 64
  %126 = shufflevector <1 x float> %125, <1 x float> poison, <64 x i32> zeroinitializer
  %127 = fpext <64 x half> %123 to <64 x float>
  %128 = fmul fast <64 x float> %126, %127
  %129 = fadd fast <64 x float> %128, %124
  store <64 x float> %129, ptr %49, align 4
  %130 = trunc nuw nsw i64 %60 to i32
  %131 = getelementptr half, ptr %19, i32 %130
  %132 = getelementptr i8, ptr %131, i32 896
  %133 = load <64 x half>, ptr %132, align 2
  %134 = load <64 x float>, ptr %52, align 4
  %135 = load <1 x float>, ptr %26, align 64
  %136 = shufflevector <1 x float> %135, <1 x float> poison, <64 x i32> zeroinitializer
  %137 = fpext <64 x half> %133 to <64 x float>
  %138 = fmul fast <64 x float> %136, %137
  %139 = fadd fast <64 x float> %138, %134
  store <64 x float> %139, ptr %52, align 4
  %140 = add nuw nsw i64 %54, 1
  %141 = icmp samesign ult i64 %54, 63
  br i1 %141, label %53, label %142

142:                                              ; preds = %53
  %143 = add nuw nsw i64 %27, 1
  %144 = icmp samesign ult i64 %27, 511
  br i1 %144, label %.preheader, label %145

145:                                              ; preds = %142
  tail call void @hexagon_runtime_copy(ptr nonnull %14, ptr nonnull %21, i32 1048576, i1 false, i1 true)
  %146 = getelementptr i8, ptr %16, i32 65536
  tail call void @hexagon_runtime_copy(ptr nonnull %20, ptr %146, i32 65536, i1 true, i1 false)
  %147 = getelementptr i8, ptr %14, i32 1048576
  tail call void @hexagon_runtime_copy(ptr nonnull %21, ptr %147, i32 1048576, i1 true, i1 false)
  br label %.preheader.1

.preheader.1:                                     ; preds = %263, %145
  %148 = phi i64 [ 0, %145 ], [ %264, %263 ]
  %149 = shl nuw nsw i64 %148, 6
  %150 = shl nuw nsw i64 %148, 9
  %151 = trunc nuw nsw i64 %150 to i32
  %152 = getelementptr float, ptr %21, i32 %151
  %153 = trunc nuw nsw i64 %150 to i32
  %154 = getelementptr float, ptr %21, i32 %153
  %155 = getelementptr i8, ptr %154, i32 256
  %156 = trunc nuw nsw i64 %150 to i32
  %157 = getelementptr float, ptr %21, i32 %156
  %158 = getelementptr i8, ptr %157, i32 512
  %159 = trunc nuw nsw i64 %150 to i32
  %160 = getelementptr float, ptr %21, i32 %159
  %161 = getelementptr i8, ptr %160, i32 768
  %162 = trunc nuw nsw i64 %150 to i32
  %163 = getelementptr float, ptr %21, i32 %162
  %164 = getelementptr i8, ptr %163, i32 1024
  %165 = trunc nuw nsw i64 %150 to i32
  %166 = getelementptr float, ptr %21, i32 %165
  %167 = getelementptr i8, ptr %166, i32 1280
  %168 = trunc nuw nsw i64 %150 to i32
  %169 = getelementptr float, ptr %21, i32 %168
  %170 = getelementptr i8, ptr %169, i32 1536
  %171 = trunc nuw nsw i64 %150 to i32
  %172 = getelementptr float, ptr %21, i32 %171
  %173 = getelementptr i8, ptr %172, i32 1792
  br label %174

174:                                              ; preds = %174, %.preheader.1
  %175 = phi i64 [ 0, %.preheader.1 ], [ %261, %174 ]
  %176 = add nuw nsw i64 %175, %149
  %177 = trunc nuw nsw i64 %176 to i32
  %178 = getelementptr half, ptr %20, i32 %177
  %179 = load half, ptr %178, align 2
  %180 = fpext half %179 to float
  store float %180, ptr %26, align 64
  %181 = shl nuw nsw i64 %175, 9
  %182 = trunc nuw nsw i64 %181 to i32
  %183 = getelementptr half, ptr %19, i32 %182
  %184 = load <64 x half>, ptr %183, align 2
  %185 = load <64 x float>, ptr %152, align 4
  %186 = insertelement <1 x float> poison, float %180, i64 0
  %187 = shufflevector <1 x float> %186, <1 x float> poison, <64 x i32> zeroinitializer
  %188 = fpext <64 x half> %184 to <64 x float>
  %189 = fmul fast <64 x float> %187, %188
  %190 = fadd fast <64 x float> %189, %185
  store <64 x float> %190, ptr %152, align 4
  %191 = trunc nuw nsw i64 %181 to i32
  %192 = getelementptr half, ptr %19, i32 %191
  %193 = getelementptr i8, ptr %192, i32 128
  %194 = load <64 x half>, ptr %193, align 2
  %195 = load <64 x float>, ptr %155, align 4
  %196 = load <1 x float>, ptr %26, align 64
  %197 = shufflevector <1 x float> %196, <1 x float> poison, <64 x i32> zeroinitializer
  %198 = fpext <64 x half> %194 to <64 x float>
  %199 = fmul fast <64 x float> %197, %198
  %200 = fadd fast <64 x float> %199, %195
  store <64 x float> %200, ptr %155, align 4
  %201 = trunc nuw nsw i64 %181 to i32
  %202 = getelementptr half, ptr %19, i32 %201
  %203 = getelementptr i8, ptr %202, i32 256
  %204 = load <64 x half>, ptr %203, align 2
  %205 = load <64 x float>, ptr %158, align 4
  %206 = load <1 x float>, ptr %26, align 64
  %207 = shufflevector <1 x float> %206, <1 x float> poison, <64 x i32> zeroinitializer
  %208 = fpext <64 x half> %204 to <64 x float>
  %209 = fmul fast <64 x float> %207, %208
  %210 = fadd fast <64 x float> %209, %205
  store <64 x float> %210, ptr %158, align 4
  %211 = trunc nuw nsw i64 %181 to i32
  %212 = getelementptr half, ptr %19, i32 %211
  %213 = getelementptr i8, ptr %212, i32 384
  %214 = load <64 x half>, ptr %213, align 2
  %215 = load <64 x float>, ptr %161, align 4
  %216 = load <1 x float>, ptr %26, align 64
  %217 = shufflevector <1 x float> %216, <1 x float> poison, <64 x i32> zeroinitializer
  %218 = fpext <64 x half> %214 to <64 x float>
  %219 = fmul fast <64 x float> %217, %218
  %220 = fadd fast <64 x float> %219, %215
  store <64 x float> %220, ptr %161, align 4
  %221 = trunc nuw nsw i64 %181 to i32
  %222 = getelementptr half, ptr %19, i32 %221
  %223 = getelementptr i8, ptr %222, i32 512
  %224 = load <64 x half>, ptr %223, align 2
  %225 = load <64 x float>, ptr %164, align 4
  %226 = load <1 x float>, ptr %26, align 64
  %227 = shufflevector <1 x float> %226, <1 x float> poison, <64 x i32> zeroinitializer
  %228 = fpext <64 x half> %224 to <64 x float>
  %229 = fmul fast <64 x float> %227, %228
  %230 = fadd fast <64 x float> %229, %225
  store <64 x float> %230, ptr %164, align 4
  %231 = trunc nuw nsw i64 %181 to i32
  %232 = getelementptr half, ptr %19, i32 %231
  %233 = getelementptr i8, ptr %232, i32 640
  %234 = load <64 x half>, ptr %233, align 2
  %235 = load <64 x float>, ptr %167, align 4
  %236 = load <1 x float>, ptr %26, align 64
  %237 = shufflevector <1 x float> %236, <1 x float> poison, <64 x i32> zeroinitializer
  %238 = fpext <64 x half> %234 to <64 x float>
  %239 = fmul fast <64 x float> %237, %238
  %240 = fadd fast <64 x float> %239, %235
  store <64 x float> %240, ptr %167, align 4
  %241 = trunc nuw nsw i64 %181 to i32
  %242 = getelementptr half, ptr %19, i32 %241
  %243 = getelementptr i8, ptr %242, i32 768
  %244 = load <64 x half>, ptr %243, align 2
  %245 = load <64 x float>, ptr %170, align 4
  %246 = load <1 x float>, ptr %26, align 64
  %247 = shufflevector <1 x float> %246, <1 x float> poison, <64 x i32> zeroinitializer
  %248 = fpext <64 x half> %244 to <64 x float>
  %249 = fmul fast <64 x float> %247, %248
  %250 = fadd fast <64 x float> %249, %245
  store <64 x float> %250, ptr %170, align 4
  %251 = trunc nuw nsw i64 %181 to i32
  %252 = getelementptr half, ptr %19, i32 %251
  %253 = getelementptr i8, ptr %252, i32 896
  %254 = load <64 x half>, ptr %253, align 2
  %255 = load <64 x float>, ptr %173, align 4
  %256 = load <1 x float>, ptr %26, align 64
  %257 = shufflevector <1 x float> %256, <1 x float> poison, <64 x i32> zeroinitializer
  %258 = fpext <64 x half> %254 to <64 x float>
  %259 = fmul fast <64 x float> %257, %258
  %260 = fadd fast <64 x float> %259, %255
  store <64 x float> %260, ptr %173, align 4
  %261 = add nuw nsw i64 %175, 1
  %262 = icmp samesign ult i64 %175, 63
  br i1 %262, label %174, label %263

263:                                              ; preds = %174
  %264 = add nuw nsw i64 %148, 1
  %265 = icmp samesign ult i64 %148, 511
  br i1 %265, label %.preheader.1, label %266

266:                                              ; preds = %263
  tail call void @hexagon_runtime_copy(ptr %147, ptr nonnull %21, i32 1048576, i1 false, i1 true)
  tail call void @hexagon_runtime_free_1d(ptr nonnull %19)
  tail call void @hexagon_runtime_free_1d(ptr nonnull %20)
  tail call void @hexagon_runtime_free_1d(ptr nonnull %21)
  tail call void @free(ptr %22)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly captures(none), i8, i32, i1 immarg) #2

define internal void @_GLOBAL__sub_I_VTCMPool.cpp() #3 {
entry:
  tail call void @_ZNSt3__18ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZL9_Ios_init)
  %0 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__18ios_base4InitD1Ev, ptr nonnull @_ZL9_Ios_init, ptr nonnull @__dso_handle) #28
  ret void
}

declare void @_ZNSt3__18ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__18ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress
define hidden void @_ZN8VtcmPoolC2Ev(ptr noundef nonnull align 4 dereferenceable(40) %this) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %resInfo = alloca %struct.compute_res_attr_t, align 8
  %availBlockSize = alloca i32, align 4
  %totalBlockLayout = alloca %struct.compute_res_vtcm_page_t, align 4
  %availBlockLayout = alloca %struct.compute_res_vtcm_page_t, align 4
  %oss = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp = alloca %"class.std::__1::basic_string", align 4
  %oss77 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp83 = alloca %"class.std::__1::basic_string", align 4
  %oss116 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp122 = alloca %"class.std::__1::basic_string", align 4
  %oss135 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp141 = alloca %"class.std::__1::basic_string", align 4
  %contextId_ = getelementptr inbounds i8, ptr %this, i32 12
  %free_ = getelementptr inbounds i8, ptr %this, i32 28
  %__end_.i200 = getelementptr inbounds i8, ptr %this, i32 32
  %__end_cap_.i201 = getelementptr inbounds i8, ptr %this, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %contextId_, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr %resInfo)
  %tobool.not.i = icmp eq ptr @compute_resource_attr_init_v2, null
  br i1 %tobool.not.i, label %if.end4.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i202 = invoke i32 @compute_resource_attr_init_v2(ptr noundef nonnull %resInfo, i32 noundef 160, i32 noundef 768)
          to label %call.i.noexc unwind label %lpad

call.i.noexc:                                     ; preds = %if.then.i
  %cmp.i = icmp ne i32 %call.i202, 0
  %tobool1.i = icmp ne ptr @compute_resource_attr_init, null
  %or.cond.i = and i1 %tobool1.i, %cmp.i
  br i1 %or.cond.i, label %cleanup.sink.split.i, label %invoke.cont

if.end4.i:                                        ; preds = %entry
  %tobool5.not.i = icmp eq ptr @compute_resource_attr_init, null
  br i1 %tobool5.not.i, label %do.body2, label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end4.i, %call.i.noexc
  %call3.i203 = invoke i32 @compute_resource_attr_init(ptr noundef nonnull %resInfo)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %call.i.noexc, %cleanup.sink.split.i
  %retval.0.i = phi i32 [ %call.i202, %call.i.noexc ], [ %call3.i203, %cleanup.sink.split.i ]
  %cmp.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp.not, label %if.end7, label %do.body2

do.body2:                                         ; preds = %if.end4.i, %invoke.cont
  %retval.0.i341 = phi i32 [ %retval.0.i, %invoke.cont ], [ -2147482620, %if.end4.i ]
  %cmp3 = icmp eq ptr null, @HAP_debug_v2
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.body2
  invoke void (i32, ptr, i32, ptr, ...) @_ZL13_HAP_debug_v2iPKciS0_z(i32 poison, ptr nonnull poison, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i341)
          to label %abort.noreturn unwind label %lpad

lpad:                                             ; preds = %cleanup.sink.split.i, %if.then.i, %if.else, %if.then4
  %0 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup165

if.else:                                          ; preds = %do.body2
  invoke void (i32, ptr, i32, ptr, ...) @HAP_debug_v2(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i341)
          to label %abort.noreturn unwind label %lpad

if.end7:                                          ; preds = %invoke.cont
  call void @llvm.lifetime.start.p0(ptr %availBlockSize)
  call void @llvm.lifetime.start.p0(ptr %totalBlockLayout)
  call void @llvm.lifetime.start.p0(ptr %availBlockLayout)
  %call14 = invoke i32 @compute_resource_query_VTCM(i32 noundef 0, ptr noundef nonnull %this, ptr noundef nonnull %totalBlockLayout, ptr noundef nonnull %availBlockSize, ptr noundef nonnull %availBlockLayout)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %if.end7
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %for.cond.preheader, label %do.body17

for.cond.preheader:                               ; preds = %invoke.cont13
  %page_list_len = getelementptr inbounds i8, ptr %totalBlockLayout, i32 4
  %1 = load i32, ptr %page_list_len, align 4, !tbaa !179
  %cmp29350.not = icmp eq i32 %1, 0
  br i1 %cmp29350.not, label %for.cond.cleanup, label %for.body

do.body17:                                        ; preds = %invoke.cont13
  %cmp18 = icmp eq ptr null, @HAP_debug_v2
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %do.body17
  invoke void (i32, ptr, i32, ptr, ...) @_ZL13_HAP_debug_v2iPKciS0_z(i32 poison, ptr nonnull poison, i32 noundef 25, ptr noundef nonnull @.str.2, i32 noundef %call14)
          to label %abort.noreturn unwind label %lpad12

lpad12:                                           ; preds = %if.else21, %if.then19, %if.end7
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup161

if.else21:                                        ; preds = %do.body17
  invoke void (i32, ptr, i32, ptr, ...) @HAP_debug_v2(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 25, ptr noundef nonnull @.str.2, i32 noundef %call14)
          to label %abort.noreturn unwind label %lpad12

for.cond.cleanup:                                 ; preds = %for.body, %for.cond.preheader
  %pageSize.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %spec.select, %for.body ]
  %3 = load i32, ptr %availBlockSize, align 4, !tbaa !184
  %cmp36 = icmp ugt i32 %3, 1048575
  br i1 %cmp36, label %do.body50, label %if.then37

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %totalBlockLayout.pn = phi ptr [ %arrayidx.phi, %for.body ], [ %totalBlockLayout, %for.cond.preheader ]
  %i.0352 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %pageSize.0351 = phi i32 [ %spec.select, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx.phi = getelementptr i8, ptr %totalBlockLayout.pn, i32 8
  %4 = load i32, ptr %arrayidx.phi, align 4, !tbaa !185
  %spec.select = call i32 @llvm.umax.i32(i32 %pageSize.0351, i32 %4)
  %inc = add nuw nsw i32 %i.0352, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !187

if.then37:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(ptr %oss)
  invoke void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss)
          to label %invoke.cont39 unwind label %lpad38

invoke.cont39:                                    ; preds = %if.then37
  %call1.i204 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull @.str.3, i32 noundef 30)
          to label %invoke.cont41 unwind label %lpad40

invoke.cont41:                                    ; preds = %invoke.cont39
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  %__sb_.i = getelementptr inbounds i8, ptr %oss, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i)
          to label %invoke.cont44 unwind label %lpad43

invoke.cont44:                                    ; preds = %invoke.cont41
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 34, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp)
          to label %invoke.cont46 unwind label %lpad45

invoke.cont46:                                    ; preds = %invoke.cont44
  %bf.load.i.i = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i205

if.then.i205:                                     ; preds = %invoke.cont46
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %5 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %5, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont46, %if.then.i205
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  %6 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %6, ptr %oss, align 4, !tbaa !190
  %7 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %6, i32 -12
  %vbase.offset.i.i = load i32, ptr %vbase.offset.ptr.i.i, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %oss, i32 %vbase.offset.i.i
  store ptr %7, ptr %add.ptr.i.i, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i.i = getelementptr inbounds i8, ptr %oss, i32 36
  %bf.load.i.i.i.i.i = load i8, ptr %__str_.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, 1
  %tobool.i.not.i.i.i.i = icmp eq i8 %bf.clear.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %__data_.i.i.i.i.i = getelementptr inbounds i8, ptr %oss, i32 44
  %8 = load ptr, ptr %__data_.i.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i = load i32, ptr %__str_.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = and i32 %bf.load.i5.i.i.i.i, -2
  call void @_ZdlPvj(ptr noundef %8, i32 noundef %bf.lshr.i.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %if.then.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %9 = getelementptr inbounds i8, ptr %oss, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %9) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %do.body50

lpad38:                                           ; preds = %if.then37
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup48

lpad40:                                           ; preds = %invoke.cont39
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup47

lpad43:                                           ; preds = %invoke.cont41
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad45:                                           ; preds = %invoke.cont44
  %13 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i206 = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i207 = and i8 %bf.load.i.i206, 1
  %tobool.i.not.i208 = icmp eq i8 %bf.clear.i.i207, 0
  br i1 %tobool.i.not.i208, label %ehcleanup, label %if.then.i209

if.then.i209:                                     ; preds = %lpad45
  %__data_.i.i210 = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %14 = load ptr, ptr %__data_.i.i210, align 4, !tbaa !189
  %bf.load.i5.i211 = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i212 = and i32 %bf.load.i5.i211, -2
  call void @_ZdlPvj(ptr noundef %14, i32 noundef %bf.lshr.i.i212) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i209, %lpad45, %lpad43
  %.pn = phi { ptr, i32 } [ %12, %lpad43 ], [ %13, %lpad45 ], [ %13, %if.then.i209 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %ehcleanup47

ehcleanup47:                                      ; preds = %ehcleanup, %lpad40
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %11, %lpad40 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss) #28
  br label %ehcleanup48

ehcleanup48:                                      ; preds = %ehcleanup47, %lpad38
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %ehcleanup47 ], [ %10, %lpad38 ]
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %ehcleanup161

do.body50:                                        ; preds = %for.cond.cleanup, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
  %tobool.not.i214 = icmp eq ptr @compute_resource_attr_set_vtcm_param_v2, null
  br i1 %tobool.not.i214, label %do.body58, label %if.then.i215

if.then.i215:                                     ; preds = %do.body50
  %15 = load i32, ptr %availBlockSize, align 4, !tbaa !184
  %16 = load i32, ptr %this, align 4, !tbaa !192
  %call.i218 = invoke i32 @compute_resource_attr_set_vtcm_param_v2(ptr noundef nonnull %resInfo, i32 noundef %16, i32 noundef %pageSize.0.lcssa, i32 noundef %15)
          to label %invoke.cont54 unwind label %lpad53

invoke.cont54:                                    ; preds = %if.then.i215
  %cmp56.not = icmp eq i32 %call.i218, 0
  br i1 %cmp56.not, label %if.end67, label %do.body58

do.body58:                                        ; preds = %do.body50, %invoke.cont54
  %retval.0.i216344 = phi i32 [ %call.i218, %invoke.cont54 ], [ -2147482620, %do.body50 ]
  %cmp59 = icmp eq ptr null, @HAP_debug_v2
  br i1 %cmp59, label %if.then60, label %if.else62

if.then60:                                        ; preds = %do.body58
  invoke void (i32, ptr, i32, ptr, ...) @_ZL13_HAP_debug_v2iPKciS0_z(i32 poison, ptr nonnull poison, i32 noundef 41, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i216344)
          to label %abort.noreturn unwind label %lpad53

lpad53:                                           ; preds = %if.then.i215, %if.else62, %if.then60
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup161

if.else62:                                        ; preds = %do.body58
  invoke void (i32, ptr, i32, ptr, ...) @HAP_debug_v2(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 41, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i216344)
          to label %abort.noreturn unwind label %lpad53

if.end67:                                         ; preds = %invoke.cont54
  %tobool.not.i219 = icmp eq ptr @compute_resource_acquire, null
  br i1 %tobool.not.i219, label %invoke.cont72.thread, label %if.then.i220

invoke.cont72.thread:                             ; preds = %if.end67
  store i32 0, ptr %contextId_, align 4, !tbaa !198
  br label %if.then76

if.then.i220:                                     ; preds = %if.end67
  %call.i223 = invoke i32 @compute_resource_acquire(ptr noundef nonnull %resInfo, i32 noundef 0)
          to label %invoke.cont72 unwind label %lpad71

invoke.cont72:                                    ; preds = %if.then.i220
  store i32 %call.i223, ptr %contextId_, align 4, !tbaa !198
  %tobool.not = icmp eq i32 %call.i223, 0
  br i1 %tobool.not, label %if.then76, label %do.body93

if.then76:                                        ; preds = %invoke.cont72.thread, %invoke.cont72
  call void @llvm.lifetime.start.p0(ptr %oss77)
  invoke void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss77)
          to label %invoke.cont79 unwind label %lpad78

invoke.cont79:                                    ; preds = %if.then76
  %call1.i225 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss77, ptr noundef nonnull @.str.6, i32 noundef 67)
          to label %invoke.cont81 unwind label %lpad80

invoke.cont81:                                    ; preds = %invoke.cont79
  call void @llvm.lifetime.start.p0(ptr %ref.tmp83)
  %__sb_.i227 = getelementptr inbounds i8, ptr %oss77, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp83, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i227)
          to label %invoke.cont85 unwind label %lpad84

invoke.cont85:                                    ; preds = %invoke.cont81
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, i32 noundef 47, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp83)
          to label %invoke.cont87 unwind label %lpad86

invoke.cont87:                                    ; preds = %invoke.cont85
  %bf.load.i.i229 = load i8, ptr %ref.tmp83, align 4
  %bf.clear.i.i230 = and i8 %bf.load.i.i229, 1
  %tobool.i.not.i231 = icmp eq i8 %bf.clear.i.i230, 0
  br i1 %tobool.i.not.i231, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit236, label %if.then.i232

if.then.i232:                                     ; preds = %invoke.cont87
  %__data_.i.i233 = getelementptr inbounds i8, ptr %ref.tmp83, i32 8
  %18 = load ptr, ptr %__data_.i.i233, align 4, !tbaa !189
  %bf.load.i5.i234 = load i32, ptr %ref.tmp83, align 4
  %bf.lshr.i.i235 = and i32 %bf.load.i5.i234, -2
  call void @_ZdlPvj(ptr noundef %18, i32 noundef %bf.lshr.i.i235) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit236

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit236: ; preds = %invoke.cont87, %if.then.i232
  call void @llvm.lifetime.end.p0(ptr %ref.tmp83)
  %19 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %19, ptr %oss77, align 4, !tbaa !190
  %20 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i237 = getelementptr i8, ptr %19, i32 -12
  %vbase.offset.i.i238 = load i32, ptr %vbase.offset.ptr.i.i237, align 4
  %add.ptr.i.i239 = getelementptr inbounds i8, ptr %oss77, i32 %vbase.offset.i.i238
  store ptr %20, ptr %add.ptr.i.i239, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i227, align 4, !tbaa !190
  %__str_.i.i.i241 = getelementptr inbounds i8, ptr %oss77, i32 36
  %bf.load.i.i.i.i.i242 = load i8, ptr %__str_.i.i.i241, align 4
  %bf.clear.i.i.i.i.i243 = and i8 %bf.load.i.i.i.i.i242, 1
  %tobool.i.not.i.i.i.i244 = icmp eq i8 %bf.clear.i.i.i.i.i243, 0
  br i1 %tobool.i.not.i.i.i.i244, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit249, label %if.then.i.i.i.i245

if.then.i.i.i.i245:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit236
  %__data_.i.i.i.i.i246 = getelementptr inbounds i8, ptr %oss77, i32 44
  %21 = load ptr, ptr %__data_.i.i.i.i.i246, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i247 = load i32, ptr %__str_.i.i.i241, align 4
  %bf.lshr.i.i.i.i.i248 = and i32 %bf.load.i5.i.i.i.i247, -2
  call void @_ZdlPvj(ptr noundef %21, i32 noundef %bf.lshr.i.i.i.i.i248) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit249

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit249: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit236, %if.then.i.i.i.i245
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i227) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss77, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %22 = getelementptr inbounds i8, ptr %oss77, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %22) #28
  call void @llvm.lifetime.end.p0(ptr %oss77)
  br label %do.body93

lpad71:                                           ; preds = %if.then.i220
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup161

lpad78:                                           ; preds = %if.then76
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup91

lpad80:                                           ; preds = %invoke.cont79
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup90

lpad84:                                           ; preds = %invoke.cont81
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup89

lpad86:                                           ; preds = %invoke.cont85
  %27 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i250 = load i8, ptr %ref.tmp83, align 4
  %bf.clear.i.i251 = and i8 %bf.load.i.i250, 1
  %tobool.i.not.i252 = icmp eq i8 %bf.clear.i.i251, 0
  br i1 %tobool.i.not.i252, label %ehcleanup89, label %if.then.i253

if.then.i253:                                     ; preds = %lpad86
  %__data_.i.i254 = getelementptr inbounds i8, ptr %ref.tmp83, i32 8
  %28 = load ptr, ptr %__data_.i.i254, align 4, !tbaa !189
  %bf.load.i5.i255 = load i32, ptr %ref.tmp83, align 4
  %bf.lshr.i.i256 = and i32 %bf.load.i5.i255, -2
  call void @_ZdlPvj(ptr noundef %28, i32 noundef %bf.lshr.i.i256) #29
  br label %ehcleanup89

ehcleanup89:                                      ; preds = %if.then.i253, %lpad86, %lpad84
  %.pn184 = phi { ptr, i32 } [ %26, %lpad84 ], [ %27, %lpad86 ], [ %27, %if.then.i253 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp83)
  br label %ehcleanup90

ehcleanup90:                                      ; preds = %ehcleanup89, %lpad80
  %.pn184.pn = phi { ptr, i32 } [ %.pn184, %ehcleanup89 ], [ %25, %lpad80 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss77) #28
  br label %ehcleanup91

ehcleanup91:                                      ; preds = %ehcleanup90, %lpad78
  %.pn184.pn.pn = phi { ptr, i32 } [ %.pn184.pn, %ehcleanup90 ], [ %24, %lpad78 ]
  call void @llvm.lifetime.end.p0(ptr %oss77)
  br label %ehcleanup161

do.body93:                                        ; preds = %invoke.cont72, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit249
  %vtcmData_ = getelementptr inbounds i8, ptr %this, i32 8
  %vtcmAllocatedSize_ = getelementptr inbounds i8, ptr %this, i32 4
  %tobool.not.i258 = icmp eq ptr @compute_resource_attr_get_vtcm_ptr_v2, null
  br i1 %tobool.not.i258, label %do.body100, label %if.then.i259

if.then.i259:                                     ; preds = %do.body93
  %call.i262 = invoke i32 @compute_resource_attr_get_vtcm_ptr_v2(ptr noundef nonnull %resInfo, ptr noundef nonnull %vtcmData_, ptr noundef nonnull %vtcmAllocatedSize_)
          to label %invoke.cont96 unwind label %lpad95

invoke.cont96:                                    ; preds = %if.then.i259
  %cmp98.not = icmp eq i32 %call.i262, 0
  br i1 %cmp98.not, label %if.end109, label %do.body100

do.body100:                                       ; preds = %do.body93, %invoke.cont96
  %retval.0.i260349 = phi i32 [ %call.i262, %invoke.cont96 ], [ -2147482620, %do.body93 ]
  %cmp101 = icmp eq ptr null, @HAP_debug_v2
  br i1 %cmp101, label %if.then102, label %if.else104

if.then102:                                       ; preds = %do.body100
  invoke void (i32, ptr, i32, ptr, ...) @_ZL13_HAP_debug_v2iPKciS0_z(i32 poison, ptr nonnull poison, i32 noundef 49, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i260349)
          to label %abort.noreturn unwind label %lpad95

lpad95:                                           ; preds = %if.then.i259, %if.else104, %if.then102
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup161

if.else104:                                       ; preds = %do.body100
  invoke void (i32, ptr, i32, ptr, ...) @HAP_debug_v2(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 49, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i260349)
          to label %abort.noreturn unwind label %lpad95

abort.noreturn:                                   ; preds = %if.then102, %if.else104, %if.then60, %if.else62, %if.then19, %if.else21, %if.then4, %if.else
  call void @abort() #30
  unreachable

if.end109:                                        ; preds = %invoke.cont96
  %30 = load ptr, ptr %vtcmData_, align 4, !tbaa !199
  %cmp114.not = icmp eq ptr %30, null
  br i1 %cmp114.not, label %if.then115, label %if.end131

if.then115:                                       ; preds = %if.end109
  call void @llvm.lifetime.start.p0(ptr %oss116)
  invoke void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss116)
          to label %invoke.cont118 unwind label %lpad117

invoke.cont118:                                   ; preds = %if.then115
  %call1.i264 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss116, ptr noundef nonnull @.str.9, i32 noundef 63)
          to label %invoke.cont120 unwind label %lpad119

invoke.cont120:                                   ; preds = %invoke.cont118
  call void @llvm.lifetime.start.p0(ptr %ref.tmp122)
  %__sb_.i266 = getelementptr inbounds i8, ptr %oss116, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp122, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i266)
          to label %invoke.cont124 unwind label %lpad123

invoke.cont124:                                   ; preds = %invoke.cont120
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef 51, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp122)
          to label %invoke.cont126 unwind label %lpad125

invoke.cont126:                                   ; preds = %invoke.cont124
  %bf.load.i.i268 = load i8, ptr %ref.tmp122, align 4
  %bf.clear.i.i269 = and i8 %bf.load.i.i268, 1
  %tobool.i.not.i270 = icmp eq i8 %bf.clear.i.i269, 0
  br i1 %tobool.i.not.i270, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit275, label %if.then.i271

if.then.i271:                                     ; preds = %invoke.cont126
  %__data_.i.i272 = getelementptr inbounds i8, ptr %ref.tmp122, i32 8
  %31 = load ptr, ptr %__data_.i.i272, align 4, !tbaa !189
  %bf.load.i5.i273 = load i32, ptr %ref.tmp122, align 4
  %bf.lshr.i.i274 = and i32 %bf.load.i5.i273, -2
  call void @_ZdlPvj(ptr noundef %31, i32 noundef %bf.lshr.i.i274) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit275

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit275: ; preds = %invoke.cont126, %if.then.i271
  call void @llvm.lifetime.end.p0(ptr %ref.tmp122)
  %32 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %32, ptr %oss116, align 4, !tbaa !190
  %33 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i276 = getelementptr i8, ptr %32, i32 -12
  %vbase.offset.i.i277 = load i32, ptr %vbase.offset.ptr.i.i276, align 4
  %add.ptr.i.i278 = getelementptr inbounds i8, ptr %oss116, i32 %vbase.offset.i.i277
  store ptr %33, ptr %add.ptr.i.i278, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i266, align 4, !tbaa !190
  %__str_.i.i.i280 = getelementptr inbounds i8, ptr %oss116, i32 36
  %bf.load.i.i.i.i.i281 = load i8, ptr %__str_.i.i.i280, align 4
  %bf.clear.i.i.i.i.i282 = and i8 %bf.load.i.i.i.i.i281, 1
  %tobool.i.not.i.i.i.i283 = icmp eq i8 %bf.clear.i.i.i.i.i282, 0
  br i1 %tobool.i.not.i.i.i.i283, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit288, label %if.then.i.i.i.i284

if.then.i.i.i.i284:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit275
  %__data_.i.i.i.i.i285 = getelementptr inbounds i8, ptr %oss116, i32 44
  %34 = load ptr, ptr %__data_.i.i.i.i.i285, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i286 = load i32, ptr %__str_.i.i.i280, align 4
  %bf.lshr.i.i.i.i.i287 = and i32 %bf.load.i5.i.i.i.i286, -2
  call void @_ZdlPvj(ptr noundef %34, i32 noundef %bf.lshr.i.i.i.i.i287) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit288

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit288: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit275, %if.then.i.i.i.i284
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i266) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss116, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %35 = getelementptr inbounds i8, ptr %oss116, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %35) #28
  call void @llvm.lifetime.end.p0(ptr %oss116)
  br label %if.end131

lpad117:                                          ; preds = %if.then115
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup130

lpad119:                                          ; preds = %invoke.cont118
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup129

lpad123:                                          ; preds = %invoke.cont120
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup128

lpad125:                                          ; preds = %invoke.cont124
  %39 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i289 = load i8, ptr %ref.tmp122, align 4
  %bf.clear.i.i290 = and i8 %bf.load.i.i289, 1
  %tobool.i.not.i291 = icmp eq i8 %bf.clear.i.i290, 0
  br i1 %tobool.i.not.i291, label %ehcleanup128, label %if.then.i292

if.then.i292:                                     ; preds = %lpad125
  %__data_.i.i293 = getelementptr inbounds i8, ptr %ref.tmp122, i32 8
  %40 = load ptr, ptr %__data_.i.i293, align 4, !tbaa !189
  %bf.load.i5.i294 = load i32, ptr %ref.tmp122, align 4
  %bf.lshr.i.i295 = and i32 %bf.load.i5.i294, -2
  call void @_ZdlPvj(ptr noundef %40, i32 noundef %bf.lshr.i.i295) #29
  br label %ehcleanup128

ehcleanup128:                                     ; preds = %if.then.i292, %lpad125, %lpad123
  %.pn188 = phi { ptr, i32 } [ %38, %lpad123 ], [ %39, %lpad125 ], [ %39, %if.then.i292 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp122)
  br label %ehcleanup129

ehcleanup129:                                     ; preds = %ehcleanup128, %lpad119
  %.pn188.pn = phi { ptr, i32 } [ %.pn188, %ehcleanup128 ], [ %37, %lpad119 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss116) #28
  br label %ehcleanup130

ehcleanup130:                                     ; preds = %ehcleanup129, %lpad117
  %.pn188.pn.pn = phi { ptr, i32 } [ %.pn188.pn, %ehcleanup129 ], [ %36, %lpad117 ]
  call void @llvm.lifetime.end.p0(ptr %oss116)
  br label %ehcleanup161

if.end131:                                        ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit288, %if.end109
  %41 = load i32, ptr %vtcmAllocatedSize_, align 4, !tbaa !184
  %42 = load i32, ptr %availBlockSize, align 4, !tbaa !184
  %cmp133.not = icmp ult i32 %41, %42
  br i1 %cmp133.not, label %if.then134, label %if.end150

if.then134:                                       ; preds = %if.end131
  call void @llvm.lifetime.start.p0(ptr %oss135)
  invoke void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss135)
          to label %invoke.cont137 unwind label %lpad136

invoke.cont137:                                   ; preds = %if.then134
  %call1.i298 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss135, ptr noundef nonnull @.str.11, i32 noundef 67)
          to label %invoke.cont139 unwind label %lpad138

invoke.cont139:                                   ; preds = %invoke.cont137
  call void @llvm.lifetime.start.p0(ptr %ref.tmp141)
  %__sb_.i300 = getelementptr inbounds i8, ptr %oss135, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp141, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i300)
          to label %invoke.cont143 unwind label %lpad142

invoke.cont143:                                   ; preds = %invoke.cont139
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef 53, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp141)
          to label %invoke.cont145 unwind label %lpad144

invoke.cont145:                                   ; preds = %invoke.cont143
  %bf.load.i.i302 = load i8, ptr %ref.tmp141, align 4
  %bf.clear.i.i303 = and i8 %bf.load.i.i302, 1
  %tobool.i.not.i304 = icmp eq i8 %bf.clear.i.i303, 0
  br i1 %tobool.i.not.i304, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit309, label %if.then.i305

if.then.i305:                                     ; preds = %invoke.cont145
  %__data_.i.i306 = getelementptr inbounds i8, ptr %ref.tmp141, i32 8
  %43 = load ptr, ptr %__data_.i.i306, align 4, !tbaa !189
  %bf.load.i5.i307 = load i32, ptr %ref.tmp141, align 4
  %bf.lshr.i.i308 = and i32 %bf.load.i5.i307, -2
  call void @_ZdlPvj(ptr noundef %43, i32 noundef %bf.lshr.i.i308) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit309

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit309: ; preds = %invoke.cont145, %if.then.i305
  call void @llvm.lifetime.end.p0(ptr %ref.tmp141)
  %44 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %44, ptr %oss135, align 4, !tbaa !190
  %45 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i310 = getelementptr i8, ptr %44, i32 -12
  %vbase.offset.i.i311 = load i32, ptr %vbase.offset.ptr.i.i310, align 4
  %add.ptr.i.i312 = getelementptr inbounds i8, ptr %oss135, i32 %vbase.offset.i.i311
  store ptr %45, ptr %add.ptr.i.i312, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i300, align 4, !tbaa !190
  %__str_.i.i.i314 = getelementptr inbounds i8, ptr %oss135, i32 36
  %bf.load.i.i.i.i.i315 = load i8, ptr %__str_.i.i.i314, align 4
  %bf.clear.i.i.i.i.i316 = and i8 %bf.load.i.i.i.i.i315, 1
  %tobool.i.not.i.i.i.i317 = icmp eq i8 %bf.clear.i.i.i.i.i316, 0
  br i1 %tobool.i.not.i.i.i.i317, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit322, label %if.then.i.i.i.i318

if.then.i.i.i.i318:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit309
  %__data_.i.i.i.i.i319 = getelementptr inbounds i8, ptr %oss135, i32 44
  %46 = load ptr, ptr %__data_.i.i.i.i.i319, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i320 = load i32, ptr %__str_.i.i.i314, align 4
  %bf.lshr.i.i.i.i.i321 = and i32 %bf.load.i5.i.i.i.i320, -2
  call void @_ZdlPvj(ptr noundef %46, i32 noundef %bf.lshr.i.i.i.i.i321) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit322

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit322: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit309, %if.then.i.i.i.i318
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i300) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss135, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %47 = getelementptr inbounds i8, ptr %oss135, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %47) #28
  call void @llvm.lifetime.end.p0(ptr %oss135)
  %.pre = load i32, ptr %vtcmAllocatedSize_, align 4, !tbaa !184
  br label %if.end150

lpad136:                                          ; preds = %if.then134
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup149

lpad138:                                          ; preds = %invoke.cont137
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup148

lpad142:                                          ; preds = %invoke.cont139
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup147

lpad144:                                          ; preds = %invoke.cont143
  %51 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i323 = load i8, ptr %ref.tmp141, align 4
  %bf.clear.i.i324 = and i8 %bf.load.i.i323, 1
  %tobool.i.not.i325 = icmp eq i8 %bf.clear.i.i324, 0
  br i1 %tobool.i.not.i325, label %ehcleanup147, label %if.then.i326

if.then.i326:                                     ; preds = %lpad144
  %__data_.i.i327 = getelementptr inbounds i8, ptr %ref.tmp141, i32 8
  %52 = load ptr, ptr %__data_.i.i327, align 4, !tbaa !189
  %bf.load.i5.i328 = load i32, ptr %ref.tmp141, align 4
  %bf.lshr.i.i329 = and i32 %bf.load.i5.i328, -2
  call void @_ZdlPvj(ptr noundef %52, i32 noundef %bf.lshr.i.i329) #29
  br label %ehcleanup147

ehcleanup147:                                     ; preds = %if.then.i326, %lpad144, %lpad142
  %.pn192 = phi { ptr, i32 } [ %50, %lpad142 ], [ %51, %lpad144 ], [ %51, %if.then.i326 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp141)
  br label %ehcleanup148

ehcleanup148:                                     ; preds = %ehcleanup147, %lpad138
  %.pn192.pn = phi { ptr, i32 } [ %.pn192, %ehcleanup147 ], [ %49, %lpad138 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss135) #28
  br label %ehcleanup149

ehcleanup149:                                     ; preds = %ehcleanup148, %lpad136
  %.pn192.pn.pn = phi { ptr, i32 } [ %.pn192.pn, %ehcleanup148 ], [ %48, %lpad136 ]
  call void @llvm.lifetime.end.p0(ptr %oss135)
  br label %ehcleanup161

if.end150:                                        ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit322, %if.end131
  %53 = phi i32 [ %.pre, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit322 ], [ %41, %if.end131 ]
  %54 = load ptr, ptr %vtcmData_, align 4, !tbaa !199
  %55 = load ptr, ptr %__end_.i200, align 4, !tbaa !200
  %56 = load ptr, ptr %__end_cap_.i201, align 4, !tbaa !201
  %cmp.i332 = icmp ult ptr %55, %56
  br i1 %cmp.i332, label %if.then.i333, label %if.else.i

if.then.i333:                                     ; preds = %if.end150
  %57 = ptrtoint ptr %54 to i32
  store i32 %57, ptr %55, align 4
  %.sroa_idx = getelementptr inbounds i8, ptr %55, i32 4
  store i32 %53, ptr %.sroa_idx, align 4
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %55, i32 8
  br label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit

if.else.i:                                        ; preds = %if.end150
  %58 = load ptr, ptr %free_, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 3
  %add.i.i = add nsw i32 %sub.ptr.div.i.i.i, 1
  %cmp.i.i.i = icmp ugt i32 %add.i.i, 536870911
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  invoke void @_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %free_) #31
          to label %.noexc unwind label %lpad156

.noexc:                                           ; preds = %if.then.i.i.i
  unreachable

_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit.i.i: ; preds = %if.else.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %cmp3.not.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, 2147483640
  %mul.i.i.i = lshr exact i32 %sub.ptr.sub.i.i.i.i, 2
  %59 = call i32 @llvm.umax.i32(i32 %mul.i.i.i, i32 %add.i.i)
  %retval.0.i.i.i = select i1 %cmp3.not.i.i.i, i32 %59, i32 536870911
  %cmp.i17.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %cmp.i17.i.i, label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit.i.i
  %cmp.i.i.i.i.i = icmp ugt i32 %retval.0.i.i.i, 536870911
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.else.i.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne190000v() #31
          to label %.noexc334 unwind label %lpad156

.noexc334:                                        ; preds = %if.then.i.i.i.i.i
  unreachable

_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i.i.i: ; preds = %if.else.i.i.i
  %mul.i.i.i.i.i = shl nuw i32 %retval.0.i.i.i, 3
  %call.i5.i.i.i.i.i.i335 = invoke noalias noundef nonnull ptr @_Znwj(i32 noundef %mul.i.i.i.i.i) #32
          to label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i unwind label %lpad156

_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i.i.i, %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit.i.i
  %storemerge.i.i.i = phi ptr [ null, %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit.i.i ], [ %call.i5.i.i.i.i.i.i335, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds %"struct.std::__1::pair", ptr %storemerge.i.i.i, i32 %sub.ptr.div.i.i.i
  %add.ptr6.i.i.i = getelementptr inbounds %"struct.std::__1::pair", ptr %storemerge.i.i.i, i32 %retval.0.i.i.i
  %60 = ptrtoint ptr %54 to i32
  store i32 %60, ptr %add.ptr.i.i.i, align 4
  %add.ptr.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 4
  store i32 %53, ptr %add.ptr.i.i.i.sroa_idx, align 4
  %incdec.ptr.i9.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %storemerge.i.i.i, ptr align 4 %58, i32 %sub.ptr.sub.i.i.i, i1 false)
  store ptr %storemerge.i.i.i, ptr %free_, align 4, !tbaa !201
  store ptr %incdec.ptr.i9.i, ptr %__end_.i200, align 4, !tbaa !201
  store ptr %add.ptr6.i.i.i, ptr %__end_cap_.i201, align 4, !tbaa !201
  %tobool.not.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit, label %if.then.i26.i.i

if.then.i26.i.i:                                  ; preds = %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i
  call void @_ZdlPvj(ptr noundef nonnull %58, i32 noundef %sub.ptr.sub.i.i.i.i) #29
  br label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %if.then.i333, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i, %if.then.i26.i.i
  %__end.0.i = phi ptr [ %incdec.ptr.i.i, %if.then.i333 ], [ %incdec.ptr.i9.i, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i ], [ %incdec.ptr.i9.i, %if.then.i26.i.i ]
  store ptr %__end.0.i, ptr %__end_.i200, align 4, !tbaa !200
  call void @llvm.lifetime.end.p0(ptr %availBlockLayout)
  call void @llvm.lifetime.end.p0(ptr %totalBlockLayout)
  call void @llvm.lifetime.end.p0(ptr %availBlockSize)
  call void @llvm.lifetime.end.p0(ptr %resInfo)
  ret void

lpad156:                                          ; preds = %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i.i.i, %if.then.i.i.i.i.i, %if.then.i.i.i
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup161

ehcleanup161:                                     ; preds = %lpad156, %ehcleanup149, %ehcleanup130, %lpad95, %ehcleanup91, %lpad71, %lpad53, %ehcleanup48, %lpad12
  %.pn196 = phi { ptr, i32 } [ %2, %lpad12 ], [ %17, %lpad53 ], [ %29, %lpad95 ], [ %61, %lpad156 ], [ %.pn192.pn.pn, %ehcleanup149 ], [ %.pn188.pn.pn, %ehcleanup130 ], [ %.pn184.pn.pn, %ehcleanup91 ], [ %23, %lpad71 ], [ %.pn.pn.pn, %ehcleanup48 ]
  call void @llvm.lifetime.end.p0(ptr %availBlockLayout)
  call void @llvm.lifetime.end.p0(ptr %totalBlockLayout)
  call void @llvm.lifetime.end.p0(ptr %availBlockSize)
  br label %ehcleanup165

ehcleanup165:                                     ; preds = %ehcleanup161, %lpad
  %.pn198 = phi { ptr, i32 } [ %0, %lpad ], [ %.pn196, %ehcleanup161 ]
  %allocations_ = getelementptr inbounds i8, ptr %this, i32 16
  call void @llvm.lifetime.end.p0(ptr %resInfo)
  call void @_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %free_) #28
  call void @_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %allocations_) #28
  resume { ptr, i32 } %.pn198
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare extern_weak i32 @compute_resource_attr_init_v2(ptr noundef, i32 noundef, i32 noundef) #3

declare extern_weak i32 @compute_resource_attr_init(ptr noundef) #3

declare extern_weak void @HAP_debug_v2(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: inlinehint mustprogress
define internal void @_ZL13_HAP_debug_v2iPKciS0_z(i32 %level, ptr readnone captures(none) %file, i32 noundef %line, ptr noundef readonly captures(none) %format, ...) unnamed_addr #8 {
entry:
  %buf = alloca [256 x i8], align 8
  %args = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(ptr %buf)
  call void @llvm.lifetime.start.p0(ptr %args)
  call void @llvm.va_start.p0(ptr nonnull %args)
  %0 = load ptr, ptr %args, align 4, !tbaa !201
  %call = call i32 @vsnprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef %format, ptr noundef %0) #28
  call void @llvm.va_end.p0(ptr nonnull %args)
  call void @HAP_debug(ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %line)
  call void @llvm.lifetime.end.p0(ptr %args)
  call void @llvm.lifetime.end.p0(ptr %buf)
  ret void
}

declare extern_weak i32 @compute_resource_query_VTCM(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i32 56
  %__loc_.i.i = getelementptr inbounds i8, ptr %this, i32 84
  store ptr null, ptr %__loc_.i.i, align 4, !tbaa !202
  store ptr getelementptr inbounds inrange(-12, 8) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 32), ptr %0, align 4, !tbaa !190
  %__sb_ = getelementptr inbounds i8, ptr %this, i32 4
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4), align 4
  store ptr %1, ptr %this, align 4, !tbaa !190
  %2 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), align 4
  %vbase.offset.ptr.i = getelementptr i8, ptr %1, i32 -12
  %vbase.offset.i = load i32, ptr %vbase.offset.ptr.i, align 4
  %add.ptr.i = getelementptr inbounds i8, ptr %this, i32 %vbase.offset.i
  store ptr %2, ptr %add.ptr.i, align 4, !tbaa !190
  %vtable3.i = load ptr, ptr %this, align 4, !tbaa !190
  %vbase.offset.ptr4.i = getelementptr i8, ptr %vtable3.i, i32 -12
  %vbase.offset5.i = load i32, ptr %vbase.offset.ptr4.i, align 4
  %add.ptr6.i = getelementptr inbounds i8, ptr %this, i32 %vbase.offset5.i
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 4 dereferenceable(72) %add.ptr6.i, ptr noundef nonnull %__sb_)
          to label %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne190000EPNS_15basic_streambufIcS2_EE.exit unwind label %lpad

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne190000EPNS_15basic_streambufIcS2_EE.exit: ; preds = %entry
  %__tie_.i.i = getelementptr inbounds i8, ptr %add.ptr6.i, i32 72
  store ptr null, ptr %__tie_.i.i, align 4, !tbaa !204
  %__fill_.i.i = getelementptr inbounds i8, ptr %add.ptr6.i, i32 76
  store i32 -1, ptr %__fill_.i.i, align 1, !tbaa !207
  store ptr getelementptr inbounds inrange(-12, 8) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), ptr %this, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-12, 8) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 32), ptr %0, align 4, !tbaa !190
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_)
          to label %_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000Ej.exit unwind label %lpad4

_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000Ej.exit: ; preds = %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne190000EPNS_15basic_streambufIcS2_EE.exit
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_, align 4, !tbaa !190
  %__str_.i = getelementptr inbounds i8, ptr %this, i32 36
  %__mode_.i = getelementptr inbounds i8, ptr %this, i32 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %__str_.i, i8 0, i64 16, i1 false)
  store i32 16, ptr %__mode_.i, align 4, !tbaa !208
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad4:                                            ; preds = %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne190000EPNS_15basic_streambufIcS2_EE.exit
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %this, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad4, %lpad
  %.pn = phi { ptr, i32 } [ %4, %lpad4 ], [ %3, %lpad ]
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %__os, ptr noundef %__str, i32 noundef %__len) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp.i.i = alloca %"class.std::__1::basic_ostream.base", align 4
  %__s = alloca %"class.std::__1::basic_ostream<char>::sentry", align 4
  call void @llvm.lifetime.start.p0(ptr %__s)
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 4 dereferenceable(8) %__s, ptr noundef nonnull align 4 dereferenceable(4) %__os)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = load i8, ptr %__s, align 4, !tbaa !215, !range !218, !noundef !219
  %loadedv.i = trunc nuw i8 %0 to i1
  br i1 %loadedv.i, label %if.then, label %if.end28

if.then:                                          ; preds = %invoke.cont
  %vtable.i = load ptr, ptr %__os, align 4, !tbaa !190
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i32 -12
  %vbase.offset.i = load i32, ptr %vbase.offset.ptr.i, align 4
  %add.ptr.i = getelementptr inbounds i8, ptr %__os, i32 %vbase.offset.i
  %__rdbuf_.i.i.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 24
  %1 = load ptr, ptr %__rdbuf_.i.i.i, align 4, !tbaa !220
  %__fmtflags_.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 4
  %2 = load i32, ptr %__fmtflags_.i, align 4, !tbaa !221
  %__fill_.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 76
  %3 = load i32, ptr %__fill_.i, align 1, !tbaa !207
  %cmp.i.not.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190000Ev.exit

if.then.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(ptr %ref.tmp.i.i)
  invoke void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_ostream.base") align 4 %ref.tmp.i.i, ptr noundef nonnull align 4 dereferenceable(72) %add.ptr.i)
          to label %.noexc unwind label %lpad3

.noexc:                                           ; preds = %if.then.i
  %call.i5.i.i = invoke noundef nonnull align 4 dereferenceable(13) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp.i.i, ptr noundef nonnull align 4 dereferenceable(8) @_ZNSt3__15ctypeIcE2idE)
          to label %invoke.cont.i.i unwind label %lpad.i.i

invoke.cont.i.i:                                  ; preds = %.noexc
  %vtable.i.i.i = load ptr, ptr %call.i5.i.i, align 4, !tbaa !190
  %vfn.i.i.i = getelementptr inbounds i8, ptr %vtable.i.i.i, i32 28
  %4 = load ptr, ptr %vfn.i.i.i, align 4
  %call.i6.i.i = invoke noundef zeroext i8 %4(ptr noundef nonnull align 4 dereferenceable(13) %call.i5.i.i, i8 noundef zeroext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190000Ec.exit.i unwind label %lpad.i.i

lpad.i.i:                                         ; preds = %invoke.cont.i.i, %.noexc
  %5 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp.i.i) #28
  call void @llvm.lifetime.end.p0(ptr %ref.tmp.i.i)
  br label %ehcleanup

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190000Ec.exit.i: ; preds = %invoke.cont.i.i
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp.i.i) #28
  call void @llvm.lifetime.end.p0(ptr %ref.tmp.i.i)
  %conv.i = zext i8 %call.i6.i.i to i32
  store i32 %conv.i, ptr %__fill_.i, align 1, !tbaa !207
  br label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190000Ev.exit

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190000Ev.exit: ; preds = %if.then, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190000Ec.exit.i
  %6 = phi i32 [ %conv.i, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190000Ec.exit.i ], [ %3, %if.then ]
  %conv7.i = trunc i32 %6 to i8
  %and = and i32 %2, 176
  %cmp = icmp eq i32 %and, 32
  %add.ptr6 = getelementptr inbounds i8, ptr %__str, i32 %__len
  %cond = select i1 %cmp, ptr %add.ptr6, ptr %__str
  %coerce.val.pi = ptrtoint ptr %1 to i32
  %call19 = invoke i32 @_ZNSt3__116__pad_and_outputB8ne190000IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i32 %coerce.val.pi, ptr noundef %__str, ptr noundef %cond, ptr noundef %add.ptr6, ptr noundef nonnull align 4 dereferenceable(72) %add.ptr.i, i8 noundef zeroext %conv7.i)
          to label %invoke.cont18 unwind label %lpad3

invoke.cont18:                                    ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190000Ev.exit
  %cmp.i = icmp eq i32 %call19, 0
  br i1 %cmp.i, label %if.then22, label %if.end28

if.then22:                                        ; preds = %invoke.cont18
  %vtable23 = load ptr, ptr %__os, align 4, !tbaa !190
  %vbase.offset.ptr24 = getelementptr i8, ptr %vtable23, i32 -12
  %vbase.offset25 = load i32, ptr %vbase.offset.ptr24, align 4
  %add.ptr26 = getelementptr inbounds i8, ptr %__os, i32 %vbase.offset25
  %__rdstate_.i.i = getelementptr inbounds i8, ptr %add.ptr26, i32 16
  %7 = load i32, ptr %__rdstate_.i.i, align 4, !tbaa !222
  %or.i.i = or i32 %7, 5
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 4 dereferenceable(72) %add.ptr26, i32 noundef %or.i.i)
          to label %if.end28 unwind label %lpad1

lpad:                                             ; preds = %entry
  %8 = landingpad { ptr, i32 }
          catch ptr null
  br label %ehcleanup29

lpad1:                                            ; preds = %if.then22
  %9 = landingpad { ptr, i32 }
          catch ptr null
  br label %ehcleanup

lpad3:                                            ; preds = %if.then.i, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190000Ev.exit
  %10 = landingpad { ptr, i32 }
          catch ptr null
  br label %ehcleanup

if.end28:                                         ; preds = %if.then22, %invoke.cont18, %invoke.cont
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 4 dereferenceable(8) %__s) #28
  call void @llvm.lifetime.end.p0(ptr %__s)
  br label %try.cont

ehcleanup:                                        ; preds = %lpad3, %lpad.i.i, %lpad1
  %.pn = phi { ptr, i32 } [ %9, %lpad1 ], [ %10, %lpad3 ], [ %5, %lpad.i.i ]
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 4 dereferenceable(8) %__s) #28
  br label %ehcleanup29

ehcleanup29:                                      ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %8, %lpad ]
  %exn.slot.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr %__s)
  %11 = call ptr @__cxa_begin_catch(ptr %exn.slot.1) #28
  %vtable30 = load ptr, ptr %__os, align 4, !tbaa !190
  %vbase.offset.ptr31 = getelementptr i8, ptr %vtable30, i32 -12
  %vbase.offset32 = load i32, ptr %vbase.offset.ptr31, align 4
  %add.ptr33 = getelementptr inbounds i8, ptr %__os, i32 %vbase.offset32
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 4 dereferenceable(72) %add.ptr33)
          to label %invoke.cont35 unwind label %lpad34

invoke.cont35:                                    ; preds = %ehcleanup29
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %invoke.cont35, %if.end28
  ret ptr %__os

lpad34:                                           ; preds = %ehcleanup29
  %12 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

eh.resume:                                        ; preds = %lpad34
  resume { ptr, i32 } %12

terminate.lpad:                                   ; preds = %lpad34
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #30
  unreachable
}

declare void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 4, ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress
define linkonce_odr hidden void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef %expr, ptr noundef %file, i32 noundef %line, ptr noundef nonnull align 4 dereferenceable(12) %msg) local_unnamed_addr #8 comdat {
entry:
  %call1.i = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) @_ZNSt3__14cerrE, ptr noundef nonnull @.str.32, i32 noundef 7)
  %call.i.i.i11 = tail call noundef i32 @strlen(ptr noundef nonnull dereferenceable(1) %expr) #28
  %call1.i12 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %call1.i, ptr noundef %expr, i32 noundef %call.i.i.i11)
  %call1.i14 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %call1.i12, ptr noundef nonnull @.str.33, i32 noundef 11)
  %call.i.i.i15 = tail call noundef i32 @strlen(ptr noundef nonnull dereferenceable(1) %file) #28
  %call1.i16 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %call1.i14, ptr noundef %file, i32 noundef %call.i.i.i15)
  %call1.i18 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %call1.i16, ptr noundef nonnull @.str.34, i32 noundef 1)
  %call5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 4 dereferenceable(4) %call1.i18, i32 noundef %line)
  %bf.load.i.i.i = load i8, ptr %msg, align 4
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 1
  %tobool.i.not.i.i = icmp eq i8 %bf.clear.i.i.i, 0
  %__size_.i.i.i = getelementptr inbounds i8, ptr %msg, i32 4
  %0 = load i32, ptr %__size_.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i8 %bf.load.i.i.i, 1
  %conv.i.i.i = zext nneg i8 %bf.lshr.i.i.i to i32
  %cond.i.i = select i1 %tobool.i.not.i.i, i32 %conv.i.i.i, i32 %0
  %cmp.i = icmp eq i32 %cond.i.i, 0
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1.i20 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) @_ZNSt3__14cerrE, ptr noundef nonnull @.str.35, i32 noundef 3)
  %bf.load.i.i.i.i = load i8, ptr %msg, align 4
  %bf.clear.i.i.i.i = and i8 %bf.load.i.i.i.i, 1
  %tobool.i.not.i.i.i = icmp eq i8 %bf.clear.i.i.i.i, 0
  %__data_.i.i.i.i = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = load ptr, ptr %__data_.i.i.i.i, align 4
  %__data_.i4.i.i.i = getelementptr inbounds i8, ptr %msg, i32 1
  %cond.i.i.i = select i1 %tobool.i.not.i.i.i, ptr %__data_.i4.i.i.i, ptr %1
  %2 = load i32, ptr %__size_.i.i.i, align 4
  %bf.lshr.i.i.i22 = lshr i8 %bf.load.i.i.i.i, 1
  %conv.i.i.i23 = zext nneg i8 %bf.lshr.i.i.i22 to i32
  %cond.i.i24 = select i1 %tobool.i.not.i.i.i, i32 %conv.i.i.i23, i32 %2
  %call2.i = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %call1.i20, ptr noundef %cond.i.i.i, i32 noundef %cond.i.i24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__14endlB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(ptr noundef nonnull align 4 dereferenceable(4) @_ZNSt3__14cerrE)
  tail call void @abort() #30
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvj(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %this) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %0, ptr %this, align 4, !tbaa !190
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i = getelementptr i8, ptr %0, i32 -12
  %vbase.offset.i = load i32, ptr %vbase.offset.ptr.i, align 4
  %add.ptr.i = getelementptr inbounds i8, ptr %this, i32 %vbase.offset.i
  store ptr %1, ptr %add.ptr.i, align 4, !tbaa !190
  %__sb_.i = getelementptr inbounds i8, ptr %this, i32 4
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i = getelementptr inbounds i8, ptr %this, i32 36
  %bf.load.i.i.i.i = load i8, ptr %__str_.i.i, align 4
  %bf.clear.i.i.i.i = and i8 %bf.load.i.i.i.i, 1
  %tobool.i.not.i.i.i = icmp eq i8 %bf.clear.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  %__data_.i.i.i.i = getelementptr inbounds i8, ptr %this, i32 44
  %2 = load ptr, ptr %__data_.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i = load i32, ptr %__str_.i.i, align 4
  %bf.lshr.i.i.i.i = and i32 %bf.load.i5.i.i.i, -2
  tail call void @_ZdlPvj(ptr noundef %2, i32 noundef %bf.lshr.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %entry, %if.then.i.i.i
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %this, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %3 = getelementptr inbounds i8, ptr %this, i32 56
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %3) #28
  ret void
}

declare extern_weak i32 @compute_resource_attr_set_vtcm_param_v2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare extern_weak i32 @compute_resource_acquire(ptr noundef, i32 noundef) #3

declare extern_weak i32 @compute_resource_attr_get_vtcm_ptr_v2(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: mustprogress noreturn
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) local_unnamed_addr #13 comdat align 2 {
entry:
  tail call void @_ZNSt3__120__throw_length_errorB8ne190000EPKc(ptr noundef nonnull @.str.37) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ne190000v() local_unnamed_addr #14 comdat {
entry:
  %exception = tail call ptr @__cxa_allocate_exception(i32 4) #28
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %exception) #28
  tail call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #31
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwj(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i32, i1 immarg) #16

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load ptr, ptr %this, align 4, !tbaa !223
  %cmp.not.i = icmp eq ptr %0, null
  br i1 %cmp.not.i, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne190000Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %__end_.i.i.i = getelementptr inbounds i8, ptr %this, i32 4
  store ptr %0, ptr %__end_.i.i.i, align 4, !tbaa !200
  %__end_cap_.i.i.i = getelementptr inbounds i8, ptr %this, i32 8
  %1 = load ptr, ptr %__end_cap_.i.i.i, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @_ZdlPvj(ptr noundef nonnull %0, i32 noundef %sub.ptr.sub.i.i) #29
  br label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne190000Ev.exit

_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne190000Ev.exit: ; preds = %entry, %if.then.i
  ret void
}

declare ptr @__cxa_allocate_exception(i32) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress noreturn
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne190000EPKc(ptr noundef %__msg) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
entry:
  %exception = tail call ptr @__cxa_allocate_exception(i32 8) #28
  invoke void @_ZNSt12length_errorC2B8ne190000EPKc(ptr noundef nonnull align 4 dereferenceable(8) %exception, ptr noundef %__msg)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  tail call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #31
  unreachable

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %exception) #28
  resume { ptr, i32 } %0
}

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne190000EPKc(ptr noundef nonnull align 4 dereferenceable(8) %this, ptr noundef %__s) unnamed_addr #6 comdat align 2 {
entry:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 4 dereferenceable(8) %this, ptr noundef %__s)
  store ptr getelementptr inbounds inrange(-8, 12) (i8, ptr @_ZTVSt12length_error, i32 8), ptr %this, align 4, !tbaa !190
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__14endlB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(ptr noundef nonnull align 4 dereferenceable(4) %__os) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp.i = alloca %"class.std::__1::basic_ostream.base", align 4
  %vtable = load ptr, ptr %__os, align 4, !tbaa !190
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i32 -12
  %vbase.offset = load i32, ptr %vbase.offset.ptr, align 4
  %add.ptr = getelementptr inbounds i8, ptr %__os, i32 %vbase.offset
  call void @llvm.lifetime.start.p0(ptr %ref.tmp.i)
  call void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_ostream.base") align 4 %ref.tmp.i, ptr noundef nonnull align 4 dereferenceable(72) %add.ptr)
  %call.i5.i = invoke noundef nonnull align 4 dereferenceable(13) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp.i, ptr noundef nonnull align 4 dereferenceable(8) @_ZNSt3__15ctypeIcE2idE)
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    ; preds = %entry
  %vtable.i.i = load ptr, ptr %call.i5.i, align 4, !tbaa !190
  %vfn.i.i = getelementptr inbounds i8, ptr %vtable.i.i, i32 28
  %0 = load ptr, ptr %vfn.i.i, align 4
  %call.i6.i = invoke noundef zeroext i8 %0(ptr noundef nonnull align 4 dereferenceable(13) %call.i5.i, i8 noundef zeroext 10)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190000Ec.exit unwind label %lpad.i

lpad.i:                                           ; preds = %invoke.cont.i, %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp.i) #28
  call void @llvm.lifetime.end.p0(ptr %ref.tmp.i)
  resume { ptr, i32 } %1

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190000Ec.exit: ; preds = %invoke.cont.i
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp.i) #28
  call void @llvm.lifetime.end.p0(ptr %ref.tmp.i)
  %call1 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 4 dereferenceable(4) %__os, i8 noundef zeroext %call.i6.i)
  %call2 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 4 dereferenceable(4) %__os)
  ret ptr %__os
}

declare void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind writable sret(%"class.std::__1::basic_ostream.base") align 4, ptr noundef nonnull align 4 dereferenceable(72)) local_unnamed_addr #3

declare noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc(ptr noundef nonnull align 4 dereferenceable(4), i8 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

; Function Attrs: mustprogress
define linkonce_odr hidden i32 @_ZNSt3__116__pad_and_outputB8ne190000IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i32 %__s.coerce, ptr noundef %__ob, ptr noundef %__op, ptr noundef %__oe, ptr noundef nonnull align 4 dereferenceable(72) %__iob, i8 noundef zeroext %__fl) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
entry:
  %__sp = alloca %"class.std::__1::basic_string", align 4
  %coerce.val.ip = inttoptr i32 %__s.coerce to ptr
  %cmp = icmp eq i32 %__s.coerce, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %__oe to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %__ob to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %__width_.i = getelementptr inbounds i8, ptr %__iob, i32 12
  %0 = load i32, ptr %__width_.i, align 4, !tbaa !224
  %cmp1 = icmp sgt i32 %0, %sub.ptr.sub
  %sub = sub nsw i32 %0, %sub.ptr.sub
  %spec.select = select i1 %cmp1, i32 %sub, i32 0
  %sub.ptr.lhs.cast4 = ptrtoint ptr %__op to i32
  %sub.ptr.sub6 = sub i32 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast
  %cmp7 = icmp sgt i32 %sub.ptr.sub6, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  %vtable.i = load ptr, ptr %coerce.val.ip, align 4, !tbaa !190
  %vfn.i = getelementptr inbounds i8, ptr %vtable.i, i32 48
  %1 = load ptr, ptr %vfn.i, align 4
  %call.i = tail call noundef i32 %1(ptr noundef nonnull align 4 dereferenceable(32) %coerce.val.ip, ptr noundef %__ob, i32 noundef %sub.ptr.sub6)
  %cmp11.not = icmp eq i32 %call.i, %sub.ptr.sub6
  br i1 %cmp11.not, label %if.end15, label %return

if.end15:                                         ; preds = %if.then8, %if.end
  %cmp16 = icmp sgt i32 %spec.select, 0
  br i1 %cmp16, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(ptr %__sp)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000Ejc(ptr noundef nonnull align 4 dereferenceable(12) %__sp, i32 noundef %spec.select, i8 noundef zeroext %__fl)
  %bf.load.i.i.i = load i8, ptr %__sp, align 4
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 1
  %tobool.i.not.i.i = icmp eq i8 %bf.clear.i.i.i, 0
  %__data_.i.i.i = getelementptr inbounds i8, ptr %__sp, i32 8
  %2 = load ptr, ptr %__data_.i.i.i, align 4
  %__data_.i4.i.i = getelementptr inbounds i8, ptr %__sp, i32 1
  %cond.i.i = select i1 %tobool.i.not.i.i, ptr %__data_.i4.i.i, ptr %2
  %vtable.i72 = load ptr, ptr %coerce.val.ip, align 4, !tbaa !190
  %vfn.i73 = getelementptr inbounds i8, ptr %vtable.i72, i32 48
  %3 = load ptr, ptr %vfn.i73, align 4
  %call.i7475 = invoke noundef i32 %3(ptr noundef nonnull align 4 dereferenceable(32) %coerce.val.ip, ptr noundef %cond.i.i, i32 noundef %spec.select)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then17
  %cmp21.not = icmp eq i32 %call.i7475, %spec.select
  %bf.load.i.i76 = load i8, ptr %__sp, align 4
  %bf.clear.i.i77 = and i8 %bf.load.i.i76, 1
  %tobool.i.not.i78 = icmp eq i8 %bf.clear.i.i77, 0
  br i1 %cmp21.not, label %cleanup.thread, label %cleanup

lpad:                                             ; preds = %if.then17
  %4 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i = load i8, ptr %__sp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %lpad
  %5 = load ptr, ptr %__data_.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %__sp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %5, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %lpad, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %__sp)
  resume { ptr, i32 } %4

cleanup.thread:                                   ; preds = %invoke.cont
  br i1 %tobool.i.not.i78, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit83, label %if.then.i79

if.then.i79:                                      ; preds = %cleanup.thread
  %6 = load ptr, ptr %__data_.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i81 = load i32, ptr %__sp, align 4
  %bf.lshr.i.i82 = and i32 %bf.load.i5.i81, -2
  call void @_ZdlPvj(ptr noundef %6, i32 noundef %bf.lshr.i.i82) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit83

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit83: ; preds = %cleanup.thread, %if.then.i79
  call void @llvm.lifetime.end.p0(ptr %__sp)
  br label %if.end26

cleanup:                                          ; preds = %invoke.cont
  br i1 %tobool.i.not.i78, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91, label %if.then.i87

if.then.i87:                                      ; preds = %cleanup
  %7 = load ptr, ptr %__data_.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i89 = load i32, ptr %__sp, align 4
  %bf.lshr.i.i90 = and i32 %bf.load.i5.i89, -2
  call void @_ZdlPvj(ptr noundef %7, i32 noundef %bf.lshr.i.i90) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91: ; preds = %cleanup, %if.then.i87
  call void @llvm.lifetime.end.p0(ptr %__sp)
  br label %return

if.end26:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit83, %if.end15
  %sub.ptr.sub29 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast4
  %cmp30 = icmp sgt i32 %sub.ptr.sub29, 0
  br i1 %cmp30, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end26
  %vtable.i92 = load ptr, ptr %coerce.val.ip, align 4, !tbaa !190
  %vfn.i93 = getelementptr inbounds i8, ptr %vtable.i92, i32 48
  %8 = load ptr, ptr %vfn.i93, align 4
  %call.i94 = call noundef i32 %8(ptr noundef nonnull align 4 dereferenceable(32) %coerce.val.ip, ptr noundef %__op, i32 noundef %sub.ptr.sub29)
  %cmp34.not = icmp eq i32 %call.i94, %sub.ptr.sub29
  br i1 %cmp34.not, label %if.end38, label %return

if.end38:                                         ; preds = %if.then31, %if.end26
  store i32 0, ptr %__width_.i, align 4, !tbaa !224
  br label %return

return:                                           ; preds = %if.end38, %if.then8, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91, %if.then31, %entry
  %retval.sroa.0.2 = phi i32 [ 0, %entry ], [ %__s.coerce, %if.end38 ], [ 0, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91 ], [ 0, %if.then8 ], [ 0, %if.then31 ]
  ret i32 %retval.sroa.0.2
}

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 4 dereferenceable(72), i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 4 dereferenceable(72)) local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #19 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #28
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000Ejc(ptr noundef nonnull align 4 dereferenceable(12) %this, i32 noundef %__n, i8 noundef zeroext %__c) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %cmp.i = icmp ugt i32 %__n, -9
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) #31
  unreachable

if.end.i:                                         ; preds = %entry
  %cmp.i.i = icmp ult i32 %__n, 11
  br i1 %cmp.i.i, label %if.end9.i, label %if.end9.thread.i

if.end9.thread.i:                                 ; preds = %if.end.i
  %sub.i.i = or i32 %__n, 7
  %add.i = add i32 %sub.i.i, 1
  %call.i5.i.i.i.i = tail call noalias noundef nonnull ptr @_Znwj(i32 noundef %add.i) #32
  %__data_.i23.i = getelementptr inbounds i8, ptr %this, i32 8
  store ptr %call.i5.i.i.i.i, ptr %__data_.i23.i, align 4, !tbaa !189
  %bf.set6.i.i = or disjoint i32 %add.i, 1
  store i32 %bf.set6.i.i, ptr %this, align 4
  %__size_.i.i = getelementptr inbounds i8, ptr %this, i32 4
  store i32 %__n, ptr %__size_.i.i, align 4, !tbaa !189
  br label %for.body.preheader.i.i.i.i

if.end9.i:                                        ; preds = %if.end.i
  %conv.i.i = trunc nuw i32 %__n to i8
  %bf.value.i.i = shl nuw nsw i8 %conv.i.i, 1
  store i8 %bf.value.i.i, ptr %this, align 4
  %__data_.i.i = getelementptr inbounds i8, ptr %this, i32 1
  %cmp.not4.i.i.i.i = icmp eq i32 %__n, 0
  br i1 %cmp.not4.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEjc.exit, label %for.body.preheader.i.i.i.i

for.body.preheader.i.i.i.i:                       ; preds = %if.end9.i, %if.end9.thread.i
  %__p.026.i = phi ptr [ %call.i5.i.i.i.i, %if.end9.thread.i ], [ %__data_.i.i, %if.end9.i ]
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %__p.026.i, i8 %__c, i32 %__n, i1 false), !tbaa !189
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEjc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEjc.exit: ; preds = %if.end9.i, %for.body.preheader.i.i.i.i
  %__p.027.i = phi ptr [ %__data_.i.i, %if.end9.i ], [ %__p.026.i, %for.body.preheader.i.i.i.i ]
  %arrayidx.i = getelementptr inbounds i8, ptr %__p.027.i, i32 %__n
  store i8 0, ptr %arrayidx.i, align 1, !tbaa !189
  ret void
}

; Function Attrs: mustprogress noreturn
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) local_unnamed_addr #13 comdat align 2 {
entry:
  tail call void @_ZNSt3__120__throw_length_errorB8ne190000EPKc(ptr noundef nonnull @.str.36) #31
  unreachable
}

declare void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 4 dereferenceable(72), ptr noundef) local_unnamed_addr #3

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 4 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i32 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #20

declare extern_weak void @HAP_debug(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind
define hidden void @_ZN8VtcmPoolD2Ev(ptr noundef nonnull align 4 dereferenceable(40) %this) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %tobool.not.i = icmp eq ptr @compute_resource_release, null
  br i1 %tobool.not.i, label %do.body2, label %if.then.i

if.then.i:                                        ; preds = %entry
  %contextId_ = getelementptr inbounds i8, ptr %this, i32 12
  %0 = load i32, ptr %contextId_, align 4, !tbaa !198
  %call.i12 = invoke i32 @compute_resource_release(i32 noundef %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then.i
  %cmp.not = icmp eq i32 %call.i12, 0
  br i1 %cmp.not, label %if.end7, label %do.body2

do.body2:                                         ; preds = %entry, %invoke.cont
  %retval.0.i15 = phi i32 [ %call.i12, %invoke.cont ], [ -2147482620, %entry ]
  %cmp3 = icmp eq ptr null, @HAP_debug_v2
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.body2
  invoke void (i32, ptr, i32, ptr, ...) @_ZL13_HAP_debug_v2iPKciS0_z(i32 poison, ptr nonnull poison, i32 noundef 59, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i15)
          to label %do.end unwind label %terminate.lpad

if.else:                                          ; preds = %do.body2
  invoke void (i32, ptr, i32, ptr, ...) @HAP_debug_v2(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 59, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i15)
          to label %do.end unwind label %terminate.lpad

do.end:                                           ; preds = %if.else, %if.then4
  tail call void @abort() #30
  unreachable

if.end7:                                          ; preds = %invoke.cont
  %free_ = getelementptr inbounds i8, ptr %this, i32 28
  %1 = load ptr, ptr %free_, align 4, !tbaa !223
  %cmp.not.i.i = icmp eq ptr %1, null
  br i1 %cmp.not.i.i, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEED2B8ne190000Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end7
  %__end_.i.i.i.i = getelementptr inbounds i8, ptr %this, i32 32
  store ptr %1, ptr %__end_.i.i.i.i, align 4, !tbaa !200
  %__end_cap_.i.i.i.i = getelementptr inbounds i8, ptr %this, i32 36
  %2 = load ptr, ptr %__end_cap_.i.i.i.i, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  tail call void @_ZdlPvj(ptr noundef nonnull %1, i32 noundef %sub.ptr.sub.i.i.i) #29
  br label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEED2B8ne190000Ev.exit

_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEED2B8ne190000Ev.exit: ; preds = %if.end7, %if.then.i.i
  %allocations_ = getelementptr inbounds i8, ptr %this, i32 16
  tail call void @_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %allocations_) #28
  ret void

terminate.lpad:                                   ; preds = %if.then.i, %if.else, %if.then4
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void @__clang_call_terminate(ptr %4) #30
  unreachable
}

declare extern_weak i32 @compute_resource_release(i32 noundef) #3

; Function Attrs: mustprogress
define hidden noundef ptr @_ZN8VtcmPool8AllocateEj(ptr noundef nonnull align 4 dereferenceable(40) %this, i32 noundef %nbytes) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %oss = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp = alloca %"class.std::__1::basic_string", align 4
  %oss10 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp14 = alloca %"class.std::__1::basic_string", align 4
  %oss33 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp37 = alloca %"class.std::__1::basic_string", align 4
  %oss108 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp112 = alloca %"class.std::__1::basic_string", align 4
  %ref.tmp132 = alloca %"struct.std::__1::pair", align 4
  %free_ = getelementptr inbounds i8, ptr %this, i32 28
  %0 = load ptr, ptr %free_, align 4, !tbaa !223
  %__end_.i = getelementptr inbounds i8, ptr %this, i32 32
  %1 = load ptr, ptr %__end_.i, align 4, !tbaa !200
  %cmp.i = icmp eq ptr %0, %1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %oss)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss)
  %call1.i178 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull @.str.14, i32 noundef 14)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  %__sb_.i = getelementptr inbounds i8, ptr %oss, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 63, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  %bf.load.i.i = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont6
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %2 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %2, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont6, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  %3 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %3, ptr %oss, align 4, !tbaa !190
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %3, i32 -12
  %vbase.offset.i.i = load i32, ptr %vbase.offset.ptr.i.i, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %oss, i32 %vbase.offset.i.i
  store ptr %4, ptr %add.ptr.i.i, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i.i = getelementptr inbounds i8, ptr %oss, i32 36
  %bf.load.i.i.i.i.i = load i8, ptr %__str_.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, 1
  %tobool.i.not.i.i.i.i = icmp eq i8 %bf.clear.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %__data_.i.i.i.i.i = getelementptr inbounds i8, ptr %oss, i32 44
  %5 = load ptr, ptr %__data_.i.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i = load i32, ptr %__str_.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = and i32 %bf.load.i5.i.i.i.i, -2
  call void @_ZdlPvj(ptr noundef %5, i32 noundef %bf.lshr.i.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %if.then.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %6 = getelementptr inbounds i8, ptr %oss, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %6) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %if.end

lpad:                                             ; preds = %if.then
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup7

lpad3:                                            ; preds = %invoke.cont
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont4
  %9 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i179 = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i180 = and i8 %bf.load.i.i179, 1
  %tobool.i.not.i181 = icmp eq i8 %bf.clear.i.i180, 0
  br i1 %tobool.i.not.i181, label %ehcleanup, label %if.then.i182

if.then.i182:                                     ; preds = %lpad5
  %__data_.i.i183 = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %10 = load ptr, ptr %__data_.i.i183, align 4, !tbaa !189
  %bf.load.i5.i184 = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i185 = and i32 %bf.load.i5.i184, -2
  call void @_ZdlPvj(ptr noundef %10, i32 noundef %bf.lshr.i.i185) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i182, %lpad5, %lpad3
  %.pn = phi { ptr, i32 } [ %8, %lpad3 ], [ %9, %lpad5 ], [ %9, %if.then.i182 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %ehcleanup7

ehcleanup7:                                       ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %7, %lpad ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %eh.resume

if.end:                                           ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %entry
  %cmp = icmp ugt i32 %nbytes, 127
  br i1 %cmp, label %if.end23, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(ptr %oss10)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss10)
  %call1.i188 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss10, ptr noundef nonnull @.str.16, i32 noundef 62)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %if.then9
  call void @llvm.lifetime.start.p0(ptr %ref.tmp14)
  %__sb_.i190 = getelementptr inbounds i8, ptr %oss10, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp14, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i190)
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %invoke.cont12
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp14)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont16
  %bf.load.i.i192 = load i8, ptr %ref.tmp14, align 4
  %bf.clear.i.i193 = and i8 %bf.load.i.i192, 1
  %tobool.i.not.i194 = icmp eq i8 %bf.clear.i.i193, 0
  br i1 %tobool.i.not.i194, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit199, label %if.then.i195

if.then.i195:                                     ; preds = %invoke.cont18
  %__data_.i.i196 = getelementptr inbounds i8, ptr %ref.tmp14, i32 8
  %11 = load ptr, ptr %__data_.i.i196, align 4, !tbaa !189
  %bf.load.i5.i197 = load i32, ptr %ref.tmp14, align 4
  %bf.lshr.i.i198 = and i32 %bf.load.i5.i197, -2
  call void @_ZdlPvj(ptr noundef %11, i32 noundef %bf.lshr.i.i198) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit199

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit199: ; preds = %invoke.cont18, %if.then.i195
  call void @llvm.lifetime.end.p0(ptr %ref.tmp14)
  %12 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %12, ptr %oss10, align 4, !tbaa !190
  %13 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i200 = getelementptr i8, ptr %12, i32 -12
  %vbase.offset.i.i201 = load i32, ptr %vbase.offset.ptr.i.i200, align 4
  %add.ptr.i.i202 = getelementptr inbounds i8, ptr %oss10, i32 %vbase.offset.i.i201
  store ptr %13, ptr %add.ptr.i.i202, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i190, align 4, !tbaa !190
  %__str_.i.i.i204 = getelementptr inbounds i8, ptr %oss10, i32 36
  %bf.load.i.i.i.i.i205 = load i8, ptr %__str_.i.i.i204, align 4
  %bf.clear.i.i.i.i.i206 = and i8 %bf.load.i.i.i.i.i205, 1
  %tobool.i.not.i.i.i.i207 = icmp eq i8 %bf.clear.i.i.i.i.i206, 0
  br i1 %tobool.i.not.i.i.i.i207, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit212, label %if.then.i.i.i.i208

if.then.i.i.i.i208:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit199
  %__data_.i.i.i.i.i209 = getelementptr inbounds i8, ptr %oss10, i32 44
  %14 = load ptr, ptr %__data_.i.i.i.i.i209, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i210 = load i32, ptr %__str_.i.i.i204, align 4
  %bf.lshr.i.i.i.i.i211 = and i32 %bf.load.i5.i.i.i.i210, -2
  call void @_ZdlPvj(ptr noundef %14, i32 noundef %bf.lshr.i.i.i.i.i211) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit212

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit212: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit199, %if.then.i.i.i.i208
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i190) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss10, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %15 = getelementptr inbounds i8, ptr %oss10, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %15) #28
  call void @llvm.lifetime.end.p0(ptr %oss10)
  br label %if.end23

lpad11:                                           ; preds = %if.then9
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup21

lpad15:                                           ; preds = %invoke.cont12
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup20

lpad17:                                           ; preds = %invoke.cont16
  %18 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i213 = load i8, ptr %ref.tmp14, align 4
  %bf.clear.i.i214 = and i8 %bf.load.i.i213, 1
  %tobool.i.not.i215 = icmp eq i8 %bf.clear.i.i214, 0
  br i1 %tobool.i.not.i215, label %ehcleanup20, label %if.then.i216

if.then.i216:                                     ; preds = %lpad17
  %__data_.i.i217 = getelementptr inbounds i8, ptr %ref.tmp14, i32 8
  %19 = load ptr, ptr %__data_.i.i217, align 4, !tbaa !189
  %bf.load.i5.i218 = load i32, ptr %ref.tmp14, align 4
  %bf.lshr.i.i219 = and i32 %bf.load.i5.i218, -2
  call void @_ZdlPvj(ptr noundef %19, i32 noundef %bf.lshr.i.i219) #29
  br label %ehcleanup20

ehcleanup20:                                      ; preds = %if.then.i216, %lpad17, %lpad15
  %.pn168 = phi { ptr, i32 } [ %17, %lpad15 ], [ %18, %lpad17 ], [ %18, %if.then.i216 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp14)
  br label %ehcleanup21

ehcleanup21:                                      ; preds = %ehcleanup20, %lpad11
  %.pn168.pn = phi { ptr, i32 } [ %.pn168, %ehcleanup20 ], [ %16, %lpad11 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss10) #28
  call void @llvm.lifetime.end.p0(ptr %oss10)
  br label %eh.resume

if.end23:                                         ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit212, %if.end
  %and = and i32 %nbytes, 2047
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end67, label %if.then24

if.then24:                                        ; preds = %if.end23
  %20 = load ptr, ptr %__end_.i, align 4, !tbaa !200
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %20, i32 -8
  %second = getelementptr inbounds i8, ptr %20, i32 -4
  %21 = load i32, ptr %second, align 4, !tbaa !225
  %cmp31.not = icmp ult i32 %21, %nbytes
  br i1 %cmp31.not, label %if.then32, label %if.end46

if.then32:                                        ; preds = %if.then24
  call void @llvm.lifetime.start.p0(ptr %oss33)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss33)
  %call1.i223 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss33, ptr noundef nonnull @.str.18, i32 noundef 57)
          to label %invoke.cont35 unwind label %lpad34

invoke.cont35:                                    ; preds = %if.then32
  call void @llvm.lifetime.start.p0(ptr %ref.tmp37)
  %__sb_.i225 = getelementptr inbounds i8, ptr %oss33, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp37, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i225)
          to label %invoke.cont39 unwind label %lpad38

invoke.cont39:                                    ; preds = %invoke.cont35
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp37)
          to label %invoke.cont41 unwind label %lpad40

invoke.cont41:                                    ; preds = %invoke.cont39
  %bf.load.i.i227 = load i8, ptr %ref.tmp37, align 4
  %bf.clear.i.i228 = and i8 %bf.load.i.i227, 1
  %tobool.i.not.i229 = icmp eq i8 %bf.clear.i.i228, 0
  br i1 %tobool.i.not.i229, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit234, label %if.then.i230

if.then.i230:                                     ; preds = %invoke.cont41
  %__data_.i.i231 = getelementptr inbounds i8, ptr %ref.tmp37, i32 8
  %22 = load ptr, ptr %__data_.i.i231, align 4, !tbaa !189
  %bf.load.i5.i232 = load i32, ptr %ref.tmp37, align 4
  %bf.lshr.i.i233 = and i32 %bf.load.i5.i232, -2
  call void @_ZdlPvj(ptr noundef %22, i32 noundef %bf.lshr.i.i233) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit234

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit234: ; preds = %invoke.cont41, %if.then.i230
  call void @llvm.lifetime.end.p0(ptr %ref.tmp37)
  %23 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %23, ptr %oss33, align 4, !tbaa !190
  %24 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i235 = getelementptr i8, ptr %23, i32 -12
  %vbase.offset.i.i236 = load i32, ptr %vbase.offset.ptr.i.i235, align 4
  %add.ptr.i.i237 = getelementptr inbounds i8, ptr %oss33, i32 %vbase.offset.i.i236
  store ptr %24, ptr %add.ptr.i.i237, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i225, align 4, !tbaa !190
  %__str_.i.i.i239 = getelementptr inbounds i8, ptr %oss33, i32 36
  %bf.load.i.i.i.i.i240 = load i8, ptr %__str_.i.i.i239, align 4
  %bf.clear.i.i.i.i.i241 = and i8 %bf.load.i.i.i.i.i240, 1
  %tobool.i.not.i.i.i.i242 = icmp eq i8 %bf.clear.i.i.i.i.i241, 0
  br i1 %tobool.i.not.i.i.i.i242, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit247, label %if.then.i.i.i.i243

if.then.i.i.i.i243:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit234
  %__data_.i.i.i.i.i244 = getelementptr inbounds i8, ptr %oss33, i32 44
  %25 = load ptr, ptr %__data_.i.i.i.i.i244, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i245 = load i32, ptr %__str_.i.i.i239, align 4
  %bf.lshr.i.i.i.i.i246 = and i32 %bf.load.i5.i.i.i.i245, -2
  call void @_ZdlPvj(ptr noundef %25, i32 noundef %bf.lshr.i.i.i.i.i246) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit247

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit247: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit234, %if.then.i.i.i.i243
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i225) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss33, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %26 = getelementptr inbounds i8, ptr %oss33, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %26) #28
  call void @llvm.lifetime.end.p0(ptr %oss33)
  %.pre = load i32, ptr %second, align 4, !tbaa !225
  br label %if.end46

lpad34:                                           ; preds = %if.then32
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup44

lpad38:                                           ; preds = %invoke.cont35
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup43

lpad40:                                           ; preds = %invoke.cont39
  %29 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i248 = load i8, ptr %ref.tmp37, align 4
  %bf.clear.i.i249 = and i8 %bf.load.i.i248, 1
  %tobool.i.not.i250 = icmp eq i8 %bf.clear.i.i249, 0
  br i1 %tobool.i.not.i250, label %ehcleanup43, label %if.then.i251

if.then.i251:                                     ; preds = %lpad40
  %__data_.i.i252 = getelementptr inbounds i8, ptr %ref.tmp37, i32 8
  %30 = load ptr, ptr %__data_.i.i252, align 4, !tbaa !189
  %bf.load.i5.i253 = load i32, ptr %ref.tmp37, align 4
  %bf.lshr.i.i254 = and i32 %bf.load.i5.i253, -2
  call void @_ZdlPvj(ptr noundef %30, i32 noundef %bf.lshr.i.i254) #29
  br label %ehcleanup43

ehcleanup43:                                      ; preds = %if.then.i251, %lpad40, %lpad38
  %.pn174 = phi { ptr, i32 } [ %28, %lpad38 ], [ %29, %lpad40 ], [ %29, %if.then.i251 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp37)
  br label %ehcleanup44

ehcleanup44:                                      ; preds = %ehcleanup43, %lpad34
  %.pn174.pn = phi { ptr, i32 } [ %.pn174, %ehcleanup43 ], [ %27, %lpad34 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss33) #28
  call void @llvm.lifetime.end.p0(ptr %oss33)
  br label %eh.resume

if.end46:                                         ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit247, %if.then24
  %31 = phi i32 [ %.pre, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit247 ], [ %21, %if.then24 ]
  %32 = load ptr, ptr %incdec.ptr.i.i, align 4, !tbaa !227
  %sub = sub i32 %31, %nbytes
  %add.ptr = getelementptr inbounds i8, ptr %32, i32 %sub
  %allocations_ = getelementptr inbounds i8, ptr %this, i32 16
  %__end_.i256 = getelementptr inbounds i8, ptr %this, i32 20
  %33 = load ptr, ptr %__end_.i256, align 4, !tbaa !200
  %__end_cap_.i.i = getelementptr inbounds i8, ptr %this, i32 24
  %34 = load ptr, ptr %__end_cap_.i.i, align 4, !tbaa !201
  %cmp.i257 = icmp ult ptr %33, %34
  br i1 %cmp.i257, label %if.then.i258, label %if.else.i

if.then.i258:                                     ; preds = %if.end46
  %35 = ptrtoint ptr %add.ptr to i32
  store i32 %35, ptr %33, align 4
  %.sroa_idx = getelementptr inbounds i8, ptr %33, i32 4
  store i32 %nbytes, ptr %.sroa_idx, align 4
  %incdec.ptr.i.i259 = getelementptr inbounds i8, ptr %33, i32 8
  br label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit

if.else.i:                                        ; preds = %if.end46
  %36 = load ptr, ptr %allocations_, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 3
  %add.i.i = add nsw i32 %sub.ptr.div.i.i.i, 1
  %cmp.i.i.i = icmp ugt i32 %add.i.i, 536870911
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  call void @_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %allocations_) #31
  unreachable

_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit.i.i: ; preds = %if.else.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %cmp3.not.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, 2147483640
  %mul.i.i.i = lshr exact i32 %sub.ptr.sub.i.i.i.i, 2
  %37 = call i32 @llvm.umax.i32(i32 %mul.i.i.i, i32 %add.i.i)
  %retval.0.i.i.i = select i1 %cmp3.not.i.i.i, i32 %37, i32 536870911
  %cmp.i17.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %cmp.i17.i.i, label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit.i.i
  %cmp.i.i.i.i.i = icmp ugt i32 %retval.0.i.i.i, 536870911
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.else.i.i.i
  call void @_ZSt28__throw_bad_array_new_lengthB8ne190000v() #31
  unreachable

_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i.i.i: ; preds = %if.else.i.i.i
  %mul.i.i.i.i.i = shl nuw i32 %retval.0.i.i.i, 3
  %call.i5.i.i.i.i.i.i = call noalias noundef nonnull ptr @_Znwj(i32 noundef %mul.i.i.i.i.i) #32
  br label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i

_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i.i.i, %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit.i.i
  %storemerge.i.i.i = phi ptr [ %call.i5.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i.i.i ], [ null, %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds %"struct.std::__1::pair", ptr %storemerge.i.i.i, i32 %sub.ptr.div.i.i.i
  %add.ptr6.i.i.i = getelementptr inbounds %"struct.std::__1::pair", ptr %storemerge.i.i.i, i32 %retval.0.i.i.i
  %38 = ptrtoint ptr %add.ptr to i32
  store i32 %38, ptr %add.ptr.i.i.i, align 4
  %add.ptr.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 4
  store i32 %nbytes, ptr %add.ptr.i.i.i.sroa_idx, align 4
  %incdec.ptr.i9.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %storemerge.i.i.i, ptr align 4 %36, i32 %sub.ptr.sub.i.i.i, i1 false)
  store ptr %storemerge.i.i.i, ptr %allocations_, align 4, !tbaa !201
  store ptr %incdec.ptr.i9.i, ptr %__end_.i256, align 4, !tbaa !201
  store ptr %add.ptr6.i.i.i, ptr %__end_cap_.i.i, align 4, !tbaa !201
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit, label %if.then.i26.i.i

if.then.i26.i.i:                                  ; preds = %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i
  call void @_ZdlPvj(ptr noundef nonnull %36, i32 noundef %sub.ptr.sub.i.i.i.i) #29
  br label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %if.then.i258, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i, %if.then.i26.i.i
  %__end.0.i = phi ptr [ %incdec.ptr.i.i259, %if.then.i258 ], [ %incdec.ptr.i9.i, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.i.i ], [ %incdec.ptr.i9.i, %if.then.i26.i.i ]
  store ptr %__end.0.i, ptr %__end_.i256, align 4, !tbaa !200
  %39 = load i32, ptr %second, align 4, !tbaa !225
  %sub54 = sub i32 %39, %nbytes
  store i32 %sub54, ptr %second, align 4, !tbaa !225
  %cmp57 = icmp eq i32 %39, %nbytes
  br i1 %cmp57, label %if.then58, label %return

if.then58:                                        ; preds = %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit
  %coerce.val.pi = ptrtoint ptr %incdec.ptr.i.i to i32
  %40 = load ptr, ptr %free_, align 4, !tbaa !223
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i = sub i32 %coerce.val.pi, %sub.ptr.rhs.cast.i.i
  %add.ptr.i260 = getelementptr inbounds i8, ptr %40, i32 %sub.ptr.sub.i.i
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr.i260, i32 8
  %41 = load ptr, ptr %__end_.i, align 4, !tbaa !200
  %cmp.not10.i.i.i = icmp eq ptr %add.ptr5.i, %41
  br i1 %cmp.not10.i.i.i, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.then58, %while.body.i.i.i
  %storemerge12.i.i.i = phi ptr [ %incdec.ptr3.i.i.i, %while.body.i.i.i ], [ %add.ptr.i260, %if.then58 ]
  %__first.addr.011.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i ], [ %add.ptr5.i, %if.then58 ]
  %42 = load ptr, ptr %__first.addr.011.i.i.i, align 4, !tbaa !201
  store ptr %42, ptr %storemerge12.i.i.i, align 4, !tbaa !227
  %second.i.i.i.i = getelementptr inbounds i8, ptr %__first.addr.011.i.i.i, i32 4
  %43 = load i32, ptr %second.i.i.i.i, align 4, !tbaa !184
  %second3.i.i.i.i = getelementptr inbounds i8, ptr %storemerge12.i.i.i, i32 4
  store i32 %43, ptr %second3.i.i.i.i, align 4, !tbaa !225
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %__first.addr.011.i.i.i, i32 8
  %incdec.ptr3.i.i.i = getelementptr inbounds i8, ptr %storemerge12.i.i.i, i32 8
  %cmp.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %41
  br i1 %cmp.not.i.i.i, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit, label %while.body.i.i.i, !llvm.loop !228

_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit: ; preds = %while.body.i.i.i, %if.then58
  %storemerge.lcssa.i.i.i = phi ptr [ %add.ptr.i260, %if.then58 ], [ %incdec.ptr3.i.i.i, %while.body.i.i.i ]
  store ptr %storemerge.lcssa.i.i.i, ptr %__end_.i, align 4, !tbaa !200
  br label %return

if.end67:                                         ; preds = %if.end23
  %44 = load ptr, ptr %free_, align 4, !tbaa !223
  %45 = load ptr, ptr %__end_.i, align 4, !tbaa !200
  %cmp.i.i.not347 = icmp eq ptr %44, %45
  br i1 %cmp.i.i.not347, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end67, %for.inc
  %storemerge349 = phi ptr [ %incdec.ptr.i.i267, %for.inc ], [ %44, %if.end67 ]
  %entryToAllocate.sroa.0.0348 = phi ptr [ %entryToAllocate.sroa.0.1, %for.inc ], [ %44, %if.end67 ]
  %second83 = getelementptr inbounds i8, ptr %entryToAllocate.sroa.0.0348, i32 4
  %46 = load i32, ptr %second83, align 4, !tbaa !225
  %cmp84 = icmp ult i32 %46, %nbytes
  br i1 %cmp84, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  %second91.phi.trans.insert = getelementptr inbounds i8, ptr %storemerge349, i32 4
  %.pre351 = load i32, ptr %second91.phi.trans.insert, align 4, !tbaa !225
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %second86 = getelementptr inbounds i8, ptr %storemerge349, i32 4
  %47 = load i32, ptr %second86, align 4, !tbaa !225
  %cmp89 = icmp ult i32 %47, %46
  br i1 %cmp89, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body.land.lhs.true_crit_edge, %lor.lhs.false
  %48 = phi i32 [ %.pre351, %for.body.land.lhs.true_crit_edge ], [ %47, %lor.lhs.false ]
  %cmp92.not = icmp ult i32 %48, %nbytes
  br i1 %cmp92.not, label %for.inc, label %if.then93

if.then93:                                        ; preds = %land.lhs.true
  %cmp96 = icmp eq i32 %48, %nbytes
  br i1 %cmp96, label %cleanup, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %land.lhs.true, %if.then93
  %entryToAllocate.sroa.0.1 = phi ptr [ %entryToAllocate.sroa.0.0348, %land.lhs.true ], [ %storemerge349, %if.then93 ], [ %entryToAllocate.sroa.0.0348, %lor.lhs.false ]
  %incdec.ptr.i.i267 = getelementptr inbounds i8, ptr %storemerge349, i32 8
  %cmp.i.i.not = icmp eq ptr %incdec.ptr.i.i267, %45
  br i1 %cmp.i.i.not, label %cleanup, label %for.body, !llvm.loop !229

cleanup:                                          ; preds = %for.inc, %if.then93, %if.end67
  %entryToAllocate.sroa.0.2 = phi ptr [ %44, %if.end67 ], [ %entryToAllocate.sroa.0.1, %for.inc ], [ %storemerge349, %if.then93 ]
  %second105 = getelementptr inbounds i8, ptr %entryToAllocate.sroa.0.2, i32 4
  %49 = load i32, ptr %second105, align 4, !tbaa !225
  %cmp106.not = icmp ult i32 %49, %nbytes
  br i1 %cmp106.not, label %if.then107, label %if.end121

if.then107:                                       ; preds = %cleanup
  call void @llvm.lifetime.start.p0(ptr %oss108)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss108)
  %call1.i270 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss108, ptr noundef nonnull @.str.20, i32 noundef 46)
          to label %invoke.cont110 unwind label %lpad109

invoke.cont110:                                   ; preds = %if.then107
  call void @llvm.lifetime.start.p0(ptr %ref.tmp112)
  %__sb_.i272 = getelementptr inbounds i8, ptr %oss108, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp112, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i272)
          to label %invoke.cont114 unwind label %lpad113

invoke.cont114:                                   ; preds = %invoke.cont110
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str, i32 noundef 94, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp112)
          to label %invoke.cont116 unwind label %lpad115

invoke.cont116:                                   ; preds = %invoke.cont114
  %bf.load.i.i274 = load i8, ptr %ref.tmp112, align 4
  %bf.clear.i.i275 = and i8 %bf.load.i.i274, 1
  %tobool.i.not.i276 = icmp eq i8 %bf.clear.i.i275, 0
  br i1 %tobool.i.not.i276, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281, label %if.then.i277

if.then.i277:                                     ; preds = %invoke.cont116
  %__data_.i.i278 = getelementptr inbounds i8, ptr %ref.tmp112, i32 8
  %50 = load ptr, ptr %__data_.i.i278, align 4, !tbaa !189
  %bf.load.i5.i279 = load i32, ptr %ref.tmp112, align 4
  %bf.lshr.i.i280 = and i32 %bf.load.i5.i279, -2
  call void @_ZdlPvj(ptr noundef %50, i32 noundef %bf.lshr.i.i280) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281: ; preds = %invoke.cont116, %if.then.i277
  call void @llvm.lifetime.end.p0(ptr %ref.tmp112)
  %51 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %51, ptr %oss108, align 4, !tbaa !190
  %52 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i282 = getelementptr i8, ptr %51, i32 -12
  %vbase.offset.i.i283 = load i32, ptr %vbase.offset.ptr.i.i282, align 4
  %add.ptr.i.i284 = getelementptr inbounds i8, ptr %oss108, i32 %vbase.offset.i.i283
  store ptr %52, ptr %add.ptr.i.i284, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i272, align 4, !tbaa !190
  %__str_.i.i.i286 = getelementptr inbounds i8, ptr %oss108, i32 36
  %bf.load.i.i.i.i.i287 = load i8, ptr %__str_.i.i.i286, align 4
  %bf.clear.i.i.i.i.i288 = and i8 %bf.load.i.i.i.i.i287, 1
  %tobool.i.not.i.i.i.i289 = icmp eq i8 %bf.clear.i.i.i.i.i288, 0
  br i1 %tobool.i.not.i.i.i.i289, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit294, label %if.then.i.i.i.i290

if.then.i.i.i.i290:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281
  %__data_.i.i.i.i.i291 = getelementptr inbounds i8, ptr %oss108, i32 44
  %53 = load ptr, ptr %__data_.i.i.i.i.i291, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i292 = load i32, ptr %__str_.i.i.i286, align 4
  %bf.lshr.i.i.i.i.i293 = and i32 %bf.load.i5.i.i.i.i292, -2
  call void @_ZdlPvj(ptr noundef %53, i32 noundef %bf.lshr.i.i.i.i.i293) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit294

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit294: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281, %if.then.i.i.i.i290
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i272) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss108, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %54 = getelementptr inbounds i8, ptr %oss108, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %54) #28
  call void @llvm.lifetime.end.p0(ptr %oss108)
  br label %if.end121

lpad109:                                          ; preds = %if.then107
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup119

lpad113:                                          ; preds = %invoke.cont110
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup118

lpad115:                                          ; preds = %invoke.cont114
  %57 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i295 = load i8, ptr %ref.tmp112, align 4
  %bf.clear.i.i296 = and i8 %bf.load.i.i295, 1
  %tobool.i.not.i297 = icmp eq i8 %bf.clear.i.i296, 0
  br i1 %tobool.i.not.i297, label %ehcleanup118, label %if.then.i298

if.then.i298:                                     ; preds = %lpad115
  %__data_.i.i299 = getelementptr inbounds i8, ptr %ref.tmp112, i32 8
  %58 = load ptr, ptr %__data_.i.i299, align 4, !tbaa !189
  %bf.load.i5.i300 = load i32, ptr %ref.tmp112, align 4
  %bf.lshr.i.i301 = and i32 %bf.load.i5.i300, -2
  call void @_ZdlPvj(ptr noundef %58, i32 noundef %bf.lshr.i.i301) #29
  br label %ehcleanup118

ehcleanup118:                                     ; preds = %if.then.i298, %lpad115, %lpad113
  %.pn171 = phi { ptr, i32 } [ %56, %lpad113 ], [ %57, %lpad115 ], [ %57, %if.then.i298 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp112)
  br label %ehcleanup119

ehcleanup119:                                     ; preds = %ehcleanup118, %lpad109
  %.pn171.pn = phi { ptr, i32 } [ %.pn171, %ehcleanup118 ], [ %55, %lpad109 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss108) #28
  call void @llvm.lifetime.end.p0(ptr %oss108)
  br label %eh.resume

if.end121:                                        ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit294, %cleanup
  %59 = load ptr, ptr %entryToAllocate.sroa.0.2, align 4, !tbaa !227
  %allocations_125 = getelementptr inbounds i8, ptr %this, i32 16
  %__end_.i303 = getelementptr inbounds i8, ptr %this, i32 20
  %60 = load ptr, ptr %__end_.i303, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr %ref.tmp132)
  store ptr %59, ptr %ref.tmp132, align 4, !tbaa !227
  %second.i305 = getelementptr inbounds i8, ptr %ref.tmp132, i32 4
  store i32 %nbytes, ptr %second.i305, align 4, !tbaa !225
  %coerce.val.pi134 = ptrtoint ptr %60 to i32
  %call135 = call i32 @_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE7emplaceIJS3_EEENS_11__wrap_iterIPS3_EENS8_IPKS3_EEDpOT_(ptr noundef nonnull align 4 dereferenceable(12) %allocations_125, i32 %coerce.val.pi134, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp132)
  call void @llvm.lifetime.end.p0(ptr %ref.tmp132)
  %61 = load i32, ptr %second105, align 4, !tbaa !225
  %cmp141 = icmp eq i32 %61, %nbytes
  br i1 %cmp141, label %if.then142, label %if.else

if.then142:                                       ; preds = %if.end121
  %coerce.val.pi146 = ptrtoint ptr %entryToAllocate.sroa.0.2 to i32
  %62 = load ptr, ptr %free_, align 4, !tbaa !223
  %sub.ptr.rhs.cast.i.i306 = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i.i307 = sub i32 %coerce.val.pi146, %sub.ptr.rhs.cast.i.i306
  %add.ptr.i308 = getelementptr inbounds i8, ptr %62, i32 %sub.ptr.sub.i.i307
  %add.ptr5.i309 = getelementptr inbounds i8, ptr %add.ptr.i308, i32 8
  %63 = load ptr, ptr %__end_.i, align 4, !tbaa !200
  %cmp.not10.i.i.i311 = icmp eq ptr %add.ptr5.i309, %63
  br i1 %cmp.not10.i.i.i311, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit321, label %while.body.i.i.i312

while.body.i.i.i312:                              ; preds = %if.then142, %while.body.i.i.i312
  %storemerge12.i.i.i313 = phi ptr [ %incdec.ptr3.i.i.i318, %while.body.i.i.i312 ], [ %add.ptr.i308, %if.then142 ]
  %__first.addr.011.i.i.i314 = phi ptr [ %incdec.ptr.i.i.i317, %while.body.i.i.i312 ], [ %add.ptr5.i309, %if.then142 ]
  %64 = load ptr, ptr %__first.addr.011.i.i.i314, align 4, !tbaa !201
  store ptr %64, ptr %storemerge12.i.i.i313, align 4, !tbaa !227
  %second.i.i.i.i315 = getelementptr inbounds i8, ptr %__first.addr.011.i.i.i314, i32 4
  %65 = load i32, ptr %second.i.i.i.i315, align 4, !tbaa !184
  %second3.i.i.i.i316 = getelementptr inbounds i8, ptr %storemerge12.i.i.i313, i32 4
  store i32 %65, ptr %second3.i.i.i.i316, align 4, !tbaa !225
  %incdec.ptr.i.i.i317 = getelementptr inbounds i8, ptr %__first.addr.011.i.i.i314, i32 8
  %incdec.ptr3.i.i.i318 = getelementptr inbounds i8, ptr %storemerge12.i.i.i313, i32 8
  %cmp.not.i.i.i319 = icmp eq ptr %incdec.ptr.i.i.i317, %63
  br i1 %cmp.not.i.i.i319, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit321, label %while.body.i.i.i312, !llvm.loop !228

_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit321: ; preds = %while.body.i.i.i312, %if.then142
  %storemerge.lcssa.i.i.i320 = phi ptr [ %add.ptr.i308, %if.then142 ], [ %incdec.ptr3.i.i.i318, %while.body.i.i.i312 ]
  store ptr %storemerge.lcssa.i.i.i320, ptr %__end_.i, align 4, !tbaa !200
  br label %return

if.else:                                          ; preds = %if.end121
  %66 = load ptr, ptr %entryToAllocate.sroa.0.2, align 4, !tbaa !227
  %add.ptr153 = getelementptr inbounds i8, ptr %66, i32 %nbytes
  store ptr %add.ptr153, ptr %entryToAllocate.sroa.0.2, align 4, !tbaa !227
  %sub158 = sub i32 %61, %nbytes
  store i32 %sub158, ptr %second105, align 4, !tbaa !225
  br label %return

return:                                           ; preds = %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit321, %if.else, %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit, %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit
  %retval.0 = phi ptr [ %add.ptr, %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit ], [ %add.ptr, %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %59, %if.else ], [ %59, %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit321 ]
  ret ptr %retval.0

eh.resume:                                        ; preds = %ehcleanup119, %ehcleanup44, %ehcleanup21, %ehcleanup7
  %.pn174.pn.pn = phi { ptr, i32 } [ %.pn174.pn, %ehcleanup44 ], [ %.pn171.pn, %ehcleanup119 ], [ %.pn168.pn, %ehcleanup21 ], [ %.pn.pn, %ehcleanup7 ]
  resume { ptr, i32 } %.pn174.pn.pn
}

; Function Attrs: mustprogress
define linkonce_odr hidden i32 @_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE7emplaceIJS3_EEENS_11__wrap_iterIPS3_EENS8_IPKS3_EEDpOT_(ptr noundef nonnull align 4 dereferenceable(12) %this, i32 %__position.coerce, ptr noundef nonnull align 4 dereferenceable(8) %__args) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__v = alloca %"struct.std::__1::__split_buffer", align 4
  %0 = load ptr, ptr %this, align 4, !tbaa !223
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %__position.coerce, %sub.ptr.rhs.cast.i
  %add.ptr = getelementptr inbounds i8, ptr %0, i32 %sub.ptr.sub.i
  %__end_ = getelementptr inbounds i8, ptr %this, i32 4
  %1 = load ptr, ptr %__end_, align 4, !tbaa !200
  %__end_cap_.i = getelementptr inbounds i8, ptr %this, i32 8
  %2 = load ptr, ptr %__end_cap_.i, align 4, !tbaa !201
  %cmp = icmp ult ptr %1, %2
  br i1 %cmp, label %if.then, label %if.else15

if.then:                                          ; preds = %entry
  %cmp7 = icmp eq ptr %add.ptr, %1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %3 = load i64, ptr %__args, align 4
  store i64 %3, ptr %1, align 4
  %incdec.ptr.i = getelementptr inbounds i8, ptr %1, i32 8
  store ptr %incdec.ptr.i, ptr %__end_, align 4, !tbaa !200
  br label %if.end24

if.else:                                          ; preds = %if.then
  %4 = load i32, ptr %__args, align 4
  %__args.sroa_idx = getelementptr inbounds i8, ptr %__args, i32 4
  %5 = load i32, ptr %__args.sroa_idx, align 4
  %6 = inttoptr i32 %4 to ptr
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i32 8
  %sub.ptr.lhs.cast.i40 = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i41 = ptrtoint ptr %add.ptr11 to i32
  %sub.ptr.sub.i42 = sub i32 %sub.ptr.lhs.cast.i40, %sub.ptr.rhs.cast.i41
  %add.ptr.i = getelementptr inbounds i8, ptr %add.ptr, i32 %sub.ptr.sub.i42
  %cmp26.i = icmp ult ptr %add.ptr.i, %1
  br i1 %cmp26.i, label %for.body.i.preheader, label %for.cond.cleanup.i

for.body.i.preheader:                             ; preds = %if.else
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %1, i32 8
  %7 = load i64, ptr %add.ptr.i, align 4
  store i64 %7, ptr %1, align 4
  br label %for.cond.cleanup.i

for.cond.cleanup.i:                               ; preds = %for.body.i.preheader, %if.else
  %__tx.sroa.4.0.lcssa.i = phi ptr [ %1, %if.else ], [ %incdec.ptr7.i, %for.body.i.preheader ]
  store ptr %__tx.sroa.4.0.lcssa.i, ptr %__end_, align 4, !tbaa !200
  %cmp.not8.i.i = icmp eq ptr %1, %add.ptr11
  br i1 %cmp.not8.i.i, label %_ZNSt3__124__copy_move_unwrap_itersB8ne190000INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPNS_4pairIPcjEES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS4_IS9_SA_EES9_T1_SA_.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %for.cond.cleanup.i, %while.body.i.i
  %__result.addr.010.i.i = phi ptr [ %incdec.ptr3.i.i, %while.body.i.i ], [ %1, %for.cond.cleanup.i ]
  %__last_iter.09.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i ], [ %add.ptr.i, %for.cond.cleanup.i ]
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %__last_iter.09.i.i, i32 -8
  %incdec.ptr3.i.i = getelementptr inbounds i8, ptr %__result.addr.010.i.i, i32 -8
  %8 = load ptr, ptr %incdec.ptr.i.i, align 4, !tbaa !201
  store ptr %8, ptr %incdec.ptr3.i.i, align 4, !tbaa !227
  %second.i.i.i = getelementptr inbounds i8, ptr %__last_iter.09.i.i, i32 -4
  %9 = load i32, ptr %second.i.i.i, align 4, !tbaa !184
  %second3.i.i.i = getelementptr inbounds i8, ptr %__result.addr.010.i.i, i32 -4
  store i32 %9, ptr %second3.i.i.i, align 4, !tbaa !225
  %cmp.not.i.i = icmp eq ptr %incdec.ptr.i.i, %add.ptr
  br i1 %cmp.not.i.i, label %_ZNSt3__124__copy_move_unwrap_itersB8ne190000INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPNS_4pairIPcjEES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS4_IS9_SA_EES9_T1_SA_.exit, label %while.body.i.i, !llvm.loop !230

_ZNSt3__124__copy_move_unwrap_itersB8ne190000INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPNS_4pairIPcjEES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS4_IS9_SA_EES9_T1_SA_.exit: ; preds = %while.body.i.i, %for.cond.cleanup.i
  store ptr %6, ptr %add.ptr, align 4, !tbaa !227
  %second3.i = getelementptr inbounds i8, ptr %add.ptr, i32 4
  store i32 %5, ptr %second3.i, align 4, !tbaa !225
  br label %if.end24

if.else15:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %__v)
  %sub.ptr.lhs.cast.i47 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i49 = sub i32 %sub.ptr.lhs.cast.i47, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i50 = ashr exact i32 %sub.ptr.sub.i49, 3
  %add = add nsw i32 %sub.ptr.div.i50, 1
  %cmp.i51 = icmp ugt i32 %add, 536870911
  br i1 %cmp.i51, label %if.then.i, label %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit

if.then.i:                                        ; preds = %if.else15
  tail call void @_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) #31
  unreachable

_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit: ; preds = %if.else15
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i
  %cmp3.not.i = icmp ult i32 %sub.ptr.sub.i.i, 2147483640
  %mul.i = lshr exact i32 %sub.ptr.sub.i.i, 2
  %10 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 %add)
  %retval.0.i = select i1 %cmp3.not.i, i32 %10, i32 536870911
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub.i, 3
  %__end_cap_.i52 = getelementptr inbounds i8, ptr %__v, i32 12
  %11 = getelementptr inbounds i8, ptr %__v, i32 16
  store ptr %__end_cap_.i, ptr %11, align 4, !tbaa !201
  %cmp.i53 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp.i53, label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit, label %if.else.i

if.else.i:                                        ; preds = %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit
  %cmp.i.i.i = icmp ugt i32 %retval.0.i, 536870911
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i

if.then.i.i.i:                                    ; preds = %if.else.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne190000v() #31
  unreachable

_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i: ; preds = %if.else.i
  %mul.i.i.i = shl nuw i32 %retval.0.i, 3
  %call.i5.i.i.i.i = tail call noalias noundef nonnull ptr @_Znwj(i32 noundef %mul.i.i.i) #32
  br label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit

_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit: ; preds = %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i
  %storemerge.i = phi ptr [ %call.i5.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i ], [ null, %_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE11__recommendB8ne190000Ej.exit ]
  store ptr %storemerge.i, ptr %__v, align 4, !tbaa !231
  %add.ptr.i54 = getelementptr inbounds %"struct.std::__1::pair", ptr %storemerge.i, i32 %sub.ptr.div
  %__end_.i55 = getelementptr inbounds i8, ptr %__v, i32 8
  store ptr %add.ptr.i54, ptr %__end_.i55, align 4, !tbaa !235
  %__begin_.i = getelementptr inbounds i8, ptr %__v, i32 4
  store ptr %add.ptr.i54, ptr %__begin_.i, align 4, !tbaa !236
  %add.ptr6.i = getelementptr inbounds %"struct.std::__1::pair", ptr %storemerge.i, i32 %retval.0.i
  store ptr %add.ptr6.i, ptr %__end_cap_.i52, align 4, !tbaa !201
  invoke void @_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE12emplace_backIJS3_EEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(20) %__v, ptr noundef nonnull align 4 dereferenceable(8) %__args)
          to label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i unwind label %lpad20

_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i: ; preds = %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit
  %12 = load ptr, ptr %__begin_.i, align 4, !tbaa !236
  %13 = load ptr, ptr %__end_, align 4, !tbaa !200
  %14 = load ptr, ptr %__end_.i55, align 4, !tbaa !235
  %sub.ptr.lhs.cast.i.i58 = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i60 = sub i32 %sub.ptr.lhs.cast.i.i58, %__position.coerce
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %14, ptr align 4 %add.ptr, i32 %sub.ptr.sub.i.i60, i1 false)
  %15 = load ptr, ptr %__end_, align 4, !tbaa !200
  %sub.ptr.lhs.cast.i61 = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i62 = sub i32 %sub.ptr.lhs.cast.i61, %__position.coerce
  %16 = load ptr, ptr %__end_.i55, align 4, !tbaa !235
  %add.ptr.i63 = getelementptr inbounds i8, ptr %16, i32 %sub.ptr.sub.i62
  store ptr %add.ptr.i63, ptr %__end_.i55, align 4, !tbaa !235
  store ptr %add.ptr, ptr %__end_, align 4, !tbaa !200
  %17 = load ptr, ptr %__begin_.i, align 4, !tbaa !236
  %18 = load ptr, ptr %this, align 4, !tbaa !223
  %sub.ptr.rhs.cast12.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub13.i = sub i32 %__position.coerce, %sub.ptr.rhs.cast12.i
  %sub.ptr.div14.i = ashr exact i32 %sub.ptr.sub13.i, 3
  %idx.neg.i = sub nsw i32 0, %sub.ptr.div14.i
  %add.ptr15.i = getelementptr inbounds %"struct.std::__1::pair", ptr %17, i32 %idx.neg.i
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %add.ptr15.i, ptr align 4 %18, i32 %sub.ptr.sub13.i, i1 false)
  %19 = load ptr, ptr %this, align 4, !tbaa !201
  store ptr %add.ptr15.i, ptr %this, align 4, !tbaa !201
  store ptr %19, ptr %__begin_.i, align 4, !tbaa !201
  %20 = load ptr, ptr %__end_.i55, align 4, !tbaa !201
  store ptr %20, ptr %__end_, align 4, !tbaa !201
  store ptr %19, ptr %__end_.i55, align 4, !tbaa !201
  %21 = load ptr, ptr %__end_cap_.i, align 4, !tbaa !201
  %22 = load ptr, ptr %__end_cap_.i52, align 4, !tbaa !201
  store ptr %22, ptr %__end_cap_.i, align 4, !tbaa !201
  store ptr %21, ptr %__end_cap_.i52, align 4, !tbaa !201
  store ptr %19, ptr %__v, align 4, !tbaa !231
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEED2Ev.exit, label %if.then.i64

if.then.i64:                                      ; preds = %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i
  %sub.ptr.lhs.cast.i.i66 = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i67 = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i68 = sub i32 %sub.ptr.lhs.cast.i.i66, %sub.ptr.rhs.cast.i.i67
  call void @_ZdlPvj(ptr noundef nonnull %19, i32 noundef %sub.ptr.sub.i.i68) #29
  br label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i, %if.then.i64
  call void @llvm.lifetime.end.p0(ptr %__v)
  %23 = ptrtoint ptr %12 to i32
  br label %if.end24

lpad20:                                           ; preds = %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEED2Ev(ptr noundef nonnull align 4 dereferenceable(20) %__v) #28
  call void @llvm.lifetime.end.p0(ptr %__v)
  resume { ptr, i32 } %24

if.end24:                                         ; preds = %if.then8, %_ZNSt3__124__copy_move_unwrap_itersB8ne190000INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPNS_4pairIPcjEES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS4_IS9_SA_EES9_T1_SA_.exit, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEED2Ev.exit
  %__p.0 = phi i32 [ %__position.coerce, %if.then8 ], [ %__position.coerce, %_ZNSt3__124__copy_move_unwrap_itersB8ne190000INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPNS_4pairIPcjEES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS4_IS9_SA_EES9_T1_SA_.exit ], [ %23, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEED2Ev.exit ]
  ret i32 %__p.0
}

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE12emplace_backIJS3_EEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef nonnull align 4 dereferenceable(8) %__args) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__end_ = getelementptr inbounds i8, ptr %this, i32 8
  %0 = load ptr, ptr %__end_, align 4, !tbaa !201
  %__end_cap_.i = getelementptr inbounds i8, ptr %this, i32 12
  %1 = load ptr, ptr %__end_cap_.i, align 4, !tbaa !201
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end39

if.then:                                          ; preds = %entry
  %__begin_ = getelementptr inbounds i8, ptr %this, i32 4
  %2 = load ptr, ptr %__begin_, align 4, !tbaa !201
  %3 = load ptr, ptr %this, align 4, !tbaa !201
  %cmp2 = icmp ugt ptr %2, %3
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %add = add nsw i32 %sub.ptr.div, 1
  %div.neg = sdiv i32 %add, -2
  %add.ptr = getelementptr inbounds %"struct.std::__1::pair", ptr %2, i32 %div.neg
  %cmp.not10.i.i = icmp eq ptr %2, %0
  br i1 %cmp.not10.i.i, label %_ZNSt3__124__copy_move_unwrap_itersB8ne190000INS_11__move_implINS_17_ClassicAlgPolicyEEEPNS_4pairIPcjEES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS4_IS9_SA_EES9_T1_SA_.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %if.then3, %while.body.i.i
  %storemerge12.i.i = phi ptr [ %incdec.ptr3.i.i, %while.body.i.i ], [ %add.ptr, %if.then3 ]
  %__first.addr.011.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i ], [ %2, %if.then3 ]
  %4 = load ptr, ptr %__first.addr.011.i.i, align 4, !tbaa !201
  store ptr %4, ptr %storemerge12.i.i, align 4, !tbaa !227
  %second.i.i.i = getelementptr inbounds i8, ptr %__first.addr.011.i.i, i32 4
  %5 = load i32, ptr %second.i.i.i, align 4, !tbaa !184
  %second3.i.i.i = getelementptr inbounds i8, ptr %storemerge12.i.i, i32 4
  store i32 %5, ptr %second3.i.i.i, align 4, !tbaa !225
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %__first.addr.011.i.i, i32 8
  %incdec.ptr3.i.i = getelementptr inbounds i8, ptr %storemerge12.i.i, i32 8
  %cmp.not.i.i = icmp eq ptr %incdec.ptr.i.i, %0
  br i1 %cmp.not.i.i, label %_ZNSt3__124__copy_move_unwrap_itersB8ne190000INS_11__move_implINS_17_ClassicAlgPolicyEEEPNS_4pairIPcjEES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS4_IS9_SA_EES9_T1_SA_.exit, label %while.body.i.i, !llvm.loop !228

_ZNSt3__124__copy_move_unwrap_itersB8ne190000INS_11__move_implINS_17_ClassicAlgPolicyEEEPNS_4pairIPcjEES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS4_IS9_SA_EES9_T1_SA_.exit: ; preds = %while.body.i.i, %if.then3
  %storemerge.lcssa.i.i = phi ptr [ %add.ptr, %if.then3 ], [ %incdec.ptr3.i.i, %while.body.i.i ]
  store ptr %storemerge.lcssa.i.i, ptr %__end_, align 4, !tbaa !235
  store ptr %add.ptr, ptr %__begin_, align 4, !tbaa !236
  br label %if.end39

if.else:                                          ; preds = %if.then
  %sub.ptr.lhs.cast16 = ptrtoint ptr %0 to i32
  %sub.ptr.sub18 = sub i32 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast
  %mul = ashr exact i32 %sub.ptr.sub18, 2
  %cmp.i.i.i = icmp eq ptr %0, %3
  %6 = select i1 %cmp.i.i.i, i32 1, i32 %mul
  %div2249 = lshr i32 %6, 2
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit, label %if.else.i

if.else.i:                                        ; preds = %if.else
  %cmp.i.i.i52 = icmp ugt i32 %6, 536870911
  br i1 %cmp.i.i.i52, label %if.then.i.i.i, label %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i

if.then.i.i.i:                                    ; preds = %if.else.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne190000v() #31
  unreachable

_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i: ; preds = %if.else.i
  %mul.i.i.i = shl nuw i32 %6, 3
  %call.i5.i.i.i.i = tail call noalias noundef nonnull ptr @_Znwj(i32 noundef %mul.i.i.i) #32
  br label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit

_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit: ; preds = %if.else, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i
  %storemerge.i = phi ptr [ %call.i5.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_4pairIPcjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_j.exit.i ], [ null, %if.else ]
  %add.ptr.i = getelementptr %"struct.std::__1::pair", ptr %storemerge.i, i32 %div2249
  %add.ptr6.i = getelementptr inbounds %"struct.std::__1::pair", ptr %storemerge.i, i32 %6
  %coerce.val.pi = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast16, %coerce.val.pi
  %add.ptr.i.i57 = getelementptr inbounds i8, ptr %add.ptr.i, i32 %sub.ptr.sub.i.i.i.i
  %cmp.not15.i = icmp eq ptr %0, %2
  br i1 %cmp.not15.i, label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i, label %for.body.i

for.body.i:                                       ; preds = %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit, %for.body.i
  %__tx.sroa.0.017.i = phi ptr [ %incdec.ptr.i, %for.body.i ], [ %add.ptr.i, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit ]
  %__first.sroa.0.016.i = phi ptr [ %incdec.ptr.i.i58, %for.body.i ], [ %2, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit ]
  %7 = load i64, ptr %__first.sroa.0.016.i, align 4
  store i64 %7, ptr %__tx.sroa.0.017.i, align 4
  %incdec.ptr.i = getelementptr inbounds i8, ptr %__tx.sroa.0.017.i, i32 8
  %incdec.ptr.i.i58 = getelementptr inbounds i8, ptr %__first.sroa.0.016.i, i32 8
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %add.ptr.i.i57
  br i1 %cmp.not.i, label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.loopexit, label %for.body.i, !llvm.loop !237

_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.loopexit: ; preds = %for.body.i
  %.pre = load ptr, ptr %this, align 4, !tbaa !201
  br label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i

_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i: ; preds = %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.loopexit, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit
  %8 = phi ptr [ %3, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit ], [ %.pre, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.loopexit ]
  %storemerge = phi ptr [ %add.ptr.i, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEC2EjjS6_.exit ], [ %add.ptr.i.i57, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i.loopexit ]
  store ptr %storemerge.i, ptr %this, align 4, !tbaa !201
  store ptr %add.ptr.i, ptr %__begin_, align 4, !tbaa !201
  store ptr %storemerge, ptr %__end_, align 4, !tbaa !201
  store ptr %add.ptr6.i, ptr %__end_cap_.i, align 4, !tbaa !201
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end39, label %if.then.i

if.then.i:                                        ; preds = %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast.i.i
  tail call void @_ZdlPvj(ptr noundef nonnull %8, i32 noundef %sub.ptr.sub.i.i) #29
  %.pre64 = load ptr, ptr %__end_, align 4, !tbaa !235
  br label %if.end39

if.end39:                                         ; preds = %if.then.i, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i, %_ZNSt3__124__copy_move_unwrap_itersB8ne190000INS_11__move_implINS_17_ClassicAlgPolicyEEEPNS_4pairIPcjEES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS4_IS9_SA_EES9_T1_SA_.exit, %entry
  %9 = phi ptr [ %.pre64, %if.then.i ], [ %storemerge, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit.i ], [ %storemerge.lcssa.i.i, %_ZNSt3__124__copy_move_unwrap_itersB8ne190000INS_11__move_implINS_17_ClassicAlgPolicyEEEPNS_4pairIPcjEES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS4_IS9_SA_EES9_T1_SA_.exit ], [ %0, %entry ]
  %10 = load i64, ptr %__args, align 4
  store i64 %10, ptr %9, align 4
  %11 = load ptr, ptr %__end_, align 4, !tbaa !235
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 8
  store ptr %incdec.ptr, ptr %__end_, align 4, !tbaa !235
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEED2Ev(ptr noundef nonnull align 4 dereferenceable(20) %this) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__begin_.i = getelementptr inbounds i8, ptr %this, i32 4
  %0 = load ptr, ptr %__begin_.i, align 4, !tbaa !236
  %__end_.i.i = getelementptr inbounds i8, ptr %this, i32 8
  %__end_.promoted.i.i = load ptr, ptr %__end_.i.i, align 4, !tbaa !235
  %cmp.not4.i.i = icmp eq ptr %__end_.promoted.i.i, %0
  br i1 %cmp.not4.i.i, label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit, label %while.body.preheader.i.i

while.body.preheader.i.i:                         ; preds = %entry
  %__end_.promoted5.i.i = ptrtoint ptr %__end_.promoted.i.i to i32
  %__new_last6.i.i = ptrtoint ptr %0 to i32
  %reass.sub.i.i = add i32 %__new_last6.i.i, 7
  %.not.i.i = sub i32 %reass.sub.i.i, %__end_.promoted5.i.i
  %1 = and i32 %.not.i.i, -8
  %scevgep.i.i = getelementptr i8, ptr %__end_.promoted.i.i, i32 %1
  store ptr %scevgep.i.i, ptr %__end_.i.i, align 4, !tbaa !235
  br label %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit

_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit: ; preds = %entry, %while.body.preheader.i.i
  %2 = load ptr, ptr %this, align 4, !tbaa !231
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit
  %__end_cap_.i.i = getelementptr inbounds i8, ptr %this, i32 12
  %3 = load ptr, ptr %__end_cap_.i.i, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @_ZdlPvj(ptr noundef nonnull %2, i32 noundef %sub.ptr.sub.i) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE17__destruct_at_endB8ne190000EPS3_.exit
  ret void
}

; Function Attrs: mustprogress
define hidden void @_ZN8VtcmPool4FreeEPvj(ptr noundef nonnull align 4 dereferenceable(40) %this, ptr noundef %ptr, i32 noundef %nbytes) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %oss = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp22 = alloca %"class.std::__1::basic_string", align 4
  %oss31 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp35 = alloca %"class.std::__1::basic_string", align 4
  %ref.tmp81 = alloca %"struct.std::__1::pair", align 4
  %oss90 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp94 = alloca %"class.std::__1::basic_string", align 4
  %oss108 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp112 = alloca %"class.std::__1::basic_string", align 4
  %ref.tmp135 = alloca %"struct.std::__1::pair", align 4
  %oss161 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp165 = alloca %"class.std::__1::basic_string", align 4
  %allocations_ = getelementptr inbounds i8, ptr %this, i32 16
  %0 = load ptr, ptr %allocations_, align 4, !tbaa !223
  %__end_.i = getelementptr inbounds i8, ptr %this, i32 20
  %1 = load ptr, ptr %__end_.i, align 4, !tbaa !200
  %cmp.i.i.not11.i = icmp eq ptr %0, %1
  br i1 %cmp.i.i.not11.i, label %"_ZNSt3__17find_ifB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEEZN8VtcmPool4FreeEPvjE3$_0EET_SA_SA_T0_.exit", label %for.body.i

for.body.i:                                       ; preds = %entry, %for.inc.i
  %__first.sroa.0.012.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i ], [ %0, %entry ]
  %agg.tmp.sroa.0.0.copyload.i = load i64, ptr %__first.sroa.0.012.i, align 4
  %entry2.sroa.0.0.extract.trunc.i.i = trunc i64 %agg.tmp.sroa.0.0.copyload.i to i32
  %2 = inttoptr i32 %entry2.sroa.0.0.extract.trunc.i.i to ptr
  %cmp.i.i = icmp eq ptr %2, %ptr
  br i1 %cmp.i.i, label %"_ZNSt3__17find_ifB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEEZN8VtcmPool4FreeEPvjE3$_0EET_SA_SA_T0_.exit", label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %__first.sroa.0.012.i, i32 8
  %cmp.i.i.not.i = icmp eq ptr %incdec.ptr.i.i, %1
  br i1 %cmp.i.i.not.i, label %if.then, label %for.body.i, !llvm.loop !238

"_ZNSt3__17find_ifB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEEZN8VtcmPool4FreeEPvjE3$_0EET_SA_SA_T0_.exit": ; preds = %for.body.i, %entry
  %__first.sroa.0.0.lcssa.i.in = phi ptr [ %0, %entry ], [ %__first.sroa.0.012.i, %for.body.i ]
  %cmp.i.i219.not = icmp eq ptr %__first.sroa.0.0.lcssa.i.in, %1
  br i1 %cmp.i.i219.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.inc.i, %"_ZNSt3__17find_ifB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEEZN8VtcmPool4FreeEPvjE3$_0EET_SA_SA_T0_.exit"
  %__first.sroa.0.0.lcssa.i.in421 = phi ptr [ %__first.sroa.0.0.lcssa.i.in, %"_ZNSt3__17find_ifB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEEZN8VtcmPool4FreeEPvjE3$_0EET_SA_SA_T0_.exit" ], [ %1, %for.inc.i ]
  call void @llvm.lifetime.start.p0(ptr %oss)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss)
  %call1.i220 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull @.str.22, i32 noundef 57)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  call void @llvm.lifetime.start.p0(ptr %ref.tmp22)
  %__sb_.i = getelementptr inbounds i8, ptr %oss, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp22, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i)
          to label %invoke.cont24 unwind label %lpad23

invoke.cont24:                                    ; preds = %invoke.cont
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str, i32 noundef 113, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp22)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %invoke.cont24
  %bf.load.i.i = load i8, ptr %ref.tmp22, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont26
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp22, i32 8
  %3 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp22, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %3, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont26, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %ref.tmp22)
  %4 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %4, ptr %oss, align 4, !tbaa !190
  %5 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %4, i32 -12
  %vbase.offset.i.i = load i32, ptr %vbase.offset.ptr.i.i, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %oss, i32 %vbase.offset.i.i
  store ptr %5, ptr %add.ptr.i.i, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i.i = getelementptr inbounds i8, ptr %oss, i32 36
  %bf.load.i.i.i.i.i = load i8, ptr %__str_.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, 1
  %tobool.i.not.i.i.i.i = icmp eq i8 %bf.clear.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %__data_.i.i.i.i.i = getelementptr inbounds i8, ptr %oss, i32 44
  %6 = load ptr, ptr %__data_.i.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i = load i32, ptr %__str_.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = and i32 %bf.load.i5.i.i.i.i, -2
  call void @_ZdlPvj(ptr noundef %6, i32 noundef %bf.lshr.i.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %if.then.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %7 = getelementptr inbounds i8, ptr %oss, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %7) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %if.end

lpad:                                             ; preds = %if.then
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup27

lpad23:                                           ; preds = %invoke.cont
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad25:                                           ; preds = %invoke.cont24
  %10 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i221 = load i8, ptr %ref.tmp22, align 4
  %bf.clear.i.i222 = and i8 %bf.load.i.i221, 1
  %tobool.i.not.i223 = icmp eq i8 %bf.clear.i.i222, 0
  br i1 %tobool.i.not.i223, label %ehcleanup, label %if.then.i224

if.then.i224:                                     ; preds = %lpad25
  %__data_.i.i225 = getelementptr inbounds i8, ptr %ref.tmp22, i32 8
  %11 = load ptr, ptr %__data_.i.i225, align 4, !tbaa !189
  %bf.load.i5.i226 = load i32, ptr %ref.tmp22, align 4
  %bf.lshr.i.i227 = and i32 %bf.load.i5.i226, -2
  call void @_ZdlPvj(ptr noundef %11, i32 noundef %bf.lshr.i.i227) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i224, %lpad25, %lpad23
  %.pn = phi { ptr, i32 } [ %9, %lpad23 ], [ %10, %lpad25 ], [ %10, %if.then.i224 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp22)
  br label %ehcleanup27

ehcleanup27:                                      ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %8, %lpad ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %ehcleanup198

if.end:                                           ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %"_ZNSt3__17find_ifB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEEZN8VtcmPool4FreeEPvjE3$_0EET_SA_SA_T0_.exit"
  %__first.sroa.0.0.lcssa.i.in420 = phi ptr [ %__first.sroa.0.0.lcssa.i.in421, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ %__first.sroa.0.0.lcssa.i.in, %"_ZNSt3__17find_ifB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEEZN8VtcmPool4FreeEPvjE3$_0EET_SA_SA_T0_.exit" ]
  %second = getelementptr inbounds i8, ptr %__first.sroa.0.0.lcssa.i.in420, i32 4
  %12 = load i32, ptr %second, align 4, !tbaa !225
  %cmp = icmp eq i32 %12, %nbytes
  br i1 %cmp, label %if.end44, label %if.then30

if.then30:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(ptr %oss31)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss31)
  %call1.i230 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss31, ptr noundef nonnull @.str.24, i32 noundef 55)
          to label %invoke.cont33 unwind label %lpad32

invoke.cont33:                                    ; preds = %if.then30
  call void @llvm.lifetime.start.p0(ptr %ref.tmp35)
  %__sb_.i232 = getelementptr inbounds i8, ptr %oss31, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp35, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i232)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %invoke.cont33
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp35)
          to label %invoke.cont39 unwind label %lpad38

invoke.cont39:                                    ; preds = %invoke.cont37
  %bf.load.i.i234 = load i8, ptr %ref.tmp35, align 4
  %bf.clear.i.i235 = and i8 %bf.load.i.i234, 1
  %tobool.i.not.i236 = icmp eq i8 %bf.clear.i.i235, 0
  br i1 %tobool.i.not.i236, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit241, label %if.then.i237

if.then.i237:                                     ; preds = %invoke.cont39
  %__data_.i.i238 = getelementptr inbounds i8, ptr %ref.tmp35, i32 8
  %13 = load ptr, ptr %__data_.i.i238, align 4, !tbaa !189
  %bf.load.i5.i239 = load i32, ptr %ref.tmp35, align 4
  %bf.lshr.i.i240 = and i32 %bf.load.i5.i239, -2
  call void @_ZdlPvj(ptr noundef %13, i32 noundef %bf.lshr.i.i240) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit241

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit241: ; preds = %invoke.cont39, %if.then.i237
  call void @llvm.lifetime.end.p0(ptr %ref.tmp35)
  %14 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %14, ptr %oss31, align 4, !tbaa !190
  %15 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i242 = getelementptr i8, ptr %14, i32 -12
  %vbase.offset.i.i243 = load i32, ptr %vbase.offset.ptr.i.i242, align 4
  %add.ptr.i.i244 = getelementptr inbounds i8, ptr %oss31, i32 %vbase.offset.i.i243
  store ptr %15, ptr %add.ptr.i.i244, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i232, align 4, !tbaa !190
  %__str_.i.i.i246 = getelementptr inbounds i8, ptr %oss31, i32 36
  %bf.load.i.i.i.i.i247 = load i8, ptr %__str_.i.i.i246, align 4
  %bf.clear.i.i.i.i.i248 = and i8 %bf.load.i.i.i.i.i247, 1
  %tobool.i.not.i.i.i.i249 = icmp eq i8 %bf.clear.i.i.i.i.i248, 0
  br i1 %tobool.i.not.i.i.i.i249, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit254, label %if.then.i.i.i.i250

if.then.i.i.i.i250:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit241
  %__data_.i.i.i.i.i251 = getelementptr inbounds i8, ptr %oss31, i32 44
  %16 = load ptr, ptr %__data_.i.i.i.i.i251, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i252 = load i32, ptr %__str_.i.i.i246, align 4
  %bf.lshr.i.i.i.i.i253 = and i32 %bf.load.i5.i.i.i.i252, -2
  call void @_ZdlPvj(ptr noundef %16, i32 noundef %bf.lshr.i.i.i.i.i253) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit254

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit254: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit241, %if.then.i.i.i.i250
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i232) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss31, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %17 = getelementptr inbounds i8, ptr %oss31, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %17) #28
  call void @llvm.lifetime.end.p0(ptr %oss31)
  br label %if.end44

lpad32:                                           ; preds = %if.then30
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup42

lpad36:                                           ; preds = %invoke.cont33
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup41

lpad38:                                           ; preds = %invoke.cont37
  %20 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i255 = load i8, ptr %ref.tmp35, align 4
  %bf.clear.i.i256 = and i8 %bf.load.i.i255, 1
  %tobool.i.not.i257 = icmp eq i8 %bf.clear.i.i256, 0
  br i1 %tobool.i.not.i257, label %ehcleanup41, label %if.then.i258

if.then.i258:                                     ; preds = %lpad38
  %__data_.i.i259 = getelementptr inbounds i8, ptr %ref.tmp35, i32 8
  %21 = load ptr, ptr %__data_.i.i259, align 4, !tbaa !189
  %bf.load.i5.i260 = load i32, ptr %ref.tmp35, align 4
  %bf.lshr.i.i261 = and i32 %bf.load.i5.i260, -2
  call void @_ZdlPvj(ptr noundef %21, i32 noundef %bf.lshr.i.i261) #29
  br label %ehcleanup41

ehcleanup41:                                      ; preds = %if.then.i258, %lpad38, %lpad36
  %.pn203 = phi { ptr, i32 } [ %19, %lpad36 ], [ %20, %lpad38 ], [ %20, %if.then.i258 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp35)
  br label %ehcleanup42

ehcleanup42:                                      ; preds = %ehcleanup41, %lpad32
  %.pn203.pn = phi { ptr, i32 } [ %.pn203, %ehcleanup41 ], [ %18, %lpad32 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss31) #28
  call void @llvm.lifetime.end.p0(ptr %oss31)
  br label %ehcleanup198

if.end44:                                         ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit254, %if.end
  %coerce.val.pi48 = ptrtoint ptr %__first.sroa.0.0.lcssa.i.in420 to i32
  %22 = load ptr, ptr %allocations_, align 4, !tbaa !223
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i = sub i32 %coerce.val.pi48, %sub.ptr.rhs.cast.i.i
  %add.ptr.i = getelementptr inbounds i8, ptr %22, i32 %sub.ptr.sub.i.i
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 8
  %23 = load ptr, ptr %__end_.i, align 4, !tbaa !200
  %cmp.not10.i.i.i = icmp eq ptr %add.ptr5.i, %23
  br i1 %cmp.not10.i.i.i, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end44, %while.body.i.i.i
  %storemerge12.i.i.i = phi ptr [ %incdec.ptr3.i.i.i, %while.body.i.i.i ], [ %add.ptr.i, %if.end44 ]
  %__first.addr.011.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i ], [ %add.ptr5.i, %if.end44 ]
  %24 = load ptr, ptr %__first.addr.011.i.i.i, align 4, !tbaa !201
  store ptr %24, ptr %storemerge12.i.i.i, align 4, !tbaa !227
  %second.i.i.i.i = getelementptr inbounds i8, ptr %__first.addr.011.i.i.i, i32 4
  %25 = load i32, ptr %second.i.i.i.i, align 4, !tbaa !184
  %second3.i.i.i.i = getelementptr inbounds i8, ptr %storemerge12.i.i.i, i32 4
  store i32 %25, ptr %second3.i.i.i.i, align 4, !tbaa !225
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %__first.addr.011.i.i.i, i32 8
  %incdec.ptr3.i.i.i = getelementptr inbounds i8, ptr %storemerge12.i.i.i, i32 8
  %cmp.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %23
  br i1 %cmp.not.i.i.i, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit, label %while.body.i.i.i, !llvm.loop !228

_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit: ; preds = %while.body.i.i.i, %if.end44
  %storemerge.lcssa.i.i.i = phi ptr [ %add.ptr.i, %if.end44 ], [ %incdec.ptr3.i.i.i, %while.body.i.i.i ]
  store ptr %storemerge.lcssa.i.i.i, ptr %__end_.i, align 4, !tbaa !200
  %free_ = getelementptr inbounds i8, ptr %this, i32 28
  %26 = load ptr, ptr %free_, align 4, !tbaa !223
  %__end_.i265 = getelementptr inbounds i8, ptr %this, i32 32
  %27 = load ptr, ptr %__end_.i265, align 4, !tbaa !200
  %cmp.not1.i.i = icmp eq ptr %27, %26
  br i1 %cmp.not1.i.i, label %if.then77, label %while.body.lr.ph.i.i

while.body.lr.ph.i.i:                             ; preds = %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit
  %coerce.val.pi.i.i266 = ptrtoint ptr %27 to i32
  %coerce.val.pi.i.i264 = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i.i.i.i = sub i32 %coerce.val.pi.i.i266, %coerce.val.pi.i.i264
  %sub.ptr.div.i.i.i.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i.i.i.i, 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.lr.ph.i.i
  %__first.sroa.0.03.i.i = phi ptr [ %26, %while.body.lr.ph.i.i ], [ %__first.sroa.0.1.i.i, %while.body.i.i ]
  %__len.addr.02.i.i = phi i32 [ %sub.ptr.div.i.i.i.i.i.i, %while.body.lr.ph.i.i ], [ %__len.addr.1.i.i, %while.body.i.i ]
  %div1.i.i.i = lshr i32 %__len.addr.02.i.i, 1
  %add.ptr.i.i.i.i.i.i = getelementptr inbounds %"struct.std::__1::pair", ptr %__first.sroa.0.03.i.i, i32 %div1.i.i.i
  %call2.val.i.i = load i64, ptr %add.ptr.i.i.i.i.i.i, align 4
  %p.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %call2.val.i.i to i32
  %28 = inttoptr i32 %p.sroa.0.0.extract.trunc.i.i.i.i to ptr
  %cmp.i.i.not.i.i = icmp ugt ptr %28, %ptr
  %incdec.ptr.i.i.i267 = getelementptr inbounds i8, ptr %add.ptr.i.i.i.i.i.i, i32 8
  %add.neg.i.i = xor i32 %div1.i.i.i, -1
  %sub.i.i = add i32 %__len.addr.02.i.i, %add.neg.i.i
  %__len.addr.1.i.i = select i1 %cmp.i.i.not.i.i, i32 %div1.i.i.i, i32 %sub.i.i
  %__first.sroa.0.1.i.i = select i1 %cmp.i.i.not.i.i, ptr %__first.sroa.0.03.i.i, ptr %incdec.ptr.i.i.i267
  %cmp.not.i.i = icmp eq i32 %__len.addr.1.i.i, 0
  br i1 %cmp.not.i.i, label %"_ZNSt3__111lower_boundB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEES4_ZN8VtcmPool4FreeEPvjE3$_1EET_SA_SA_RKT0_T1_.exit", label %while.body.i.i, !llvm.loop !239

"_ZNSt3__111lower_boundB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEES4_ZN8VtcmPool4FreeEPvjE3$_1EET_SA_SA_RKT0_T1_.exit": ; preds = %while.body.i.i
  %cmp.i = icmp eq ptr %__first.sroa.0.1.i.i, %27
  br i1 %cmp.i, label %if.then77, label %if.else

if.then77:                                        ; preds = %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit, %"_ZNSt3__111lower_boundB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEES4_ZN8VtcmPool4FreeEPvjE3$_1EET_SA_SA_RKT0_T1_.exit"
  %__first.sroa.0.0.lcssa.i.i424 = phi ptr [ %27, %"_ZNSt3__111lower_boundB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEES4_ZN8VtcmPool4FreeEPvjE3$_1EET_SA_SA_RKT0_T1_.exit" ], [ %26, %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr %ref.tmp81)
  store ptr %ptr, ptr %ref.tmp81, align 4, !tbaa !227
  %second.i270 = getelementptr inbounds i8, ptr %ref.tmp81, i32 4
  store i32 %nbytes, ptr %second.i270, align 4, !tbaa !225
  %coerce.val.pi83 = ptrtoint ptr %__first.sroa.0.0.lcssa.i.i424 to i32
  %call84 = call i32 @_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE7emplaceIJS3_EEENS_11__wrap_iterIPS3_EENS8_IPKS3_EEDpOT_(ptr noundef nonnull align 4 dereferenceable(12) %free_, i32 %coerce.val.pi83, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp81)
  %coerce.val.ip86 = inttoptr i32 %call84 to ptr
  call void @llvm.lifetime.end.p0(ptr %ref.tmp81)
  br label %if.end142

if.else:                                          ; preds = %"_ZNSt3__111lower_boundB8ne190000INS_11__wrap_iterIPNS_4pairIPcjEEEES4_ZN8VtcmPool4FreeEPvjE3$_1EET_SA_SA_RKT0_T1_.exit"
  %29 = load ptr, ptr %__first.sroa.0.1.i.i, align 4, !tbaa !227
  %cmp88.not = icmp eq ptr %29, %ptr
  br i1 %cmp88.not, label %if.then89, label %if.end103

if.then89:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(ptr %oss90)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss90)
  %call1.i272 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss90, ptr noundef nonnull @.str.26, i32 noundef 52)
          to label %invoke.cont92 unwind label %lpad91

invoke.cont92:                                    ; preds = %if.then89
  call void @llvm.lifetime.start.p0(ptr %ref.tmp94)
  %__sb_.i274 = getelementptr inbounds i8, ptr %oss90, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp94, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i274)
          to label %invoke.cont96 unwind label %lpad95

invoke.cont96:                                    ; preds = %invoke.cont92
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp94)
          to label %invoke.cont98 unwind label %lpad97

invoke.cont98:                                    ; preds = %invoke.cont96
  %bf.load.i.i276 = load i8, ptr %ref.tmp94, align 4
  %bf.clear.i.i277 = and i8 %bf.load.i.i276, 1
  %tobool.i.not.i278 = icmp eq i8 %bf.clear.i.i277, 0
  br i1 %tobool.i.not.i278, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit283, label %if.then.i279

if.then.i279:                                     ; preds = %invoke.cont98
  %__data_.i.i280 = getelementptr inbounds i8, ptr %ref.tmp94, i32 8
  %30 = load ptr, ptr %__data_.i.i280, align 4, !tbaa !189
  %bf.load.i5.i281 = load i32, ptr %ref.tmp94, align 4
  %bf.lshr.i.i282 = and i32 %bf.load.i5.i281, -2
  call void @_ZdlPvj(ptr noundef %30, i32 noundef %bf.lshr.i.i282) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit283

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit283: ; preds = %invoke.cont98, %if.then.i279
  call void @llvm.lifetime.end.p0(ptr %ref.tmp94)
  %31 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %31, ptr %oss90, align 4, !tbaa !190
  %32 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i284 = getelementptr i8, ptr %31, i32 -12
  %vbase.offset.i.i285 = load i32, ptr %vbase.offset.ptr.i.i284, align 4
  %add.ptr.i.i286 = getelementptr inbounds i8, ptr %oss90, i32 %vbase.offset.i.i285
  store ptr %32, ptr %add.ptr.i.i286, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i274, align 4, !tbaa !190
  %__str_.i.i.i288 = getelementptr inbounds i8, ptr %oss90, i32 36
  %bf.load.i.i.i.i.i289 = load i8, ptr %__str_.i.i.i288, align 4
  %bf.clear.i.i.i.i.i290 = and i8 %bf.load.i.i.i.i.i289, 1
  %tobool.i.not.i.i.i.i291 = icmp eq i8 %bf.clear.i.i.i.i.i290, 0
  br i1 %tobool.i.not.i.i.i.i291, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit296, label %if.then.i.i.i.i292

if.then.i.i.i.i292:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit283
  %__data_.i.i.i.i.i293 = getelementptr inbounds i8, ptr %oss90, i32 44
  %33 = load ptr, ptr %__data_.i.i.i.i.i293, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i294 = load i32, ptr %__str_.i.i.i288, align 4
  %bf.lshr.i.i.i.i.i295 = and i32 %bf.load.i5.i.i.i.i294, -2
  call void @_ZdlPvj(ptr noundef %33, i32 noundef %bf.lshr.i.i.i.i.i295) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit296

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit296: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit283, %if.then.i.i.i.i292
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i274) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss90, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %34 = getelementptr inbounds i8, ptr %oss90, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %34) #28
  call void @llvm.lifetime.end.p0(ptr %oss90)
  %.pre = load ptr, ptr %__first.sroa.0.1.i.i, align 4, !tbaa !227
  br label %if.end103

lpad91:                                           ; preds = %if.then89
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup101

lpad95:                                           ; preds = %invoke.cont92
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup100

lpad97:                                           ; preds = %invoke.cont96
  %37 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i297 = load i8, ptr %ref.tmp94, align 4
  %bf.clear.i.i298 = and i8 %bf.load.i.i297, 1
  %tobool.i.not.i299 = icmp eq i8 %bf.clear.i.i298, 0
  br i1 %tobool.i.not.i299, label %ehcleanup100, label %if.then.i300

if.then.i300:                                     ; preds = %lpad97
  %__data_.i.i301 = getelementptr inbounds i8, ptr %ref.tmp94, i32 8
  %38 = load ptr, ptr %__data_.i.i301, align 4, !tbaa !189
  %bf.load.i5.i302 = load i32, ptr %ref.tmp94, align 4
  %bf.lshr.i.i303 = and i32 %bf.load.i5.i302, -2
  call void @_ZdlPvj(ptr noundef %38, i32 noundef %bf.lshr.i.i303) #29
  br label %ehcleanup100

ehcleanup100:                                     ; preds = %if.then.i300, %lpad97, %lpad95
  %.pn206 = phi { ptr, i32 } [ %36, %lpad95 ], [ %37, %lpad97 ], [ %37, %if.then.i300 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp94)
  br label %ehcleanup101

ehcleanup101:                                     ; preds = %ehcleanup100, %lpad91
  %.pn206.pn = phi { ptr, i32 } [ %.pn206, %ehcleanup100 ], [ %35, %lpad91 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss90) #28
  call void @llvm.lifetime.end.p0(ptr %oss90)
  br label %ehcleanup198

if.end103:                                        ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit296, %if.else
  %39 = phi ptr [ %.pre, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit296 ], [ %29, %if.else ]
  %add.ptr = getelementptr inbounds i8, ptr %ptr, i32 %nbytes
  %cmp106.not = icmp ugt ptr %add.ptr, %39
  br i1 %cmp106.not, label %if.then107, label %if.end121

if.then107:                                       ; preds = %if.end103
  call void @llvm.lifetime.start.p0(ptr %oss108)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss108)
  %call1.i306 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss108, ptr noundef nonnull @.str.28, i32 noundef 67)
          to label %invoke.cont110 unwind label %lpad109

invoke.cont110:                                   ; preds = %if.then107
  call void @llvm.lifetime.start.p0(ptr %ref.tmp112)
  %__sb_.i308 = getelementptr inbounds i8, ptr %oss108, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp112, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i308)
          to label %invoke.cont114 unwind label %lpad113

invoke.cont114:                                   ; preds = %invoke.cont110
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp112)
          to label %invoke.cont116 unwind label %lpad115

invoke.cont116:                                   ; preds = %invoke.cont114
  %bf.load.i.i310 = load i8, ptr %ref.tmp112, align 4
  %bf.clear.i.i311 = and i8 %bf.load.i.i310, 1
  %tobool.i.not.i312 = icmp eq i8 %bf.clear.i.i311, 0
  br i1 %tobool.i.not.i312, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit317, label %if.then.i313

if.then.i313:                                     ; preds = %invoke.cont116
  %__data_.i.i314 = getelementptr inbounds i8, ptr %ref.tmp112, i32 8
  %40 = load ptr, ptr %__data_.i.i314, align 4, !tbaa !189
  %bf.load.i5.i315 = load i32, ptr %ref.tmp112, align 4
  %bf.lshr.i.i316 = and i32 %bf.load.i5.i315, -2
  call void @_ZdlPvj(ptr noundef %40, i32 noundef %bf.lshr.i.i316) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit317

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit317: ; preds = %invoke.cont116, %if.then.i313
  call void @llvm.lifetime.end.p0(ptr %ref.tmp112)
  %41 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %41, ptr %oss108, align 4, !tbaa !190
  %42 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i318 = getelementptr i8, ptr %41, i32 -12
  %vbase.offset.i.i319 = load i32, ptr %vbase.offset.ptr.i.i318, align 4
  %add.ptr.i.i320 = getelementptr inbounds i8, ptr %oss108, i32 %vbase.offset.i.i319
  store ptr %42, ptr %add.ptr.i.i320, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i308, align 4, !tbaa !190
  %__str_.i.i.i322 = getelementptr inbounds i8, ptr %oss108, i32 36
  %bf.load.i.i.i.i.i323 = load i8, ptr %__str_.i.i.i322, align 4
  %bf.clear.i.i.i.i.i324 = and i8 %bf.load.i.i.i.i.i323, 1
  %tobool.i.not.i.i.i.i325 = icmp eq i8 %bf.clear.i.i.i.i.i324, 0
  br i1 %tobool.i.not.i.i.i.i325, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit330, label %if.then.i.i.i.i326

if.then.i.i.i.i326:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit317
  %__data_.i.i.i.i.i327 = getelementptr inbounds i8, ptr %oss108, i32 44
  %43 = load ptr, ptr %__data_.i.i.i.i.i327, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i328 = load i32, ptr %__str_.i.i.i322, align 4
  %bf.lshr.i.i.i.i.i329 = and i32 %bf.load.i5.i.i.i.i328, -2
  call void @_ZdlPvj(ptr noundef %43, i32 noundef %bf.lshr.i.i.i.i.i329) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit330

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit330: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit317, %if.then.i.i.i.i326
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i308) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss108, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %44 = getelementptr inbounds i8, ptr %oss108, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %44) #28
  call void @llvm.lifetime.end.p0(ptr %oss108)
  %.pre428 = load ptr, ptr %__first.sroa.0.1.i.i, align 4, !tbaa !227
  br label %if.end121

lpad109:                                          ; preds = %if.then107
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup119

lpad113:                                          ; preds = %invoke.cont110
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup118

lpad115:                                          ; preds = %invoke.cont114
  %47 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i331 = load i8, ptr %ref.tmp112, align 4
  %bf.clear.i.i332 = and i8 %bf.load.i.i331, 1
  %tobool.i.not.i333 = icmp eq i8 %bf.clear.i.i332, 0
  br i1 %tobool.i.not.i333, label %ehcleanup118, label %if.then.i334

if.then.i334:                                     ; preds = %lpad115
  %__data_.i.i335 = getelementptr inbounds i8, ptr %ref.tmp112, i32 8
  %48 = load ptr, ptr %__data_.i.i335, align 4, !tbaa !189
  %bf.load.i5.i336 = load i32, ptr %ref.tmp112, align 4
  %bf.lshr.i.i337 = and i32 %bf.load.i5.i336, -2
  call void @_ZdlPvj(ptr noundef %48, i32 noundef %bf.lshr.i.i337) #29
  br label %ehcleanup118

ehcleanup118:                                     ; preds = %if.then.i334, %lpad115, %lpad113
  %.pn209 = phi { ptr, i32 } [ %46, %lpad113 ], [ %47, %lpad115 ], [ %47, %if.then.i334 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp112)
  br label %ehcleanup119

ehcleanup119:                                     ; preds = %ehcleanup118, %lpad109
  %.pn209.pn = phi { ptr, i32 } [ %.pn209, %ehcleanup118 ], [ %45, %lpad109 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss108) #28
  call void @llvm.lifetime.end.p0(ptr %oss108)
  br label %ehcleanup198

if.end121:                                        ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit330, %if.end103
  %49 = phi ptr [ %.pre428, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit330 ], [ %39, %if.end103 ]
  %cmp125 = icmp eq ptr %add.ptr, %49
  br i1 %cmp125, label %if.then126, label %if.else131

if.then126:                                       ; preds = %if.end121
  store ptr %ptr, ptr %__first.sroa.0.1.i.i, align 4, !tbaa !227
  %second130 = getelementptr inbounds i8, ptr %__first.sroa.0.1.i.i, i32 4
  %50 = load i32, ptr %second130, align 4, !tbaa !225
  %add = add i32 %50, %nbytes
  store i32 %add, ptr %second130, align 4, !tbaa !225
  br label %if.end142

if.else131:                                       ; preds = %if.end121
  call void @llvm.lifetime.start.p0(ptr %ref.tmp135)
  store ptr %ptr, ptr %ref.tmp135, align 4, !tbaa !227
  %second.i339 = getelementptr inbounds i8, ptr %ref.tmp135, i32 4
  store i32 %nbytes, ptr %second.i339, align 4, !tbaa !225
  %coerce.val.pi137 = ptrtoint ptr %__first.sroa.0.1.i.i to i32
  %call138 = call i32 @_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE7emplaceIJS3_EEENS_11__wrap_iterIPS3_EENS8_IPKS3_EEDpOT_(ptr noundef nonnull align 4 dereferenceable(12) %free_, i32 %coerce.val.pi137, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp135)
  %coerce.val.ip140 = inttoptr i32 %call138 to ptr
  call void @llvm.lifetime.end.p0(ptr %ref.tmp135)
  br label %if.end142

if.end142:                                        ; preds = %if.then126, %if.else131, %if.then77
  %it.sroa.0.0 = phi ptr [ %coerce.val.ip86, %if.then77 ], [ %__first.sroa.0.1.i.i, %if.then126 ], [ %coerce.val.ip140, %if.else131 ]
  %51 = load ptr, ptr %free_, align 4, !tbaa !223
  %cmp.i.i341.not = icmp eq ptr %it.sroa.0.0, %51
  br i1 %cmp.i.i341.not, label %if.end197, label %if.then149

if.then149:                                       ; preds = %if.end142
  %52 = ptrtoint ptr %it.sroa.0.0 to i32
  %incdec.ptr.i.i342 = getelementptr inbounds i8, ptr %it.sroa.0.0, i32 -8
  %53 = load ptr, ptr %incdec.ptr.i.i342, align 4, !tbaa !227
  %second157 = getelementptr inbounds i8, ptr %it.sroa.0.0, i32 -4
  %54 = load i32, ptr %second157, align 4, !tbaa !225
  %add.ptr158 = getelementptr inbounds i8, ptr %53, i32 %54
  %cmp159.not = icmp ugt ptr %add.ptr158, %ptr
  br i1 %cmp159.not, label %if.then160, label %if.end174

if.then160:                                       ; preds = %if.then149
  call void @llvm.lifetime.start.p0(ptr %oss161)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss161)
  %call1.i344 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss161, ptr noundef nonnull @.str.30, i32 noundef 74)
          to label %invoke.cont163 unwind label %lpad162

invoke.cont163:                                   ; preds = %if.then160
  call void @llvm.lifetime.start.p0(ptr %ref.tmp165)
  %__sb_.i346 = getelementptr inbounds i8, ptr %oss161, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp165, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i346)
          to label %invoke.cont167 unwind label %lpad166

invoke.cont167:                                   ; preds = %invoke.cont163
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str, i32 noundef 145, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp165)
          to label %invoke.cont169 unwind label %lpad168

invoke.cont169:                                   ; preds = %invoke.cont167
  %bf.load.i.i348 = load i8, ptr %ref.tmp165, align 4
  %bf.clear.i.i349 = and i8 %bf.load.i.i348, 1
  %tobool.i.not.i350 = icmp eq i8 %bf.clear.i.i349, 0
  br i1 %tobool.i.not.i350, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit355, label %if.then.i351

if.then.i351:                                     ; preds = %invoke.cont169
  %__data_.i.i352 = getelementptr inbounds i8, ptr %ref.tmp165, i32 8
  %55 = load ptr, ptr %__data_.i.i352, align 4, !tbaa !189
  %bf.load.i5.i353 = load i32, ptr %ref.tmp165, align 4
  %bf.lshr.i.i354 = and i32 %bf.load.i5.i353, -2
  call void @_ZdlPvj(ptr noundef %55, i32 noundef %bf.lshr.i.i354) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit355

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit355: ; preds = %invoke.cont169, %if.then.i351
  call void @llvm.lifetime.end.p0(ptr %ref.tmp165)
  %56 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %56, ptr %oss161, align 4, !tbaa !190
  %57 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i356 = getelementptr i8, ptr %56, i32 -12
  %vbase.offset.i.i357 = load i32, ptr %vbase.offset.ptr.i.i356, align 4
  %add.ptr.i.i358 = getelementptr inbounds i8, ptr %oss161, i32 %vbase.offset.i.i357
  store ptr %57, ptr %add.ptr.i.i358, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i346, align 4, !tbaa !190
  %__str_.i.i.i360 = getelementptr inbounds i8, ptr %oss161, i32 36
  %bf.load.i.i.i.i.i361 = load i8, ptr %__str_.i.i.i360, align 4
  %bf.clear.i.i.i.i.i362 = and i8 %bf.load.i.i.i.i.i361, 1
  %tobool.i.not.i.i.i.i363 = icmp eq i8 %bf.clear.i.i.i.i.i362, 0
  br i1 %tobool.i.not.i.i.i.i363, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit368, label %if.then.i.i.i.i364

if.then.i.i.i.i364:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit355
  %__data_.i.i.i.i.i365 = getelementptr inbounds i8, ptr %oss161, i32 44
  %58 = load ptr, ptr %__data_.i.i.i.i.i365, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i366 = load i32, ptr %__str_.i.i.i360, align 4
  %bf.lshr.i.i.i.i.i367 = and i32 %bf.load.i5.i.i.i.i366, -2
  call void @_ZdlPvj(ptr noundef %58, i32 noundef %bf.lshr.i.i.i.i.i367) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit368

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit368: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit355, %if.then.i.i.i.i364
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i346) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss161, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %59 = getelementptr inbounds i8, ptr %oss161, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %59) #28
  call void @llvm.lifetime.end.p0(ptr %oss161)
  %.pre429 = load ptr, ptr %incdec.ptr.i.i342, align 4, !tbaa !227
  %.pre430 = load i32, ptr %second157, align 4, !tbaa !225
  br label %if.end174

lpad162:                                          ; preds = %if.then160
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup172

lpad166:                                          ; preds = %invoke.cont163
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup171

lpad168:                                          ; preds = %invoke.cont167
  %62 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i369 = load i8, ptr %ref.tmp165, align 4
  %bf.clear.i.i370 = and i8 %bf.load.i.i369, 1
  %tobool.i.not.i371 = icmp eq i8 %bf.clear.i.i370, 0
  br i1 %tobool.i.not.i371, label %ehcleanup171, label %if.then.i372

if.then.i372:                                     ; preds = %lpad168
  %__data_.i.i373 = getelementptr inbounds i8, ptr %ref.tmp165, i32 8
  %63 = load ptr, ptr %__data_.i.i373, align 4, !tbaa !189
  %bf.load.i5.i374 = load i32, ptr %ref.tmp165, align 4
  %bf.lshr.i.i375 = and i32 %bf.load.i5.i374, -2
  call void @_ZdlPvj(ptr noundef %63, i32 noundef %bf.lshr.i.i375) #29
  br label %ehcleanup171

ehcleanup171:                                     ; preds = %if.then.i372, %lpad168, %lpad166
  %.pn212 = phi { ptr, i32 } [ %61, %lpad166 ], [ %62, %lpad168 ], [ %62, %if.then.i372 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp165)
  br label %ehcleanup172

ehcleanup172:                                     ; preds = %ehcleanup171, %lpad162
  %.pn212.pn = phi { ptr, i32 } [ %.pn212, %ehcleanup171 ], [ %60, %lpad162 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss161) #28
  call void @llvm.lifetime.end.p0(ptr %oss161)
  br label %ehcleanup198

if.end174:                                        ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit368, %if.then149
  %64 = phi i32 [ %.pre430, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit368 ], [ %54, %if.then149 ]
  %65 = phi ptr [ %.pre429, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit368 ], [ %53, %if.then149 ]
  %add.ptr179 = getelementptr inbounds i8, ptr %65, i32 %64
  %cmp180 = icmp eq ptr %add.ptr179, %ptr
  br i1 %cmp180, label %if.then181, label %if.end197

if.then181:                                       ; preds = %if.end174
  %second183 = getelementptr inbounds i8, ptr %it.sroa.0.0, i32 4
  %66 = load i32, ptr %second183, align 4, !tbaa !225
  %add186 = add i32 %66, %64
  store i32 %add186, ptr %second157, align 4, !tbaa !225
  %67 = load ptr, ptr %free_, align 4, !tbaa !223
  %sub.ptr.rhs.cast.i.i377 = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i.i378 = sub i32 %52, %sub.ptr.rhs.cast.i.i377
  %add.ptr.i379 = getelementptr inbounds i8, ptr %67, i32 %sub.ptr.sub.i.i378
  %add.ptr5.i380 = getelementptr inbounds i8, ptr %add.ptr.i379, i32 8
  %68 = load ptr, ptr %__end_.i265, align 4, !tbaa !200
  %cmp.not10.i.i.i382 = icmp eq ptr %add.ptr5.i380, %68
  br i1 %cmp.not10.i.i.i382, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit392, label %while.body.i.i.i383

while.body.i.i.i383:                              ; preds = %if.then181, %while.body.i.i.i383
  %storemerge12.i.i.i384 = phi ptr [ %incdec.ptr3.i.i.i389, %while.body.i.i.i383 ], [ %add.ptr.i379, %if.then181 ]
  %__first.addr.011.i.i.i385 = phi ptr [ %incdec.ptr.i.i.i388, %while.body.i.i.i383 ], [ %add.ptr5.i380, %if.then181 ]
  %69 = load ptr, ptr %__first.addr.011.i.i.i385, align 4, !tbaa !201
  store ptr %69, ptr %storemerge12.i.i.i384, align 4, !tbaa !227
  %second.i.i.i.i386 = getelementptr inbounds i8, ptr %__first.addr.011.i.i.i385, i32 4
  %70 = load i32, ptr %second.i.i.i.i386, align 4, !tbaa !184
  %second3.i.i.i.i387 = getelementptr inbounds i8, ptr %storemerge12.i.i.i384, i32 4
  store i32 %70, ptr %second3.i.i.i.i387, align 4, !tbaa !225
  %incdec.ptr.i.i.i388 = getelementptr inbounds i8, ptr %__first.addr.011.i.i.i385, i32 8
  %incdec.ptr3.i.i.i389 = getelementptr inbounds i8, ptr %storemerge12.i.i.i384, i32 8
  %cmp.not.i.i.i390 = icmp eq ptr %incdec.ptr.i.i.i388, %68
  br i1 %cmp.not.i.i.i390, label %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit392, label %while.body.i.i.i383, !llvm.loop !228

_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit392: ; preds = %while.body.i.i.i383, %if.then181
  %storemerge.lcssa.i.i.i391 = phi ptr [ %add.ptr.i379, %if.then181 ], [ %incdec.ptr3.i.i.i389, %while.body.i.i.i383 ]
  store ptr %storemerge.lcssa.i.i.i391, ptr %__end_.i265, align 4, !tbaa !200
  br label %if.end197

if.end197:                                        ; preds = %if.end174, %_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE5eraseB8ne190000ENS_11__wrap_iterIPKS3_EE.exit392, %if.end142
  ret void

ehcleanup198:                                     ; preds = %ehcleanup172, %ehcleanup119, %ehcleanup101, %ehcleanup42, %ehcleanup27
  %.pn212.pn.pn = phi { ptr, i32 } [ %.pn212.pn, %ehcleanup172 ], [ %.pn209.pn, %ehcleanup119 ], [ %.pn206.pn, %ehcleanup101 ], [ %.pn203.pn, %ehcleanup42 ], [ %.pn.pn, %ehcleanup27 ]
  resume { ptr, i32 } %.pn212.pn.pn
}

define internal void @_GLOBAL__sub_I_HexagonAPI.cpp() #3 {
entry:
  tail call void @_ZNSt3__18ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZL9_Ios_init.2)
  %0 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__18ios_base4InitD1Ev, ptr nonnull @_ZL9_Ios_init.2, ptr nonnull @__dso_handle) #28
  ret void
}

; Function Attrs: mustprogress
define hidden noundef ptr @_ZN10HexagonAPI6GlobalEv() local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load atomic i8, ptr @_ZGVZN10HexagonAPI6GlobalEvE4inst acquire, align 8
  %guard.uninitialized = icmp eq i8 %0, 0
  br i1 %guard.uninitialized, label %init.check, label %init.end, !prof !240

init.check:                                       ; preds = %entry
  %1 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN10HexagonAPI6GlobalEvE4inst) #28
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %init.end, label %init

init:                                             ; preds = %init.check
  %call = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwj(i32 noundef 12) #32
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %init
  invoke void @_ZN10HexagonAPIC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %call)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  store ptr %call, ptr @_ZZN10HexagonAPI6GlobalEvE4inst, align 4, !tbaa !201
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN10HexagonAPI6GlobalEvE4inst) #28
  br label %init.end

init.end:                                         ; preds = %invoke.cont2, %init.check, %entry
  %2 = load ptr, ptr @_ZZN10HexagonAPI6GlobalEvE4inst, align 4, !tbaa !201
  ret ptr %2

lpad:                                             ; preds = %init
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad1:                                            ; preds = %invoke.cont
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvj(ptr noundef nonnull %call, i32 noundef 12) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad1, %lpad
  %.pn = phi { ptr, i32 } [ %4, %lpad1 ], [ %3, %lpad ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN10HexagonAPI6GlobalEvE4inst) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZN10HexagonAPIC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  store ptr null, ptr %this, align 4, !tbaa !241
  %runtimeVtcm = getelementptr inbounds i8, ptr %this, i32 4
  store ptr null, ptr %runtimeVtcm, align 4, !tbaa !243
  %hmx_context_id = getelementptr inbounds i8, ptr %this, i32 8
  store i32 0, ptr %hmx_context_id, align 4, !tbaa !245
  invoke void @_ZN10HexagonAPI16AcquireResourcesEv(ptr noundef nonnull align 4 dereferenceable(12) %this)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(4) %runtimeVtcm) #28
  %1 = load ptr, ptr %this, align 4, !tbaa !201
  store ptr null, ptr %this, align 4, !tbaa !201
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %_ZNSt3__110unique_ptrI13BufferManagerNS_14default_deleteIS1_EEED2B8ne190000Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad
  tail call void @_ZNKSt3__114default_deleteI13BufferManagerEclB8ne190000EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull %1) #28
  br label %_ZNSt3__110unique_ptrI13BufferManagerNS_14default_deleteIS1_EEED2B8ne190000Ev.exit

_ZNSt3__110unique_ptrI13BufferManagerNS_14default_deleteIS1_EEED2B8ne190000Ev.exit: ; preds = %lpad, %if.then.i.i
  resume { ptr, i32 } %0
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZN10HexagonAPI16AcquireResourcesEv(ptr noundef nonnull align 4 dereferenceable(12) %this) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::__1::basic_string", align 4
  %ref.tmp7 = alloca %"class.std::__1::basic_string", align 4
  %runtimeVtcm = getelementptr inbounds i8, ptr %this, i32 4
  %0 = load ptr, ptr %runtimeVtcm, align 4, !tbaa !201
  %cmp.i.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000ILi0EEEPKc(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp, ptr noundef nonnull @.str.6.3)
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.4.4, ptr noundef nonnull @.str.5.5, i32 noundef 44, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %bf.load.i.i = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %1 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %1, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %if.end

lpad:                                             ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i17 = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i18 = and i8 %bf.load.i.i17, 1
  %tobool.i.not.i19 = icmp eq i8 %bf.clear.i.i18, 0
  br i1 %tobool.i.not.i19, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit24, label %if.then.i20

if.then.i20:                                      ; preds = %lpad
  %__data_.i.i21 = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %3 = load ptr, ptr %__data_.i.i21, align 4, !tbaa !189
  %bf.load.i5.i22 = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i23 = and i32 %bf.load.i5.i22, -2
  call void @_ZdlPvj(ptr noundef %3, i32 noundef %bf.lshr.i.i23) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit24

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit24: ; preds = %lpad, %if.then.i20
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %common.resume

if.end:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %entry
  %call.i = call noalias noundef nonnull dereferenceable(40) ptr @_Znwj(i32 noundef 40) #32, !noalias !252
  invoke void @_ZN8VtcmPoolC1Ev(ptr noundef nonnull align 4 dereferenceable(40) %call.i)
          to label %_ZNSt3__111make_uniqueB8ne190000I8VtcmPoolJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit unwind label %lpad.i, !noalias !252

common.resume:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit24, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit43, %lpad.i
  %common.resume.op = phi { ptr, i32 } [ %4, %lpad.i ], [ %8, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit43 ], [ %2, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit24 ]
  resume { ptr, i32 } %common.resume.op

lpad.i:                                           ; preds = %if.end
  %4 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvj(ptr noundef nonnull %call.i, i32 noundef 40) #29, !noalias !252
  br label %common.resume

_ZNSt3__111make_uniqueB8ne190000I8VtcmPoolJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit: ; preds = %if.end
  %5 = load ptr, ptr %runtimeVtcm, align 4, !tbaa !201
  store ptr %call.i, ptr %runtimeVtcm, align 4, !tbaa !201
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEED2B8ne190000Ev.exit, label %delete.notnull.i.i.i

delete.notnull.i.i.i:                             ; preds = %_ZNSt3__111make_uniqueB8ne190000I8VtcmPoolJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit
  call void @_ZN8VtcmPoolD1Ev(ptr noundef nonnull align 4 dereferenceable(40) %5) #28
  call void @_ZdlPvj(ptr noundef nonnull %5, i32 noundef 40) #29
  br label %_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEED2B8ne190000Ev.exit

_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEED2B8ne190000Ev.exit: ; preds = %delete.notnull.i.i.i, %_ZNSt3__111make_uniqueB8ne190000I8VtcmPoolJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit
  %6 = load ptr, ptr %this, align 4, !tbaa !201
  %cmp.i.i27.not = icmp eq ptr %6, null
  br i1 %cmp.i.i27.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEED2B8ne190000Ev.exit
  call void @llvm.lifetime.start.p0(ptr %ref.tmp7)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000ILi0EEEPKc(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp7, ptr noundef nonnull @.str.6.3)
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.7.6, ptr noundef nonnull @.str.5.5, i32 noundef 47, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %if.then6
  %bf.load.i.i28 = load i8, ptr %ref.tmp7, align 4
  %bf.clear.i.i29 = and i8 %bf.load.i.i28, 1
  %tobool.i.not.i30 = icmp eq i8 %bf.clear.i.i29, 0
  br i1 %tobool.i.not.i30, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35, label %if.then.i31

if.then.i31:                                      ; preds = %invoke.cont9
  %__data_.i.i32 = getelementptr inbounds i8, ptr %ref.tmp7, i32 8
  %7 = load ptr, ptr %__data_.i.i32, align 4, !tbaa !189
  %bf.load.i5.i33 = load i32, ptr %ref.tmp7, align 4
  %bf.lshr.i.i34 = and i32 %bf.load.i5.i33, -2
  call void @_ZdlPvj(ptr noundef %7, i32 noundef %bf.lshr.i.i34) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35: ; preds = %invoke.cont9, %if.then.i31
  call void @llvm.lifetime.end.p0(ptr %ref.tmp7)
  %.pr = load ptr, ptr %this, align 4, !tbaa !201
  br label %if.end10

lpad8:                                            ; preds = %if.then6
  %8 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i36 = load i8, ptr %ref.tmp7, align 4
  %bf.clear.i.i37 = and i8 %bf.load.i.i36, 1
  %tobool.i.not.i38 = icmp eq i8 %bf.clear.i.i37, 0
  br i1 %tobool.i.not.i38, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit43, label %if.then.i39

if.then.i39:                                      ; preds = %lpad8
  %__data_.i.i40 = getelementptr inbounds i8, ptr %ref.tmp7, i32 8
  %9 = load ptr, ptr %__data_.i.i40, align 4, !tbaa !189
  %bf.load.i5.i41 = load i32, ptr %ref.tmp7, align 4
  %bf.lshr.i.i42 = and i32 %bf.load.i5.i41, -2
  call void @_ZdlPvj(ptr noundef %9, i32 noundef %bf.lshr.i.i42) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit43

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit43: ; preds = %lpad8, %if.then.i39
  call void @llvm.lifetime.end.p0(ptr %ref.tmp7)
  br label %common.resume

if.end10:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35, %_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEED2B8ne190000Ev.exit
  %10 = phi ptr [ %.pr, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35 ], [ null, %_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEED2B8ne190000Ev.exit ]
  %call.i44 = call noalias noundef nonnull dereferenceable(20) ptr @_Znwj(i32 noundef 20) #32, !noalias !255
  %__p3_.i.i.i.i = getelementptr inbounds i8, ptr %call.i44, i32 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %call.i44, i8 0, i64 16, i1 false), !noalias !255
  store float 1.000000e+00, ptr %__p3_.i.i.i.i, align 4, !tbaa !258, !noalias !255
  store ptr %call.i44, ptr %this, align 4, !tbaa !201
  %tobool.not.i.i45 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i45, label %_ZNSt3__110unique_ptrI13BufferManagerNS_14default_deleteIS1_EEED2B8ne190000Ev.exit, label %_ZNSt3__110unique_ptrI13BufferManagerNS_14default_deleteIS1_EEEaSB8ne190000EOS4_.exit

_ZNSt3__110unique_ptrI13BufferManagerNS_14default_deleteIS1_EEEaSB8ne190000EOS4_.exit: ; preds = %if.end10
  call void @_ZNKSt3__114default_deleteI13BufferManagerEclB8ne190000EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull %10) #28
  br label %_ZNSt3__110unique_ptrI13BufferManagerNS_14default_deleteIS1_EEED2B8ne190000Ev.exit

_ZNSt3__110unique_ptrI13BufferManagerNS_14default_deleteIS1_EEED2B8ne190000Ev.exit: ; preds = %if.end10, %_ZNSt3__110unique_ptrI13BufferManagerNS_14default_deleteIS1_EEEaSB8ne190000EOS4_.exit
  %call14 = call noundef i32 @_ZN10HexagonAPI26initialize_and_acquire_hmxEv(ptr nonnull align 4 poison)
  %hmx_context_id = getelementptr inbounds i8, ptr %this, i32 8
  store i32 %call14, ptr %hmx_context_id, align 4, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(4) %this) unnamed_addr #17 comdat align 2 {
entry:
  %0 = load ptr, ptr %this, align 4, !tbaa !201
  store ptr null, ptr %this, align 4, !tbaa !201
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEE5resetB8ne190000EPS1_.exit, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %entry
  tail call void @_ZN8VtcmPoolD1Ev(ptr noundef nonnull align 4 dereferenceable(40) %0) #28
  tail call void @_ZdlPvj(ptr noundef nonnull %0, i32 noundef 40) #29
  br label %_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEE5resetB8ne190000EPS1_.exit

_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEE5resetB8ne190000EPS1_.exit: ; preds = %entry, %delete.notnull.i.i
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZNKSt3__114default_deleteI13BufferManagerEclB8ne190000EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__ptr) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %isnull = icmp eq ptr %__ptr, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %__p1_.i = getelementptr inbounds i8, ptr %__ptr, i32 8
  %0 = load ptr, ptr %__p1_.i, align 4, !tbaa !261
  tail call void @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_S2_EEEE(ptr noundef nonnull align 4 dereferenceable(20) %__ptr, ptr noundef %0) #28
  %1 = load ptr, ptr %__ptr, align 4, !tbaa !201
  store ptr null, ptr %__ptr, align 4, !tbaa !201
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %delete.notnull
  %add.ptr.i.i.i.i = getelementptr inbounds i8, ptr %__ptr, i32 4
  %2 = load i32, ptr %add.ptr.i.i.i.i, align 4, !tbaa !184
  %mul.i.i.i.i.i.i = shl i32 %2, 2
  tail call void @_ZdlPvj(ptr noundef nonnull %1, i32 noundef %mul.i.i.i.i.i.i) #29
  br label %_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEED2Ev.exit

_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEED2Ev.exit: ; preds = %delete.notnull, %if.then.i.i.i
  tail call void @_ZdlPvj(ptr noundef nonnull %__ptr, i32 noundef 20) #29
  br label %delete.end

delete.end:                                       ; preds = %_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEED2Ev.exit, %entry
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_S2_EEEE(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef %__np) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %cmp.not13 = icmp eq ptr %__np, null
  br i1 %cmp.not13, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %invoke.cont6
  %__np.addr.014 = phi ptr [ %0, %invoke.cont6 ], [ %__np, %entry ]
  %0 = load ptr, ptr %__np.addr.014, align 4, !tbaa !261
  %second.i.i.i = getelementptr inbounds i8, ptr %__np.addr.014, i32 12
  %1 = load ptr, ptr %second.i.i.i, align 4, !tbaa !201
  store ptr null, ptr %second.i.i.i, align 4, !tbaa !201
  %tobool.not.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.i, label %invoke.cont6, label %delete.notnull.i.i.i.i.i.i

delete.notnull.i.i.i.i.i.i:                       ; preds = %while.body
  tail call void @_ZN13HexagonBufferD1Ev(ptr noundef nonnull align 4 dereferenceable(36) %1) #28
  tail call void @_ZdlPvj(ptr noundef nonnull %1, i32 noundef 36) #29
  br label %invoke.cont6

invoke.cont6:                                     ; preds = %delete.notnull.i.i.i.i.i.i, %while.body
  tail call void @_ZdlPvj(ptr noundef nonnull %__np.addr.014, i32 noundef 16) #29
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !263

while.end:                                        ; preds = %invoke.cont6, %entry
  ret void
}

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000ILi0EEEPKc(ptr noundef nonnull align 4 dereferenceable(12) %this, ptr noundef %__s) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call.i.i = tail call noundef i32 @strlen(ptr noundef nonnull dereferenceable(1) %__s) #28
  %cmp.i = icmp ugt i32 %call.i.i, -9
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) #31
  unreachable

if.end.i:                                         ; preds = %entry
  %cmp.i.i = icmp ult i32 %call.i.i, 11
  br i1 %cmp.i.i, label %if.end9.i, label %if.end9.thread.i

if.end9.thread.i:                                 ; preds = %if.end.i
  %sub.i.i = or i32 %call.i.i, 7
  %add.i = add i32 %sub.i.i, 1
  %call.i5.i.i.i.i = tail call noalias noundef nonnull ptr @_Znwj(i32 noundef %add.i) #32
  %__data_.i23.i = getelementptr inbounds i8, ptr %this, i32 8
  store ptr %call.i5.i.i.i.i, ptr %__data_.i23.i, align 4, !tbaa !189
  %bf.set6.i.i = or disjoint i32 %add.i, 1
  store i32 %bf.set6.i.i, ptr %this, align 4
  %__size_.i.i = getelementptr inbounds i8, ptr %this, i32 4
  store i32 %call.i.i, ptr %__size_.i.i, align 4, !tbaa !189
  br label %if.then.i.i.i

if.end9.i:                                        ; preds = %if.end.i
  %conv.i.i = trunc nuw i32 %call.i.i to i8
  %bf.value.i.i = shl nuw nsw i8 %conv.i.i, 1
  store i8 %bf.value.i.i, ptr %this, align 4
  %__data_.i.i = getelementptr inbounds i8, ptr %this, i32 1
  %cmp.not.i.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcj.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end9.i, %if.end9.thread.i
  %__p.026.i = phi ptr [ %call.i5.i.i.i.i, %if.end9.thread.i ], [ %__data_.i.i, %if.end9.i ]
  tail call void @llvm.memmove.p0.p0.i32(ptr nonnull align 1 %__p.026.i, ptr align 1 %__s, i32 %call.i.i, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcj.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcj.exit: ; preds = %if.end9.i, %if.then.i.i.i
  %__p.027.i = phi ptr [ %__data_.i.i, %if.end9.i ], [ %__p.026.i, %if.then.i.i.i ]
  %arrayidx.i = getelementptr inbounds i8, ptr %__p.027.i, i32 %call.i.i
  store i8 0, ptr %arrayidx.i, align 1, !tbaa !189
  ret void
}

; Function Attrs: mustprogress
define hidden noundef range(i32 1, 0) i32 @_ZN10HexagonAPI26initialize_and_acquire_hmxEv(ptr nonnull readnone align 4 captures(none) %this) local_unnamed_addr #6 align 2 {
entry:
  %request = alloca %struct.HAP_power_request_t, align 8
  %compute_res = alloca %struct.compute_res_attr_t, align 8
  call void @llvm.lifetime.start.p0(ptr %request)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(120) %request, i8 0, i32 120, i1 false)
  store i8 13, ptr %request, align 8, !tbaa !264
  %0 = getelementptr inbounds i8, ptr %request, i32 8
  store i8 1, ptr %0, align 8, !tbaa !189
  %call = tail call dereferenceable_or_null(4) ptr @malloc(i32 noundef 4) #33
  %call2 = call i32 @HAP_power_set(ptr noundef %call, ptr noundef nonnull %request)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  %cmp3 = icmp eq ptr null, @HAP_debug_v2
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.body
  call void (i32, ptr, i32, ptr, ...) @_ZL13_HAP_debug_v2iPKciS0_z.7(i32 poison, ptr nonnull poison, i32 poison, ptr nonnull poison, i32 noundef %call2)
  br label %cleanup14

if.else:                                          ; preds = %do.body
  call void (i32, ptr, i32, ptr, ...) @HAP_debug_v2(i32 noundef 3, ptr noundef nonnull @.str.38, i32 noundef 44, ptr noundef nonnull @.str.1.39, i32 noundef %call2)
  br label %cleanup14

if.end5:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %compute_res)
  %tobool.not.i = icmp eq ptr @compute_resource_attr_init_v2, null
  br i1 %tobool.not.i, label %if.end4.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  %call.i = call i32 @compute_resource_attr_init_v2(ptr noundef nonnull %compute_res, i32 noundef 160, i32 noundef 768)
  %cmp.i = icmp ne i32 %call.i, 0
  %tobool1.i = icmp ne ptr @compute_resource_attr_init, null
  %or.cond.i = and i1 %tobool1.i, %cmp.i
  br i1 %or.cond.i, label %cleanup.sink.split.i, label %_ZL25HAP_compute_res_attr_initP18compute_res_attr_t.exit

if.end4.i:                                        ; preds = %if.end5
  %tobool5.not.i = icmp eq ptr @compute_resource_attr_init, null
  br i1 %tobool5.not.i, label %_ZL25HAP_compute_res_attr_initP18compute_res_attr_t.exit, label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end4.i, %if.then.i
  %call3.i = call i32 @compute_resource_attr_init(ptr noundef nonnull %compute_res)
  br label %_ZL25HAP_compute_res_attr_initP18compute_res_attr_t.exit

_ZL25HAP_compute_res_attr_initP18compute_res_attr_t.exit: ; preds = %if.then.i, %if.end4.i, %cleanup.sink.split.i
  %tobool.not.i22 = icmp eq ptr @compute_resource_attr_set_hmx_param, null
  br i1 %tobool.not.i22, label %_ZL34HAP_compute_res_attr_set_hmx_paramP18compute_res_attr_th.exit, label %if.then.i23

if.then.i23:                                      ; preds = %_ZL25HAP_compute_res_attr_initP18compute_res_attr_t.exit
  %call.i24 = call i32 @compute_resource_attr_set_hmx_param(ptr noundef nonnull %compute_res, i8 noundef zeroext 1)
  br label %_ZL34HAP_compute_res_attr_set_hmx_paramP18compute_res_attr_th.exit

_ZL34HAP_compute_res_attr_set_hmx_paramP18compute_res_attr_th.exit: ; preds = %_ZL25HAP_compute_res_attr_initP18compute_res_attr_t.exit, %if.then.i23
  %tobool.not.i26 = icmp eq ptr @compute_resource_acquire, null
  br i1 %tobool.not.i26, label %cleanup, label %_ZL23HAP_compute_res_acquireP18compute_res_attr_tj.exit

_ZL23HAP_compute_res_acquireP18compute_res_attr_tj.exit: ; preds = %_ZL34HAP_compute_res_attr_set_hmx_paramP18compute_res_attr_th.exit
  %call.i28 = call i32 @compute_resource_acquire(ptr noundef nonnull %compute_res, i32 noundef 100000)
  %cmp9 = icmp eq i32 %call.i28, 0
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %_ZL23HAP_compute_res_acquireP18compute_res_attr_tj.exit
  %tobool.not.i30 = icmp eq ptr @compute_resource_hmx_lock, null
  br i1 %tobool.not.i30, label %cleanup, label %if.then.i31

if.then.i31:                                      ; preds = %if.end11
  %call.i32 = call i32 @compute_resource_hmx_lock(i32 noundef %call.i28)
  br label %cleanup

cleanup:                                          ; preds = %_ZL34HAP_compute_res_attr_set_hmx_paramP18compute_res_attr_th.exit, %if.then.i31, %if.end11, %_ZL23HAP_compute_res_acquireP18compute_res_attr_tj.exit
  %retval.0 = phi i32 [ -2147482602, %_ZL23HAP_compute_res_acquireP18compute_res_attr_tj.exit ], [ %call.i28, %if.end11 ], [ %call.i28, %if.then.i31 ], [ -2147482602, %_ZL34HAP_compute_res_attr_set_hmx_paramP18compute_res_attr_th.exit ]
  call void @llvm.lifetime.end.p0(ptr %compute_res)
  br label %cleanup14

cleanup14:                                        ; preds = %if.then4, %if.else, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call2, %if.else ], [ %call2, %if.then4 ]
  call void @llvm.lifetime.end.p0(ptr %request)
  ret i32 %retval.1
}

declare i32 @HAP_power_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress
define internal void @_ZL13_HAP_debug_v2iPKciS0_z.7(i32 %level, ptr readnone captures(none) %file, i32 %line, ptr readnone captures(none) %format, ...) unnamed_addr #8 {
entry:
  %buf = alloca [256 x i8], align 8
  %args = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(ptr %buf)
  call void @llvm.lifetime.start.p0(ptr %args)
  call void @llvm.va_start.p0(ptr nonnull %args)
  %0 = load ptr, ptr %args, align 4, !tbaa !201
  %call = call i32 @vsnprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef nonnull @.str.1.39, ptr noundef %0) #28
  call void @llvm.va_end.p0(ptr nonnull %args)
  call void @HAP_debug(ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull @.str.38, i32 noundef 44)
  call void @llvm.lifetime.end.p0(ptr %args)
  call void @llvm.lifetime.end.p0(ptr %buf)
  ret void
}

declare extern_weak i32 @compute_resource_attr_set_hmx_param(ptr noundef, i8 noundef zeroext) #3

declare extern_weak i32 @compute_resource_hmx_lock(i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i32(ptr writeonly captures(none), ptr readonly captures(none), i32, i1 immarg) #16

; Function Attrs: mustprogress
define hidden noundef ptr @_ZN10HexagonAPI5AllocEjyb(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %this, i32 noundef %nbytes, i64 noundef %alignment, i1 noundef zeroext %isVtcm) local_unnamed_addr #6 align 2 {
entry:
  %nbytes.addr = alloca i32, align 4
  %isVtcm.addr = alloca i8, align 1
  %ref.tmp = alloca i32, align 4
  store i32 %nbytes, ptr %nbytes.addr, align 4, !tbaa !184
  %storedv = zext i1 %isVtcm to i8
  store i8 %storedv, ptr %isVtcm.addr, align 1, !tbaa !267
  %0 = load ptr, ptr %this, align 4, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  %conv = trunc i64 %alignment to i32
  store i32 %conv, ptr %ref.tmp, align 4, !tbaa !184
  %call2 = call noundef ptr @_ZN13BufferManager21AllocateHexagonBufferIJRjjRbEEEPvDpOT_(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(4) %nbytes.addr, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %isVtcm.addr)
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  ret ptr %call2
}

; Function Attrs: mustprogress
define linkonce_odr hidden noundef ptr @_ZN13BufferManager21AllocateHexagonBufferIJRjjRbEEEPvDpOT_(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef nonnull align 4 dereferenceable(4) %args, ptr noundef nonnull align 4 dereferenceable(4) %args1, ptr noundef nonnull align 1 dereferenceable(1) %args3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %buf = alloca %"class.std::__1::unique_ptr.40", align 4
  %ref.tmp = alloca %"struct.std::__1::pair.11", align 4
  call void @llvm.lifetime.start.p0(ptr %buf)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %call.i = tail call noalias noundef nonnull dereferenceable(36) ptr @_Znwj(i32 noundef 36) #32, !noalias !268
  %0 = load i32, ptr %args, align 4, !tbaa !184, !noalias !268
  %1 = load i32, ptr %args1, align 4, !tbaa !184, !noalias !268
  %2 = load i8, ptr %args3, align 1, !tbaa !267, !range !218, !noalias !268, !noundef !219
  %loadedv.i = trunc nuw i8 %2 to i1
  invoke void @_ZN13HexagonBufferC1Ejjb(ptr noundef nonnull align 4 dereferenceable(36) %call.i, i32 noundef %0, i32 noundef %1, i1 noundef zeroext %loadedv.i)
          to label %_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjjRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit unwind label %lpad.i, !noalias !268

common.resume:                                    ; preds = %ehcleanup, %lpad.i
  %common.resume.op = phi { ptr, i32 } [ %3, %lpad.i ], [ %.pn, %ehcleanup ]
  resume { ptr, i32 } %common.resume.op

lpad.i:                                           ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvj(ptr noundef nonnull %call.i, i32 noundef 36) #29, !noalias !268
  br label %common.resume

_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjjRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit: ; preds = %entry
  store ptr %call.i, ptr %buf, align 4, !tbaa !271, !alias.scope !268
  %call6 = invoke noundef ptr @_ZN13HexagonBuffer10GetPointerEv(ptr noundef nonnull align 4 dereferenceable(36) %call.i)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjjRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  store ptr %call6, ptr %ref.tmp, align 4, !tbaa !273
  %second.i = getelementptr inbounds i8, ptr %ref.tmp, i32 4
  store ptr null, ptr %buf, align 4, !tbaa !201
  store ptr %call.i, ptr %second.i, align 4, !tbaa !271
  %call2.i.i14 = invoke i64 @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE25__emplace_unique_key_argsIS2_JNS_4pairIKS2_S7_EEEEENSL_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEEbEERKT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
          to label %_ZNSt3__113unordered_mapIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS3_EEEENS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorINS_4pairIKS1_S6_EEEEE6insertB8ne190000EOSE_.exit unwind label %lpad7

_ZNSt3__113unordered_mapIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS3_EEEENS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorINS_4pairIKS1_S6_EEEEE6insertB8ne190000EOSE_.exit: ; preds = %invoke.cont
  %4 = load ptr, ptr %second.i, align 4, !tbaa !201
  store ptr null, ptr %second.i, align 4, !tbaa !201
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev.exit, label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %_ZNSt3__113unordered_mapIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS3_EEEENS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorINS_4pairIKS1_S6_EEEEE6insertB8ne190000EOSE_.exit
  call void @_ZN13HexagonBufferD1Ev(ptr noundef nonnull align 4 dereferenceable(36) %4) #28
  call void @_ZdlPvj(ptr noundef nonnull %4, i32 noundef 36) #29
  br label %_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev.exit

_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev.exit: ; preds = %delete.notnull.i.i.i.i, %_ZNSt3__113unordered_mapIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS3_EEEENS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorINS_4pairIKS1_S6_EEEEE6insertB8ne190000EOSE_.exit
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  call void @llvm.lifetime.end.p0(ptr %buf)
  ret ptr %call6

lpad:                                             ; preds = %_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjjRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad7:                                            ; preds = %invoke.cont
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__14pairIKPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEED2Ev(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp) #28
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad7, %lpad
  %.pn = phi { ptr, i32 } [ %6, %lpad7 ], [ %5, %lpad ]
  call void @_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(4) %buf) #28
  call void @llvm.lifetime.end.p0(ptr %buf)
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: mustprogress
define linkonce_odr hidden i64 @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE25__emplace_unique_key_argsIS2_JNS_4pairIKS2_S7_EEEEENSL_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEEbEERKT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef nonnull align 4 dereferenceable(4) %__k, ptr noundef nonnull align 4 dereferenceable(8) %__args) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__u.i = alloca %"class.std::__1::basic_ostream.base", align 4
  %ref.tmp.i = alloca %"class.std::__1::ios_base::Init", align 1
  %__h = alloca %"class.std::__1::unique_ptr.61", align 4
  %0 = load ptr, ptr %__k, align 4, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr %__u.i)
  store ptr %0, ptr %__u.i, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr %ref.tmp.i)
  %call.i171 = invoke noundef i32 @_ZNKSt3__121__murmur2_or_cityhashIjLj32EEclB8ne190000EPKvj(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp.i, ptr noundef nonnull %__u.i, i32 noundef 4)
          to label %_ZNKSt3__14hashIPvEclB8ne190000ES1_.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #30
  unreachable

_ZNKSt3__14hashIPvEclB8ne190000ES1_.exit:         ; preds = %entry
  call void @llvm.lifetime.end.p0(ptr %ref.tmp.i)
  call void @llvm.lifetime.end.p0(ptr %__u.i)
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %this, i32 4
  %3 = load i32, ptr %add.ptr.i.i.i, align 4, !tbaa !184
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end23, label %if.then

if.then:                                          ; preds = %_ZNKSt3__14hashIPvEclB8ne190000ES1_.exit
  %4 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %3)
  %tobool.not.i = icmp ult i32 %4, 2
  br i1 %tobool.not.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then
  %sub.i = add i32 %3, -1
  %and2.i = and i32 %sub.i, %call.i171
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit

cond.false.i:                                     ; preds = %if.then
  %cmp.i = icmp ult i32 %call.i171, %3
  br i1 %cmp.i, label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit, label %cond.false4.i

cond.false4.i:                                    ; preds = %cond.false.i
  %rem.i = urem i32 %call.i171, %3
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit

_ZNSt3__116__constrain_hashB8ne190000Ejj.exit:    ; preds = %cond.true.i, %cond.false.i, %cond.false4.i
  %cond6.i = phi i32 [ %and2.i, %cond.true.i ], [ %rem.i, %cond.false4.i ], [ %call.i171, %cond.false.i ]
  %5 = load ptr, ptr %this, align 4, !tbaa !201
  %arrayidx.i = getelementptr inbounds ptr, ptr %5, i32 %cond6.i
  %6 = load ptr, ptr %arrayidx.i, align 4, !tbaa !201
  %cmp6.not = icmp eq ptr %6, null
  br i1 %cmp6.not, label %if.end23, label %for.cond.preheader

for.cond.preheader:                               ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit
  %__nd.0173 = load ptr, ptr %6, align 4, !tbaa !261
  %cmp8.not174 = icmp eq ptr %__nd.0173, null
  br i1 %cmp8.not174, label %if.end23, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %sub.i130 = add i32 %3, -1
  %7 = load ptr, ptr %__k, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %__nd.0175 = phi ptr [ %__nd.0173, %land.rhs.lr.ph ], [ %__nd.0, %for.inc ]
  %__hash_.i = getelementptr inbounds i8, ptr %__nd.0175, i32 4
  %8 = load i32, ptr %__hash_.i, align 4, !tbaa !277
  %cmp10 = icmp eq i32 %8, %call.i171
  br i1 %cmp10, label %land.lhs.true, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  br i1 %tobool.not.i, label %cond.true.i129, label %cond.false.i124

cond.true.i129:                                   ; preds = %lor.rhs
  %and2.i131 = and i32 %8, %sub.i130
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit132

cond.false.i124:                                  ; preds = %lor.rhs
  %cmp.i125 = icmp ult i32 %8, %3
  br i1 %cmp.i125, label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit132, label %cond.false4.i126

cond.false4.i126:                                 ; preds = %cond.false.i124
  %rem.i127 = urem i32 %8, %3
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit132

_ZNSt3__116__constrain_hashB8ne190000Ejj.exit132: ; preds = %cond.true.i129, %cond.false.i124, %cond.false4.i126
  %cond6.i128 = phi i32 [ %and2.i131, %cond.true.i129 ], [ %rem.i127, %cond.false4.i126 ], [ %8, %cond.false.i124 ]
  %cmp13 = icmp eq i32 %cond6.i128, %cond6.i
  br i1 %cmp13, label %for.inc, label %if.end23

land.lhs.true:                                    ; preds = %land.rhs
  %9 = getelementptr inbounds i8, ptr %__nd.0175, i32 8
  %10 = load ptr, ptr %9, align 4, !tbaa !201
  %cmp.i.i = icmp eq ptr %10, %7
  br i1 %cmp.i.i, label %__done, label %for.inc

for.inc:                                          ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit132, %land.lhs.true
  %__nd.0 = load ptr, ptr %__nd.0175, align 4, !tbaa !261
  %cmp8.not = icmp eq ptr %__nd.0, null
  br i1 %cmp8.not, label %if.end23, label %land.rhs, !llvm.loop !279

if.end23:                                         ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit132, %for.inc, %for.cond.preheader, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit, %_ZNKSt3__14hashIPvEclB8ne190000ES1_.exit
  %__chash.0 = phi i32 [ %cond6.i, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit ], [ undef, %_ZNKSt3__14hashIPvEclB8ne190000ES1_.exit ], [ %cond6.i, %for.cond.preheader ], [ %cond6.i, %for.inc ], [ %cond6.i, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit132 ]
  call void @llvm.lifetime.start.p0(ptr %__h)
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %__p1_.i.i = getelementptr inbounds i8, ptr %this, i32 8
  %call.i5.i.i.i.i = call noalias noundef nonnull dereferenceable(16) ptr @_Znwj(i32 noundef 16) #32, !noalias !280
  %11 = getelementptr inbounds i8, ptr %__h, i32 4
  %12 = ptrtoint ptr %__p1_.i.i to i32
  store i32 %12, ptr %11, align 4, !alias.scope !280
  %.sroa_idx.i = getelementptr inbounds i8, ptr %__h, i32 8
  store ptr null, ptr %call.i5.i.i.i.i, align 4, !tbaa !261, !noalias !280
  %__hash_.i.i.i = getelementptr inbounds i8, ptr %call.i5.i.i.i.i, i32 4
  store i32 %call.i171, ptr %__hash_.i.i.i, align 4, !tbaa !277, !noalias !280
  %13 = getelementptr inbounds i8, ptr %call.i5.i.i.i.i, i32 8
  %14 = load ptr, ptr %__args, align 4, !tbaa !273, !noalias !280
  store ptr %14, ptr %13, align 4, !tbaa !273, !noalias !280
  %second.i.i.i.i = getelementptr inbounds i8, ptr %call.i5.i.i.i.i, i32 12
  %second3.i.i.i.i = getelementptr inbounds i8, ptr %__args, i32 4
  %15 = load ptr, ptr %second3.i.i.i.i, align 4, !tbaa !201, !noalias !280
  store ptr null, ptr %second3.i.i.i.i, align 4, !tbaa !201, !noalias !280
  store ptr %15, ptr %second.i.i.i.i, align 4, !tbaa !271, !noalias !280
  store i8 1, ptr %.sroa_idx.i, align 4, !tbaa !283, !alias.scope !280
  %__p2_.i134 = getelementptr inbounds i8, ptr %this, i32 12
  %16 = load i32, ptr %__p2_.i134, align 4, !tbaa !184
  %add = add i32 %16, 1
  %conv = uitofp i32 %add to float
  %conv25 = uitofp i32 %3 to float
  %__p3_.i135 = getelementptr inbounds i8, ptr %this, i32 16
  %17 = load float, ptr %__p3_.i135, align 4, !tbaa !285
  %mul = fmul float %17, %conv25
  %cmp27 = fcmp olt float %mul, %conv
  %or.cond = or i1 %cmp.not, %cmp27
  br i1 %or.cond, label %if.then29, label %if.end47

if.then29:                                        ; preds = %if.end23
  %mul30 = shl i32 %3, 1
  %cmp.i136 = icmp ult i32 %3, 3
  %18 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %3)
  %tobool.not.i137 = icmp ugt i32 %18, 1
  %.not = select i1 %cmp.i136, i1 true, i1 %tobool.not.i137
  %conv32 = zext i1 %.not to i32
  %add33 = or disjoint i32 %mul30, %conv32
  %div = fdiv float %conv, %17
  %19 = call noundef float @llvm.ceil.f32(float %div)
  %conv40 = fptoui float %19 to i32
  %20 = call i32 @llvm.umax.i32(i32 %add33, i32 %conv40)
  invoke void @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE8__rehashILb1EEEvj(ptr noundef nonnull align 4 dereferenceable(20) %this, i32 noundef %20)
          to label %invoke.cont44 unwind label %_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeIPvNS0_I13HexagonBufferNS_14default_deleteIS4_EEEEEES3_EENS_22__hash_node_destructorINS_9allocatorIS9_EEEEED2B8ne190000Ev.exit

invoke.cont44:                                    ; preds = %if.then29
  %21 = load i32, ptr %add.ptr.i.i.i, align 4, !tbaa !184
  %22 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %21)
  %tobool.not.i141 = icmp ult i32 %22, 2
  br i1 %tobool.not.i141, label %cond.true.i147, label %cond.false.i142

cond.true.i147:                                   ; preds = %invoke.cont44
  %sub.i148 = add i32 %21, -1
  %and2.i149 = and i32 %sub.i148, %call.i171
  br label %if.end47

cond.false.i142:                                  ; preds = %invoke.cont44
  %cmp.i143 = icmp ult i32 %call.i171, %21
  br i1 %cmp.i143, label %if.end47, label %cond.false4.i144

cond.false4.i144:                                 ; preds = %cond.false.i142
  %rem.i145 = urem i32 %call.i171, %21
  br label %if.end47

_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeIPvNS0_I13HexagonBufferNS_14default_deleteIS4_EEEEEES3_EENS_22__hash_node_destructorINS_9allocatorIS9_EEEEED2B8ne190000Ev.exit: ; preds = %if.then29
  %23 = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %__h, align 4, !tbaa !201
  call void @_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS6_EEEEEES4_EEEEEclB8ne190000EPSB_(ptr noundef nonnull align 4 dereferenceable(5) %11, ptr noundef nonnull %call.i5.i.i.i.i) #28
  call void @llvm.lifetime.end.p0(ptr %__h)
  resume { ptr, i32 } %23

if.end47:                                         ; preds = %cond.false4.i144, %cond.false.i142, %cond.true.i147, %if.end23
  %__chash.1 = phi i32 [ %__chash.0, %if.end23 ], [ %and2.i149, %cond.true.i147 ], [ %rem.i145, %cond.false4.i144 ], [ %call.i171, %cond.false.i142 ]
  %__bc.0 = phi i32 [ %3, %if.end23 ], [ %21, %cond.true.i147 ], [ %21, %cond.false4.i144 ], [ %21, %cond.false.i142 ]
  %24 = load ptr, ptr %this, align 4, !tbaa !201
  %arrayidx.i152 = getelementptr inbounds ptr, ptr %24, i32 %__chash.1
  %25 = load ptr, ptr %arrayidx.i152, align 4, !tbaa !201
  %cmp50 = icmp eq ptr %25, null
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end47
  %26 = load ptr, ptr %__p1_.i.i, align 4, !tbaa !261
  store ptr %26, ptr %call.i5.i.i.i.i, align 4, !tbaa !261
  store ptr %call.i5.i.i.i.i, ptr %__p1_.i.i, align 4, !tbaa !261
  store ptr %__p1_.i.i, ptr %arrayidx.i152, align 4, !tbaa !201
  %27 = load ptr, ptr %call.i5.i.i.i.i, align 4, !tbaa !261
  %cmp64.not = icmp eq ptr %27, null
  br i1 %cmp64.not, label %if.end80, label %if.then65

if.then65:                                        ; preds = %if.then51
  %__hash_.i154 = getelementptr inbounds i8, ptr %27, i32 4
  %28 = load i32, ptr %__hash_.i154, align 4, !tbaa !277
  %29 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %__bc.0)
  %tobool.not.i155 = icmp ult i32 %29, 2
  br i1 %tobool.not.i155, label %cond.true.i161, label %cond.false.i156

cond.true.i161:                                   ; preds = %if.then65
  %sub.i162 = add i32 %__bc.0, -1
  %and2.i163 = and i32 %28, %sub.i162
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit164

cond.false.i156:                                  ; preds = %if.then65
  %cmp.i157 = icmp ult i32 %28, %__bc.0
  br i1 %cmp.i157, label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit164, label %cond.false4.i158

cond.false4.i158:                                 ; preds = %cond.false.i156
  %rem.i159 = urem i32 %28, %__bc.0
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit164

_ZNSt3__116__constrain_hashB8ne190000Ejj.exit164: ; preds = %cond.true.i161, %cond.false.i156, %cond.false4.i158
  %cond6.i160 = phi i32 [ %and2.i163, %cond.true.i161 ], [ %rem.i159, %cond.false4.i158 ], [ %28, %cond.false.i156 ]
  %30 = load ptr, ptr %this, align 4, !tbaa !201
  %arrayidx.i165 = getelementptr inbounds ptr, ptr %30, i32 %cond6.i160
  br label %if.end80.sink.split

if.else:                                          ; preds = %if.end47
  %31 = load ptr, ptr %25, align 4, !tbaa !261
  store ptr %31, ptr %call.i5.i.i.i.i, align 4, !tbaa !261
  br label %if.end80.sink.split

if.end80.sink.split:                              ; preds = %if.else, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit164
  %arrayidx.i165.sink = phi ptr [ %arrayidx.i165, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit164 ], [ %25, %if.else ]
  store ptr %call.i5.i.i.i.i, ptr %arrayidx.i165.sink, align 4, !tbaa !201
  br label %if.end80

if.end80:                                         ; preds = %if.end80.sink.split, %if.then51
  %32 = load i32, ptr %__p2_.i134, align 4, !tbaa !184
  %inc = add i32 %32, 1
  store i32 %inc, ptr %__p2_.i134, align 4, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr %__h)
  br label %__done

__done:                                           ; preds = %land.lhs.true, %if.end80
  %__inserted.0 = phi i8 [ 1, %if.end80 ], [ 0, %land.lhs.true ]
  %__nd.1 = phi ptr [ %call.i5.i.i.i.i, %if.end80 ], [ %__nd.0175, %land.lhs.true ]
  %.cast = ptrtoint ptr %__nd.1 to i32
  %retval.sroa.2.0.insert.ext = zext nneg i8 %__inserted.0 to i64
  %retval.sroa.2.0.insert.shift = shl nuw nsw i64 %retval.sroa.2.0.insert.ext, 32
  %retval.sroa.0.0.insert.ext = zext i32 %.cast to i64
  %retval.sroa.0.0.insert.insert = or disjoint i64 %retval.sroa.2.0.insert.shift, %retval.sroa.0.0.insert.ext
  ret i64 %retval.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__14pairIKPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEED2Ev(ptr noundef nonnull align 4 dereferenceable(8) %this) unnamed_addr #11 comdat align 2 {
entry:
  %second = getelementptr inbounds i8, ptr %this, i32 4
  %0 = load ptr, ptr %second, align 4, !tbaa !201
  store ptr null, ptr %second, align 4, !tbaa !201
  %tobool.not.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i, label %_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev.exit, label %delete.notnull.i.i.i

delete.notnull.i.i.i:                             ; preds = %entry
  tail call void @_ZN13HexagonBufferD1Ev(ptr noundef nonnull align 4 dereferenceable(36) %0) #28
  tail call void @_ZdlPvj(ptr noundef nonnull %0, i32 noundef 36) #29
  br label %_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev.exit

_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev.exit: ; preds = %entry, %delete.notnull.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(4) %this) unnamed_addr #17 comdat align 2 {
entry:
  %0 = load ptr, ptr %this, align 4, !tbaa !201
  store ptr null, ptr %this, align 4, !tbaa !201
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEE5resetB8ne190000EPS1_.exit, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %entry
  tail call void @_ZN13HexagonBufferD1Ev(ptr noundef nonnull align 4 dereferenceable(36) %0) #28
  tail call void @_ZdlPvj(ptr noundef nonnull %0, i32 noundef 36) #29
  br label %_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEE5resetB8ne190000EPS1_.exit

_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEE5resetB8ne190000EPS1_.exit: ; preds = %entry, %delete.notnull.i.i
  ret void
}

; Function Attrs: mustprogress
define linkonce_odr hidden noundef i32 @_ZNKSt3__121__murmur2_or_cityhashIjLj32EEclB8ne190000EPKvj(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__key, i32 noundef %__len) local_unnamed_addr #6 comdat align 2 {
entry:
  %cmp43 = icmp ugt i32 %__len, 3
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %__len.addr.046 = phi i32 [ %sub, %for.body ], [ %__len, %entry ]
  %__data.045 = phi ptr [ %add.ptr, %for.body ], [ %__key, %entry ]
  %__h.044 = phi i32 [ %xor4, %for.body ], [ %__len, %entry ]
  %__r.0.copyload.i = load i32, ptr %__data.045, align 1
  %mul = mul i32 %__r.0.copyload.i, 1540483477
  %shr = lshr i32 %mul, 24
  %xor = xor i32 %shr, %mul
  %mul2 = mul i32 %xor, 1540483477
  %mul3 = mul i32 %__h.044, 1540483477
  %xor4 = xor i32 %mul2, %mul3
  %add.ptr = getelementptr inbounds i8, ptr %__data.045, i32 4
  %sub = add i32 %__len.addr.046, -4
  %cmp = icmp ugt i32 %sub, 3
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !286

for.end:                                          ; preds = %for.body, %entry
  %__h.0.lcssa = phi i32 [ %__len, %entry ], [ %xor4, %for.body ]
  %__data.0.lcssa = phi ptr [ %__key, %entry ], [ %add.ptr, %for.body ]
  %__len.addr.0.lcssa = phi i32 [ %__len, %entry ], [ %sub, %for.body ]
  switch i32 %__len.addr.0.lcssa, label %for.end.unreachabledefault [
    i32 3, label %sw.bb
    i32 2, label %sw.bb6
    i32 1, label %sw.bb11
    i32 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %for.end
  %arrayidx = getelementptr inbounds i8, ptr %__data.0.lcssa, i32 2
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !189
  %conv = zext i8 %0 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %xor5 = xor i32 %shl, %__h.0.lcssa
  br label %sw.bb6

sw.bb6:                                           ; preds = %for.end, %sw.bb
  %__h.1 = phi i32 [ %__h.0.lcssa, %for.end ], [ %xor5, %sw.bb ]
  %arrayidx7 = getelementptr inbounds i8, ptr %__data.0.lcssa, i32 1
  %1 = load i8, ptr %arrayidx7, align 1, !tbaa !189
  %conv8 = zext i8 %1 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %xor10 = xor i32 %shl9, %__h.1
  br label %sw.bb11

sw.bb11:                                          ; preds = %for.end, %sw.bb6
  %__h.2 = phi i32 [ %__h.0.lcssa, %for.end ], [ %xor10, %sw.bb6 ]
  %2 = load i8, ptr %__data.0.lcssa, align 1, !tbaa !189
  %conv13 = zext i8 %2 to i32
  %xor14 = xor i32 %__h.2, %conv13
  %mul15 = mul i32 %xor14, 1540483477
  br label %sw.epilog

for.end.unreachabledefault:                       ; preds = %for.end
  unreachable

sw.epilog:                                        ; preds = %for.end, %sw.bb11
  %__h.3 = phi i32 [ %__h.0.lcssa, %for.end ], [ %mul15, %sw.bb11 ]
  %shr16 = lshr i32 %__h.3, 13
  %xor17 = xor i32 %shr16, %__h.3
  %mul18 = mul i32 %xor17, 1540483477
  %shr19 = lshr i32 %mul18, 15
  %xor20 = xor i32 %shr19, %mul18
  ret i32 %xor20
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #9

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE8__rehashILb1EEEvj(ptr noundef nonnull align 4 dereferenceable(20) %this, i32 noundef %__n) local_unnamed_addr #6 comdat align 2 {
entry:
  %cmp = icmp eq i32 %__n, 1
  br i1 %cmp, label %if.end3, label %if.else

if.else:                                          ; preds = %entry
  %0 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %__n)
  %tobool.not = icmp ult i32 %0, 2
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.else
  %call = tail call noundef i32 @_ZNSt3__112__next_primeEj(i32 noundef %__n)
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.else, %if.then2
  %__n.addr.0 = phi i32 [ %__n, %if.else ], [ %call, %if.then2 ], [ 2, %entry ]
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %this, i32 4
  %1 = load i32, ptr %add.ptr.i.i.i, align 4, !tbaa !184
  %cmp5 = icmp ugt i32 %__n.addr.0, %1
  br i1 %cmp5, label %if.end28.sink.split, label %if.else7

if.else7:                                         ; preds = %if.end3
  %cmp8 = icmp ult i32 %__n.addr.0, %1
  br i1 %cmp8, label %if.then9, label %if.end28

if.then9:                                         ; preds = %if.else7
  %cmp.i = icmp ugt i32 %1, 2
  %2 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %tobool.not.i = icmp ult i32 %2, 2
  %3 = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  %__p2_.i = getelementptr inbounds i8, ptr %this, i32 12
  %4 = load i32, ptr %__p2_.i, align 4, !tbaa !184
  %conv = uitofp i32 %4 to float
  %__p3_.i = getelementptr inbounds i8, ptr %this, i32 16
  %5 = load float, ptr %__p3_.i, align 4, !tbaa !285
  %div = fdiv float %conv, %5
  %6 = tail call noundef float @llvm.ceil.f32(float %div)
  %conv14 = fptoui float %6 to i32
  br i1 %3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then9
  %cmp.i33 = icmp ult i32 %conv14, 2
  %sub.i = add i32 %conv14, -1
  %7 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %sub.i, i1 false)
  %sub1.i = sub nuw nsw i32 32, %7
  %shl.i = shl nuw i32 1, %sub1.i
  %cond.i = select i1 %cmp.i33, i32 %conv14, i32 %shl.i
  br label %cond.end

cond.false:                                       ; preds = %if.then9
  %call22 = tail call noundef i32 @_ZNSt3__112__next_primeEj(i32 noundef %conv14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %cond.i, %cond.true ], [ %call22, %cond.false ]
  %8 = tail call i32 @llvm.umax.i32(i32 %__n.addr.0, i32 %cond)
  %cmp24 = icmp ult i32 %8, %1
  br i1 %cmp24, label %if.end28.sink.split, label %if.end28

if.end28.sink.split:                              ; preds = %cond.end, %if.end3
  %.sink = phi i32 [ %__n.addr.0, %if.end3 ], [ %8, %cond.end ]
  tail call void @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE11__do_rehashILb1EEEvj(ptr noundef nonnull align 4 dereferenceable(20) %this, i32 noundef %.sink)
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.else7, %cond.end
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS6_EEEEEES4_EEEEEclB8ne190000EPSB_(ptr noundef nonnull align 4 dereferenceable(5) %this, ptr noundef %__p) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__value_constructed = getelementptr inbounds i8, ptr %this, i32 4
  %0 = load i8, ptr %__value_constructed, align 4, !tbaa !283, !range !218, !noundef !219
  %loadedv = trunc nuw i8 %0 to i1
  br i1 %loadedv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %second.i.i.i = getelementptr inbounds i8, ptr %__p, i32 12
  %1 = load ptr, ptr %second.i.i.i, align 4, !tbaa !201
  store ptr null, ptr %second.i.i.i, align 4, !tbaa !201
  %tobool.not.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then4, label %delete.notnull.i.i.i.i.i.i

delete.notnull.i.i.i.i.i.i:                       ; preds = %if.then
  tail call void @_ZN13HexagonBufferD1Ev(ptr noundef nonnull align 4 dereferenceable(36) %1) #28
  tail call void @_ZdlPvj(ptr noundef nonnull %1, i32 noundef 36) #29
  br label %if.then4

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %__p, null
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %delete.notnull.i.i.i.i.i.i, %if.then, %if.end
  tail call void @_ZdlPvj(ptr noundef nonnull %__p, i32 noundef 16) #29
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  ret void
}

declare noundef i32 @_ZNSt3__112__next_primeEj(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE11__do_rehashILb1EEEvj(ptr noundef nonnull align 4 dereferenceable(20) %this, i32 noundef %__nbc) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %cmp.not = icmp eq i32 %__nbc, 0
  br i1 %cmp.not, label %if.end49.critedge, label %cond.true

cond.true:                                        ; preds = %entry
  %cmp.i.i = icmp ugt i32 %__nbc, 1073741823
  br i1 %cmp.i.i, label %if.then.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS7_EEEEEES5_EEEEEEE8allocateB8ne190000ERSG_j.exit

if.then.i.i:                                      ; preds = %cond.true
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne190000v() #31
  unreachable

_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS7_EEEEEES5_EEEEEEE8allocateB8ne190000ERSG_j.exit: ; preds = %cond.true
  %mul.i.i = shl nuw i32 %__nbc, 2
  %call.i5.i.i.i = tail call noalias noundef nonnull ptr @_Znwj(i32 noundef %mul.i.i) #32
  %0 = load ptr, ptr %this, align 4, !tbaa !201
  store ptr %call.i5.i.i.i, ptr %this, align 4, !tbaa !201
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS0_I13HexagonBufferNS_14default_deleteIS5_EEEEEES4_EEEENS_25__bucket_list_deallocatorINS_9allocatorISD_EEEEE5resetB8ne190000IPSD_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSN_.exit, label %if.then.i

if.then.i:                                        ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS7_EEEEEES5_EEEEEEE8allocateB8ne190000ERSG_j.exit
  %add.ptr.i.i79 = getelementptr inbounds i8, ptr %this, i32 4
  %1 = load i32, ptr %add.ptr.i.i79, align 4, !tbaa !184
  %mul.i.i.i.i = shl i32 %1, 2
  tail call void @_ZdlPvj(ptr noundef nonnull %0, i32 noundef %mul.i.i.i.i) #29
  br label %_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS0_I13HexagonBufferNS_14default_deleteIS5_EEEEEES4_EEEENS_25__bucket_list_deallocatorINS_9allocatorISD_EEEEE5resetB8ne190000IPSD_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSN_.exit

_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS0_I13HexagonBufferNS_14default_deleteIS5_EEEEEES4_EEEENS_25__bucket_list_deallocatorINS_9allocatorISD_EEEEE5resetB8ne190000IPSD_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSN_.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS7_EEEEEES5_EEEEEEE8allocateB8ne190000ERSG_j.exit, %if.then.i
  %add.ptr.i.i80 = getelementptr inbounds i8, ptr %this, i32 4
  store i32 %__nbc, ptr %add.ptr.i.i80, align 4, !tbaa !184
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %__p1_ = getelementptr inbounds i8, ptr %this, i32 8
  %2 = load ptr, ptr %__p1_, align 4, !tbaa !261
  %cmp14.not = icmp eq ptr %2, null
  br i1 %cmp14.not, label %if.end49, label %if.then15

for.body:                                         ; preds = %_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS0_I13HexagonBufferNS_14default_deleteIS5_EEEEEES4_EEEENS_25__bucket_list_deallocatorINS_9allocatorISD_EEEEE5resetB8ne190000IPSD_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSN_.exit, %for.body
  %__i.0104 = phi i32 [ 0, %_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS0_I13HexagonBufferNS_14default_deleteIS5_EEEEEES4_EEEENS_25__bucket_list_deallocatorINS_9allocatorISD_EEEEE5resetB8ne190000IPSD_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSN_.exit ], [ %inc, %for.body ]
  %3 = load ptr, ptr %this, align 4, !tbaa !201
  %arrayidx.i = getelementptr inbounds ptr, ptr %3, i32 %__i.0104
  store ptr null, ptr %arrayidx.i, align 4, !tbaa !201
  %inc = add nuw i32 %__i.0104, 1
  %exitcond.not = icmp eq i32 %inc, %__nbc
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !287

if.then15:                                        ; preds = %for.cond.cleanup
  %__hash_.i = getelementptr inbounds i8, ptr %2, i32 4
  %4 = load i32, ptr %__hash_.i, align 4, !tbaa !277
  %5 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %__nbc)
  %tobool.not.i81 = icmp ult i32 %5, 2
  br i1 %tobool.not.i81, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then15
  %sub.i = add nsw i32 %__nbc, -1
  %and2.i = and i32 %4, %sub.i
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit

cond.false.i:                                     ; preds = %if.then15
  %cmp.i = icmp ult i32 %4, %__nbc
  br i1 %cmp.i, label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit, label %cond.false4.i

cond.false4.i:                                    ; preds = %cond.false.i
  %rem.i = urem i32 %4, %__nbc
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit

_ZNSt3__116__constrain_hashB8ne190000Ejj.exit:    ; preds = %cond.true.i, %cond.false.i, %cond.false4.i
  %cond6.i = phi i32 [ %and2.i, %cond.true.i ], [ %rem.i, %cond.false4.i ], [ %4, %cond.false.i ]
  %6 = load ptr, ptr %this, align 4, !tbaa !201
  %arrayidx.i82 = getelementptr inbounds ptr, ptr %6, i32 %cond6.i
  store ptr %__p1_, ptr %arrayidx.i82, align 4, !tbaa !201
  %__cp.0105 = load ptr, ptr %2, align 4, !tbaa !261
  %cmp22.not106 = icmp eq ptr %__cp.0105, null
  br i1 %cmp22.not106, label %if.end49, label %for.body23.lr.ph

for.body23.lr.ph:                                 ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit
  %sub.i91 = add nsw i32 %__nbc, -1
  br label %for.body23

for.body23:                                       ; preds = %for.body23.lr.ph, %for.inc45
  %__cp.0109 = phi ptr [ %__cp.0105, %for.body23.lr.ph ], [ %__cp.0, %for.inc45 ]
  %__phash.0108 = phi i32 [ %cond6.i, %for.body23.lr.ph ], [ %__phash.1, %for.inc45 ]
  %__pp.0107 = phi ptr [ %2, %for.body23.lr.ph ], [ %__pp.1, %for.inc45 ]
  %__hash_.i83 = getelementptr inbounds i8, ptr %__cp.0109, i32 4
  %7 = load i32, ptr %__hash_.i83, align 4, !tbaa !277
  br i1 %tobool.not.i81, label %cond.true.i90, label %cond.false.i85

cond.true.i90:                                    ; preds = %for.body23
  %and2.i92 = and i32 %7, %sub.i91
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit93

cond.false.i85:                                   ; preds = %for.body23
  %cmp.i86 = icmp ult i32 %7, %__nbc
  br i1 %cmp.i86, label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit93, label %cond.false4.i87

cond.false4.i87:                                  ; preds = %cond.false.i85
  %rem.i88 = urem i32 %7, %__nbc
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit93

_ZNSt3__116__constrain_hashB8ne190000Ejj.exit93:  ; preds = %cond.true.i90, %cond.false.i85, %cond.false4.i87
  %cond6.i89 = phi i32 [ %and2.i92, %cond.true.i90 ], [ %rem.i88, %cond.false4.i87 ], [ %7, %cond.false.i85 ]
  %cmp26 = icmp eq i32 %cond6.i89, %__phash.0108
  br i1 %cmp26, label %for.inc45, label %if.else

if.else:                                          ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit93
  %8 = load ptr, ptr %this, align 4, !tbaa !201
  %arrayidx.i94 = getelementptr inbounds ptr, ptr %8, i32 %cond6.i89
  %9 = load ptr, ptr %arrayidx.i94, align 4, !tbaa !201
  %cmp30 = icmp eq ptr %9, null
  br i1 %cmp30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.else
  store ptr %__pp.0107, ptr %arrayidx.i94, align 4, !tbaa !201
  br label %for.inc45

if.else34:                                        ; preds = %if.else
  %10 = load ptr, ptr %__cp.0109, align 4, !tbaa !261
  store ptr %10, ptr %__pp.0107, align 4, !tbaa !261
  %11 = load ptr, ptr %this, align 4, !tbaa !201
  %arrayidx.i96 = getelementptr inbounds ptr, ptr %11, i32 %cond6.i89
  %12 = load ptr, ptr %arrayidx.i96, align 4, !tbaa !201
  %13 = load ptr, ptr %12, align 4, !tbaa !261
  store ptr %13, ptr %__cp.0109, align 4, !tbaa !261
  %14 = load ptr, ptr %this, align 4, !tbaa !201
  %arrayidx.i97 = getelementptr inbounds ptr, ptr %14, i32 %cond6.i89
  %15 = load ptr, ptr %arrayidx.i97, align 4, !tbaa !201
  store ptr %__cp.0109, ptr %15, align 4, !tbaa !261
  br label %for.inc45

for.inc45:                                        ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit93, %if.else34, %if.then31
  %__pp.1 = phi ptr [ %__cp.0109, %if.then31 ], [ %__pp.0107, %if.else34 ], [ %__cp.0109, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit93 ]
  %__phash.1 = phi i32 [ %cond6.i89, %if.then31 ], [ %__phash.0108, %if.else34 ], [ %__phash.0108, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit93 ]
  %__cp.0 = load ptr, ptr %__pp.1, align 4, !tbaa !261
  %cmp22.not = icmp eq ptr %__cp.0, null
  br i1 %cmp22.not, label %if.end49, label %for.body23, !llvm.loop !288

if.end49.critedge:                                ; preds = %entry
  %16 = load ptr, ptr %this, align 4, !tbaa !201
  store ptr null, ptr %this, align 4, !tbaa !201
  %tobool.not.i98 = icmp eq ptr %16, null
  br i1 %tobool.not.i98, label %_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS0_I13HexagonBufferNS_14default_deleteIS5_EEEEEES4_EEEENS_25__bucket_list_deallocatorINS_9allocatorISD_EEEEE5resetB8ne190000IPSD_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSN_.exit102, label %if.then.i99

if.then.i99:                                      ; preds = %if.end49.critedge
  %add.ptr.i.i100 = getelementptr inbounds i8, ptr %this, i32 4
  %17 = load i32, ptr %add.ptr.i.i100, align 4, !tbaa !184
  %mul.i.i.i.i101 = shl i32 %17, 2
  tail call void @_ZdlPvj(ptr noundef nonnull %16, i32 noundef %mul.i.i.i.i101) #29
  br label %_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS0_I13HexagonBufferNS_14default_deleteIS5_EEEEEES4_EEEENS_25__bucket_list_deallocatorINS_9allocatorISD_EEEEE5resetB8ne190000IPSD_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSN_.exit102

_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS0_I13HexagonBufferNS_14default_deleteIS5_EEEEEES4_EEEENS_25__bucket_list_deallocatorINS_9allocatorISD_EEEEE5resetB8ne190000IPSD_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSN_.exit102: ; preds = %if.end49.critedge, %if.then.i99
  %add.ptr.i.i103 = getelementptr inbounds i8, ptr %this, i32 4
  store i32 0, ptr %add.ptr.i.i103, align 4, !tbaa !184
  br label %if.end49

if.end49:                                         ; preds = %for.inc45, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit, %_ZNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS0_I13HexagonBufferNS_14default_deleteIS5_EEEEEES4_EEEENS_25__bucket_list_deallocatorINS_9allocatorISD_EEEEE5resetB8ne190000IPSD_TnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvSN_.exit102, %for.cond.cleanup
  ret void
}

; Function Attrs: mustprogress
define hidden noundef ptr @_ZN10HexagonAPI5AllocEjjyb(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %this, i32 noundef %nallocs, i32 noundef %nbytes, i64 noundef %alignment, i1 noundef zeroext %isVtcm) local_unnamed_addr #6 align 2 {
entry:
  %nallocs.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %isVtcm.addr = alloca i8, align 1
  %ref.tmp = alloca i32, align 4
  store i32 %nallocs, ptr %nallocs.addr, align 4, !tbaa !184
  store i32 %nbytes, ptr %nbytes.addr, align 4, !tbaa !184
  %storedv = zext i1 %isVtcm to i8
  store i8 %storedv, ptr %isVtcm.addr, align 1, !tbaa !267
  %0 = load ptr, ptr %this, align 4, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  %conv = trunc i64 %alignment to i32
  store i32 %conv, ptr %ref.tmp, align 4, !tbaa !184
  %call2 = call noundef ptr @_ZN13BufferManager21AllocateHexagonBufferIJRjS1_jRbEEEPvDpOT_(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(4) %nallocs.addr, ptr noundef nonnull align 4 dereferenceable(4) %nbytes.addr, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %isVtcm.addr)
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  ret ptr %call2
}

; Function Attrs: mustprogress
define linkonce_odr hidden noundef ptr @_ZN13BufferManager21AllocateHexagonBufferIJRjS1_jRbEEEPvDpOT_(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef nonnull align 4 dereferenceable(4) %args, ptr noundef nonnull align 4 dereferenceable(4) %args1, ptr noundef nonnull align 4 dereferenceable(4) %args3, ptr noundef nonnull align 1 dereferenceable(1) %args5) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %buf = alloca %"class.std::__1::unique_ptr.40", align 4
  %ref.tmp = alloca %"struct.std::__1::pair.11", align 4
  call void @llvm.lifetime.start.p0(ptr %buf)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %call.i = tail call noalias noundef nonnull dereferenceable(36) ptr @_Znwj(i32 noundef 36) #32, !noalias !289
  %0 = load i32, ptr %args, align 4, !tbaa !184, !noalias !289
  %1 = load i32, ptr %args1, align 4, !tbaa !184, !noalias !289
  %2 = load i32, ptr %args3, align 4, !tbaa !184, !noalias !289
  %3 = load i8, ptr %args5, align 1, !tbaa !267, !range !218, !noalias !289, !noundef !219
  %loadedv.i = trunc nuw i8 %3 to i1
  invoke void @_ZN13HexagonBufferC1Ejjjb(ptr noundef nonnull align 4 dereferenceable(36) %call.i, i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %loadedv.i)
          to label %_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjS2_jRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit unwind label %lpad.i, !noalias !289

common.resume:                                    ; preds = %ehcleanup, %lpad.i
  %common.resume.op = phi { ptr, i32 } [ %4, %lpad.i ], [ %.pn, %ehcleanup ]
  resume { ptr, i32 } %common.resume.op

lpad.i:                                           ; preds = %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvj(ptr noundef nonnull %call.i, i32 noundef 36) #29, !noalias !289
  br label %common.resume

_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjS2_jRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit: ; preds = %entry
  store ptr %call.i, ptr %buf, align 4, !tbaa !271, !alias.scope !289
  %call8 = invoke noundef ptr @_ZN13HexagonBuffer10GetPointerEv(ptr noundef nonnull align 4 dereferenceable(36) %call.i)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjS2_jRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  store ptr %call8, ptr %ref.tmp, align 4, !tbaa !273
  %second.i = getelementptr inbounds i8, ptr %ref.tmp, i32 4
  store ptr null, ptr %buf, align 4, !tbaa !201
  store ptr %call.i, ptr %second.i, align 4, !tbaa !271
  %call2.i.i16 = invoke i64 @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE25__emplace_unique_key_argsIS2_JNS_4pairIKS2_S7_EEEEENSL_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEEbEERKT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp, ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp)
          to label %_ZNSt3__113unordered_mapIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS3_EEEENS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorINS_4pairIKS1_S6_EEEEE6insertB8ne190000EOSE_.exit unwind label %lpad9

_ZNSt3__113unordered_mapIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS3_EEEENS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorINS_4pairIKS1_S6_EEEEE6insertB8ne190000EOSE_.exit: ; preds = %invoke.cont
  %5 = load ptr, ptr %second.i, align 4, !tbaa !201
  store ptr null, ptr %second.i, align 4, !tbaa !201
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev.exit, label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %_ZNSt3__113unordered_mapIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS3_EEEENS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorINS_4pairIKS1_S6_EEEEE6insertB8ne190000EOSE_.exit
  call void @_ZN13HexagonBufferD1Ev(ptr noundef nonnull align 4 dereferenceable(36) %5) #28
  call void @_ZdlPvj(ptr noundef nonnull %5, i32 noundef 36) #29
  br label %_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev.exit

_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev.exit: ; preds = %delete.notnull.i.i.i.i, %_ZNSt3__113unordered_mapIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS3_EEEENS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorINS_4pairIKS1_S6_EEEEE6insertB8ne190000EOSE_.exit
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  call void @llvm.lifetime.end.p0(ptr %buf)
  ret ptr %call8

lpad:                                             ; preds = %_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjS2_jRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__14pairIKPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEED2Ev(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp) #28
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad
  %.pn = phi { ptr, i32 } [ %7, %lpad9 ], [ %6, %lpad ]
  call void @_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(4) %buf) #28
  call void @llvm.lifetime.end.p0(ptr %buf)
  br label %common.resume
}

; Function Attrs: mustprogress
define hidden void @_ZN10HexagonAPI4FreeEPv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %this, ptr noundef %ptr) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %oss = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp = alloca %"class.std::__1::basic_string", align 4
  %0 = load ptr, ptr %this, align 4, !tbaa !201
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN13BufferManager17FreeHexagonBufferEPv(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef %ptr)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %oss)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss)
  %call1.i14 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull @.str.2.40, i32 noundef 31)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  %__sb_.i = getelementptr inbounds i8, ptr %oss, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.3.41, ptr noundef nonnull @.str.38, i32 noundef 84, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont6
  %bf.load.i.i = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont8
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %1 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %1, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont8, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  %2 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %2, ptr %oss, align 4, !tbaa !190
  %3 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %2, i32 -12
  %vbase.offset.i.i = load i32, ptr %vbase.offset.ptr.i.i, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %oss, i32 %vbase.offset.i.i
  store ptr %3, ptr %add.ptr.i.i, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i.i = getelementptr inbounds i8, ptr %oss, i32 36
  %bf.load.i.i.i.i.i = load i8, ptr %__str_.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, 1
  %tobool.i.not.i.i.i.i = icmp eq i8 %bf.clear.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %__data_.i.i.i.i.i = getelementptr inbounds i8, ptr %oss, i32 44
  %4 = load ptr, ptr %__data_.i.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i = load i32, ptr %__str_.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = and i32 %bf.load.i5.i.i.i.i, -2
  call void @_ZdlPvj(ptr noundef %4, i32 noundef %bf.lshr.i.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %if.then.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %5 = getelementptr inbounds i8, ptr %oss, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %5) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %if.end

lpad:                                             ; preds = %if.else
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup9

lpad5:                                            ; preds = %invoke.cont
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad7:                                            ; preds = %invoke.cont6
  %8 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i15 = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i16 = and i8 %bf.load.i.i15, 1
  %tobool.i.not.i17 = icmp eq i8 %bf.clear.i.i16, 0
  br i1 %tobool.i.not.i17, label %ehcleanup, label %if.then.i18

if.then.i18:                                      ; preds = %lpad7
  %__data_.i.i19 = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %9 = load ptr, ptr %__data_.i.i19, align 4, !tbaa !189
  %bf.load.i5.i20 = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i21 = and i32 %bf.load.i5.i20, -2
  call void @_ZdlPvj(ptr noundef %9, i32 noundef %bf.lshr.i.i21) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i18, %lpad7, %lpad5
  %.pn = phi { ptr, i32 } [ %7, %lpad5 ], [ %8, %lpad7 ], [ %8, %if.then.i18 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %ehcleanup9

ehcleanup9:                                       ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %6, %lpad ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  resume { ptr, i32 } %.pn.pn

if.end:                                           ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then
  ret void
}

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZN13BufferManager17FreeHexagonBufferEPv(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef %ptr) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %agg.tmp.ensured.i.i = alloca %"class.std::__1::unique_ptr.61", align 4
  %ptr.addr = alloca ptr, align 4
  %oss = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp10 = alloca %"class.std::__1::basic_string", align 4
  %oss20 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp24 = alloca %"class.std::__1::basic_string", align 4
  store ptr %ptr, ptr %ptr.addr, align 4, !tbaa !201
  %call.i = call i32 @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE4findIS2_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEERKT_(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef nonnull align 4 dereferenceable(4) %ptr.addr)
  %coerce.val.ip = inttoptr i32 %call.i to ptr
  %cmp.i.i.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.i.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %oss)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss)
  %call1.i49 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull @.str.9.42, i32 noundef 58)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  call void @llvm.lifetime.start.p0(ptr %ref.tmp10)
  %__sb_.i = getelementptr inbounds i8, ptr %oss, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp10, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %invoke.cont
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.10.43, ptr noundef nonnull @.str.11.44, i32 noundef 31, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp10)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont12
  %bf.load.i.i = load i8, ptr %ref.tmp10, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont14
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp10, i32 8
  %0 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp10, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %0, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont14, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %ref.tmp10)
  %1 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %1, ptr %oss, align 4, !tbaa !190
  %2 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %1, i32 -12
  %vbase.offset.i.i = load i32, ptr %vbase.offset.ptr.i.i, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %oss, i32 %vbase.offset.i.i
  store ptr %2, ptr %add.ptr.i.i, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i.i = getelementptr inbounds i8, ptr %oss, i32 36
  %bf.load.i.i.i.i.i = load i8, ptr %__str_.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, 1
  %tobool.i.not.i.i.i.i = icmp eq i8 %bf.clear.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %__data_.i.i.i.i.i = getelementptr inbounds i8, ptr %oss, i32 44
  %3 = load ptr, ptr %__data_.i.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i = load i32, ptr %__str_.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = and i32 %bf.load.i5.i.i.i.i, -2
  call void @_ZdlPvj(ptr noundef %3, i32 noundef %bf.lshr.i.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %if.then.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %4 = getelementptr inbounds i8, ptr %oss, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %4) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %if.end

lpad:                                             ; preds = %if.then
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup15

lpad11:                                           ; preds = %invoke.cont
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad13:                                           ; preds = %invoke.cont12
  %7 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i50 = load i8, ptr %ref.tmp10, align 4
  %bf.clear.i.i51 = and i8 %bf.load.i.i50, 1
  %tobool.i.not.i52 = icmp eq i8 %bf.clear.i.i51, 0
  br i1 %tobool.i.not.i52, label %ehcleanup, label %if.then.i53

if.then.i53:                                      ; preds = %lpad13
  %__data_.i.i54 = getelementptr inbounds i8, ptr %ref.tmp10, i32 8
  %8 = load ptr, ptr %__data_.i.i54, align 4, !tbaa !189
  %bf.load.i5.i55 = load i32, ptr %ref.tmp10, align 4
  %bf.lshr.i.i56 = and i32 %bf.load.i5.i55, -2
  call void @_ZdlPvj(ptr noundef %8, i32 noundef %bf.lshr.i.i56) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i53, %lpad13, %lpad11
  %.pn = phi { ptr, i32 } [ %6, %lpad11 ], [ %7, %lpad13 ], [ %7, %if.then.i53 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp10)
  br label %ehcleanup15

ehcleanup15:                                      ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %5, %lpad ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %ehcleanup41

if.end:                                           ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %entry
  %second = getelementptr inbounds i8, ptr %coerce.val.ip, i32 12
  %9 = load ptr, ptr %second, align 4, !tbaa !201
  %cmp.i.i.not = icmp eq ptr %9, null
  br i1 %cmp.i.i.not, label %if.then19, label %if.end33

if.then19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(ptr %oss20)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss20)
  %call1.i59 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss20, ptr noundef nonnull @.str.6.3, i32 noundef 0)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %if.then19
  call void @llvm.lifetime.start.p0(ptr %ref.tmp24)
  %__sb_.i61 = getelementptr inbounds i8, ptr %oss20, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp24, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i61)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %invoke.cont22
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.12.45, ptr noundef nonnull @.str.11.44, i32 noundef 32, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp24)
          to label %invoke.cont28 unwind label %lpad27

invoke.cont28:                                    ; preds = %invoke.cont26
  %bf.load.i.i63 = load i8, ptr %ref.tmp24, align 4
  %bf.clear.i.i64 = and i8 %bf.load.i.i63, 1
  %tobool.i.not.i65 = icmp eq i8 %bf.clear.i.i64, 0
  br i1 %tobool.i.not.i65, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit70, label %if.then.i66

if.then.i66:                                      ; preds = %invoke.cont28
  %__data_.i.i67 = getelementptr inbounds i8, ptr %ref.tmp24, i32 8
  %10 = load ptr, ptr %__data_.i.i67, align 4, !tbaa !189
  %bf.load.i5.i68 = load i32, ptr %ref.tmp24, align 4
  %bf.lshr.i.i69 = and i32 %bf.load.i5.i68, -2
  call void @_ZdlPvj(ptr noundef %10, i32 noundef %bf.lshr.i.i69) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit70

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit70: ; preds = %invoke.cont28, %if.then.i66
  call void @llvm.lifetime.end.p0(ptr %ref.tmp24)
  %11 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %11, ptr %oss20, align 4, !tbaa !190
  %12 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i71 = getelementptr i8, ptr %11, i32 -12
  %vbase.offset.i.i72 = load i32, ptr %vbase.offset.ptr.i.i71, align 4
  %add.ptr.i.i73 = getelementptr inbounds i8, ptr %oss20, i32 %vbase.offset.i.i72
  store ptr %12, ptr %add.ptr.i.i73, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i61, align 4, !tbaa !190
  %__str_.i.i.i75 = getelementptr inbounds i8, ptr %oss20, i32 36
  %bf.load.i.i.i.i.i76 = load i8, ptr %__str_.i.i.i75, align 4
  %bf.clear.i.i.i.i.i77 = and i8 %bf.load.i.i.i.i.i76, 1
  %tobool.i.not.i.i.i.i78 = icmp eq i8 %bf.clear.i.i.i.i.i77, 0
  br i1 %tobool.i.not.i.i.i.i78, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit83, label %if.then.i.i.i.i79

if.then.i.i.i.i79:                                ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit70
  %__data_.i.i.i.i.i80 = getelementptr inbounds i8, ptr %oss20, i32 44
  %13 = load ptr, ptr %__data_.i.i.i.i.i80, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i81 = load i32, ptr %__str_.i.i.i75, align 4
  %bf.lshr.i.i.i.i.i82 = and i32 %bf.load.i5.i.i.i.i81, -2
  call void @_ZdlPvj(ptr noundef %13, i32 noundef %bf.lshr.i.i.i.i.i82) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit83

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit83: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit70, %if.then.i.i.i.i79
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i61) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss20, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %14 = getelementptr inbounds i8, ptr %oss20, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %14) #28
  call void @llvm.lifetime.end.p0(ptr %oss20)
  br label %if.end33

lpad21:                                           ; preds = %if.then19
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup31

lpad25:                                           ; preds = %invoke.cont22
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup30

lpad27:                                           ; preds = %invoke.cont26
  %17 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i84 = load i8, ptr %ref.tmp24, align 4
  %bf.clear.i.i85 = and i8 %bf.load.i.i84, 1
  %tobool.i.not.i86 = icmp eq i8 %bf.clear.i.i85, 0
  br i1 %tobool.i.not.i86, label %ehcleanup30, label %if.then.i87

if.then.i87:                                      ; preds = %lpad27
  %__data_.i.i88 = getelementptr inbounds i8, ptr %ref.tmp24, i32 8
  %18 = load ptr, ptr %__data_.i.i88, align 4, !tbaa !189
  %bf.load.i5.i89 = load i32, ptr %ref.tmp24, align 4
  %bf.lshr.i.i90 = and i32 %bf.load.i5.i89, -2
  call void @_ZdlPvj(ptr noundef %18, i32 noundef %bf.lshr.i.i90) #29
  br label %ehcleanup30

ehcleanup30:                                      ; preds = %if.then.i87, %lpad27, %lpad25
  %.pn45 = phi { ptr, i32 } [ %16, %lpad25 ], [ %17, %lpad27 ], [ %17, %if.then.i87 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp24)
  br label %ehcleanup31

ehcleanup31:                                      ; preds = %ehcleanup30, %lpad21
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %ehcleanup30 ], [ %15, %lpad21 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss20) #28
  call void @llvm.lifetime.end.p0(ptr %oss20)
  br label %ehcleanup41

if.end33:                                         ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit83, %if.end
  call void @llvm.lifetime.start.p0(ptr %agg.tmp.ensured.i.i)
  call void @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE6removeENS_21__hash_const_iteratorIPNS_11__hash_nodeIS8_S2_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.61") align 4 %agg.tmp.ensured.i.i, ptr noundef nonnull align 4 dereferenceable(20) %this, i32 %call.i) #28
  %19 = load ptr, ptr %agg.tmp.ensured.i.i, align 4, !tbaa !201
  store ptr null, ptr %agg.tmp.ensured.i.i, align 4, !tbaa !201
  %tobool.not.i.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i.i, label %_ZNSt3__113unordered_mapIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS3_EEEENS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorINS_4pairIKS1_S6_EEEEE5eraseB8ne190000ENS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIS1_S6_EES1_EEEEEE.exit, label %if.then.i.i.i.i92

if.then.i.i.i.i92:                                ; preds = %if.end33
  %add.ptr.i.i.i.i.i = getelementptr inbounds i8, ptr %agg.tmp.ensured.i.i, i32 4
  call void @_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS6_EEEEEES4_EEEEEclB8ne190000EPSB_(ptr noundef nonnull align 4 dereferenceable(5) %add.ptr.i.i.i.i.i, ptr noundef nonnull %19) #28
  br label %_ZNSt3__113unordered_mapIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS3_EEEENS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorINS_4pairIKS1_S6_EEEEE5eraseB8ne190000ENS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIS1_S6_EES1_EEEEEE.exit

_ZNSt3__113unordered_mapIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS3_EEEENS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorINS_4pairIKS1_S6_EEEEE5eraseB8ne190000ENS_19__hash_map_iteratorINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIS1_S6_EES1_EEEEEE.exit: ; preds = %if.end33, %if.then.i.i.i.i92
  call void @llvm.lifetime.end.p0(ptr %agg.tmp.ensured.i.i)
  ret void

ehcleanup41:                                      ; preds = %ehcleanup31, %ehcleanup15
  %.pn45.pn.pn = phi { ptr, i32 } [ %.pn45.pn, %ehcleanup31 ], [ %.pn.pn, %ehcleanup15 ]
  resume { ptr, i32 } %.pn45.pn.pn
}

; Function Attrs: mustprogress
define linkonce_odr hidden i32 @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE4findIS2_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEERKT_(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef nonnull align 4 dereferenceable(4) %__k) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__u.i = alloca %"class.std::__1::basic_ostream.base", align 4
  %ref.tmp.i = alloca %"class.std::__1::ios_base::Init", align 1
  %0 = load ptr, ptr %__k, align 4, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr %__u.i)
  store ptr %0, ptr %__u.i, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr %ref.tmp.i)
  %call.i57 = invoke noundef i32 @_ZNKSt3__121__murmur2_or_cityhashIjLj32EEclB8ne190000EPKvj(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp.i, ptr noundef nonnull %__u.i, i32 noundef 4)
          to label %_ZNKSt3__14hashIPvEclB8ne190000ES1_.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #30
  unreachable

_ZNKSt3__14hashIPvEclB8ne190000ES1_.exit:         ; preds = %entry
  call void @llvm.lifetime.end.p0(ptr %ref.tmp.i)
  call void @llvm.lifetime.end.p0(ptr %__u.i)
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %this, i32 4
  %3 = load i32, ptr %add.ptr.i.i.i, align 4, !tbaa !184
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %cleanup26, label %if.then

if.then:                                          ; preds = %_ZNKSt3__14hashIPvEclB8ne190000ES1_.exit
  %4 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %3)
  %tobool.not.i = icmp ult i32 %4, 2
  br i1 %tobool.not.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then
  %sub.i = add i32 %3, -1
  %and2.i = and i32 %sub.i, %call.i57
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit

cond.false.i:                                     ; preds = %if.then
  %cmp.i = icmp ult i32 %call.i57, %3
  br i1 %cmp.i, label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit, label %cond.false4.i

cond.false4.i:                                    ; preds = %cond.false.i
  %rem.i = urem i32 %call.i57, %3
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit

_ZNSt3__116__constrain_hashB8ne190000Ejj.exit:    ; preds = %cond.true.i, %cond.false.i, %cond.false4.i
  %cond6.i = phi i32 [ %and2.i, %cond.true.i ], [ %rem.i, %cond.false4.i ], [ %call.i57, %cond.false.i ]
  %5 = load ptr, ptr %this, align 4, !tbaa !201
  %arrayidx.i = getelementptr inbounds ptr, ptr %5, i32 %cond6.i
  %6 = load ptr, ptr %arrayidx.i, align 4, !tbaa !201
  %cmp6.not = icmp eq ptr %6, null
  br i1 %cmp6.not, label %cleanup26, label %for.cond.preheader

for.cond.preheader:                               ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit
  %__nd.059 = load ptr, ptr %6, align 4, !tbaa !261
  %cmp8.not60 = icmp eq ptr %__nd.059, null
  br i1 %cmp8.not60, label %cleanup26, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %sub.i53 = add i32 %3, -1
  %7 = load ptr, ptr %__k, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %__nd.061 = phi ptr [ %__nd.059, %land.rhs.lr.ph ], [ %__nd.0, %for.inc ]
  %__hash_.i = getelementptr inbounds i8, ptr %__nd.061, i32 4
  %8 = load i32, ptr %__hash_.i, align 4, !tbaa !277
  %cmp10 = icmp eq i32 %8, %call.i57
  br i1 %cmp10, label %land.lhs.true, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  br i1 %tobool.not.i, label %cond.true.i52, label %cond.false.i47

cond.true.i52:                                    ; preds = %lor.rhs
  %and2.i54 = and i32 %8, %sub.i53
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit55

cond.false.i47:                                   ; preds = %lor.rhs
  %cmp.i48 = icmp ult i32 %8, %3
  br i1 %cmp.i48, label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit55, label %cond.false4.i49

cond.false4.i49:                                  ; preds = %cond.false.i47
  %rem.i50 = urem i32 %8, %3
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit55

_ZNSt3__116__constrain_hashB8ne190000Ejj.exit55:  ; preds = %cond.true.i52, %cond.false.i47, %cond.false4.i49
  %cond6.i51 = phi i32 [ %and2.i54, %cond.true.i52 ], [ %rem.i50, %cond.false4.i49 ], [ %8, %cond.false.i47 ]
  %cmp13 = icmp eq i32 %cond6.i51, %cond6.i
  br i1 %cmp13, label %for.inc, label %cleanup26

land.lhs.true:                                    ; preds = %land.rhs
  %9 = getelementptr inbounds i8, ptr %__nd.061, i32 8
  %10 = load ptr, ptr %9, align 4, !tbaa !201
  %cmp.i.i = icmp eq ptr %10, %7
  br i1 %cmp.i.i, label %cleanup, label %for.inc

for.inc:                                          ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit55, %land.lhs.true
  %__nd.0 = load ptr, ptr %__nd.061, align 4, !tbaa !261
  %cmp8.not = icmp eq ptr %__nd.0, null
  br i1 %cmp8.not, label %cleanup26, label %land.rhs, !llvm.loop !292

cleanup:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %__nd.061 to i32
  br label %cleanup26

cleanup26:                                        ; preds = %for.inc, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit55, %for.cond.preheader, %_ZNKSt3__14hashIPvEclB8ne190000ES1_.exit, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit, %cleanup
  %storemerge = phi i32 [ %11, %cleanup ], [ 0, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit ], [ 0, %_ZNKSt3__14hashIPvEclB8ne190000ES1_.exit ], [ 0, %for.cond.preheader ], [ 0, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit55 ], [ 0, %for.inc ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE6removeENS_21__hash_const_iteratorIPNS_11__hash_nodeIS8_S2_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::unique_ptr.61") align 4 %agg.result, ptr noundef nonnull align 4 dereferenceable(20) %this, i32 %__p.coerce) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %coerce.val.ip = inttoptr i32 %__p.coerce to ptr
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %this, i32 4
  %0 = load i32, ptr %add.ptr.i.i.i, align 4, !tbaa !184
  %__hash_.i = getelementptr inbounds i8, ptr %coerce.val.ip, i32 4
  %1 = load i32, ptr %__hash_.i, align 4, !tbaa !277
  %2 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %tobool.not.i = icmp ult i32 %2, 2
  br i1 %tobool.not.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  %sub.i = add i32 %0, -1
  %and2.i = and i32 %sub.i, %1
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit

cond.false.i:                                     ; preds = %entry
  %cmp.i = icmp ult i32 %1, %0
  br i1 %cmp.i, label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit, label %cond.false4.i

cond.false4.i:                                    ; preds = %cond.false.i
  %rem.i = urem i32 %1, %0
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit

_ZNSt3__116__constrain_hashB8ne190000Ejj.exit:    ; preds = %cond.true.i, %cond.false.i, %cond.false4.i
  %cond6.i = phi i32 [ %and2.i, %cond.true.i ], [ %rem.i, %cond.false4.i ], [ %1, %cond.false.i ]
  %3 = load ptr, ptr %this, align 4, !tbaa !201
  %arrayidx.i = getelementptr inbounds ptr, ptr %3, i32 %cond6.i
  %4 = load ptr, ptr %arrayidx.i, align 4, !tbaa !201
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit
  %__pn.0 = phi ptr [ %4, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit ], [ %5, %for.cond ]
  %5 = load ptr, ptr %__pn.0, align 4, !tbaa !261
  %cmp.not = icmp eq ptr %5, %coerce.val.ip
  br i1 %cmp.not, label %for.end, label %for.cond, !llvm.loop !293

for.end:                                          ; preds = %for.cond
  %__p1_ = getelementptr inbounds i8, ptr %this, i32 8
  %cmp8 = icmp eq ptr %__pn.0, %__p1_
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %__hash_.i64 = getelementptr inbounds i8, ptr %__pn.0, i32 4
  %6 = load i32, ptr %__hash_.i64, align 4, !tbaa !277
  br i1 %tobool.not.i, label %cond.true.i71, label %cond.false.i66

cond.true.i71:                                    ; preds = %lor.lhs.false
  %sub.i72 = add i32 %0, -1
  %and2.i73 = and i32 %6, %sub.i72
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit74

cond.false.i66:                                   ; preds = %lor.lhs.false
  %cmp.i67 = icmp ult i32 %6, %0
  br i1 %cmp.i67, label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit74, label %cond.false4.i68

cond.false4.i68:                                  ; preds = %cond.false.i66
  %rem.i69 = urem i32 %6, %0
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit74

_ZNSt3__116__constrain_hashB8ne190000Ejj.exit74:  ; preds = %cond.true.i71, %cond.false.i66, %cond.false4.i68
  %cond6.i70 = phi i32 [ %and2.i73, %cond.true.i71 ], [ %rem.i69, %cond.false4.i68 ], [ %6, %cond.false.i66 ]
  %cmp11.not = icmp eq i32 %cond6.i70, %cond6.i
  br i1 %cmp11.not, label %if.end22, label %if.then

if.then:                                          ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit74, %for.end
  %7 = load ptr, ptr %coerce.val.ip, align 4, !tbaa !261
  %cmp13 = icmp eq ptr %7, null
  br i1 %cmp13, label %if.then19, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.then
  %__hash_.i75 = getelementptr inbounds i8, ptr %7, i32 4
  %8 = load i32, ptr %__hash_.i75, align 4, !tbaa !277
  br i1 %tobool.not.i, label %cond.true.i82, label %cond.false.i77

cond.true.i82:                                    ; preds = %lor.lhs.false14
  %sub.i83 = add i32 %0, -1
  %and2.i84 = and i32 %8, %sub.i83
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit85

cond.false.i77:                                   ; preds = %lor.lhs.false14
  %cmp.i78 = icmp ult i32 %8, %0
  br i1 %cmp.i78, label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit85, label %cond.false4.i79

cond.false4.i79:                                  ; preds = %cond.false.i77
  %rem.i80 = urem i32 %8, %0
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit85

_ZNSt3__116__constrain_hashB8ne190000Ejj.exit85:  ; preds = %cond.true.i82, %cond.false.i77, %cond.false4.i79
  %cond6.i81 = phi i32 [ %and2.i84, %cond.true.i82 ], [ %rem.i80, %cond.false4.i79 ], [ %8, %cond.false.i77 ]
  %cmp18.not = icmp eq i32 %cond6.i81, %cond6.i
  br i1 %cmp18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit85, %if.then
  store ptr null, ptr %arrayidx.i, align 4, !tbaa !201
  br label %if.end22

if.end22:                                         ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit85, %if.then19, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit74
  %9 = load ptr, ptr %coerce.val.ip, align 4, !tbaa !261
  %cmp24.not = icmp eq ptr %9, null
  br i1 %cmp24.not, label %if.end34, label %if.then25

if.then25:                                        ; preds = %if.end22
  %__hash_.i87 = getelementptr inbounds i8, ptr %9, i32 4
  %10 = load i32, ptr %__hash_.i87, align 4, !tbaa !277
  br i1 %tobool.not.i, label %cond.true.i94, label %cond.false.i89

cond.true.i94:                                    ; preds = %if.then25
  %sub.i95 = add i32 %0, -1
  %and2.i96 = and i32 %10, %sub.i95
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit97

cond.false.i89:                                   ; preds = %if.then25
  %cmp.i90 = icmp ult i32 %10, %0
  br i1 %cmp.i90, label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit97, label %cond.false4.i91

cond.false4.i91:                                  ; preds = %cond.false.i89
  %rem.i92 = urem i32 %10, %0
  br label %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit97

_ZNSt3__116__constrain_hashB8ne190000Ejj.exit97:  ; preds = %cond.true.i94, %cond.false.i89, %cond.false4.i91
  %cond6.i93 = phi i32 [ %and2.i96, %cond.true.i94 ], [ %rem.i92, %cond.false4.i91 ], [ %10, %cond.false.i89 ]
  %cmp29.not = icmp eq i32 %cond6.i93, %cond6.i
  br i1 %cmp29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit97
  %11 = load ptr, ptr %this, align 4, !tbaa !201
  %arrayidx.i98 = getelementptr inbounds ptr, ptr %11, i32 %cond6.i93
  store ptr %__pn.0, ptr %arrayidx.i98, align 4, !tbaa !201
  %.pre = load ptr, ptr %coerce.val.ip, align 4, !tbaa !261
  br label %if.end34

if.end34:                                         ; preds = %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit97, %if.then30, %if.end22
  %12 = phi ptr [ %9, %_ZNSt3__116__constrain_hashB8ne190000Ejj.exit97 ], [ %.pre, %if.then30 ], [ null, %if.end22 ]
  store ptr %12, ptr %__pn.0, align 4, !tbaa !261
  store ptr null, ptr %coerce.val.ip, align 4, !tbaa !261
  %__p2_.i = getelementptr inbounds i8, ptr %this, i32 12
  %13 = load i32, ptr %__p2_.i, align 4, !tbaa !184
  %dec = add i32 %13, -1
  store i32 %dec, ptr %__p2_.i, align 4, !tbaa !184
  store ptr %coerce.val.ip, ptr %agg.result, align 4, !tbaa !294
  %14 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %15 = ptrtoint ptr %__p1_ to i32
  store i32 %15, ptr %14, align 4
  %.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  store i8 1, ptr %.sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress
define hidden void @_ZN10HexagonAPI4CopyEPvS0_j(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %this, ptr noundef %dst, ptr noundef %src, i32 noundef %nbytes) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %oss = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp = alloca %"class.std::__1::basic_string", align 4
  %0 = load ptr, ptr %this, align 4, !tbaa !201
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN13BufferManager4CopyEPvS0_j(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef %dst, ptr noundef %src, i32 noundef %nbytes)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %oss)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss)
  %call1.i14 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull @.str.2.40, i32 noundef 31)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  %__sb_.i = getelementptr inbounds i8, ptr %oss, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.3.41, ptr noundef nonnull @.str.38, i32 noundef 96, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont6
  %bf.load.i.i = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont8
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %1 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %1, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont8, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  %2 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %2, ptr %oss, align 4, !tbaa !190
  %3 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %2, i32 -12
  %vbase.offset.i.i = load i32, ptr %vbase.offset.ptr.i.i, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %oss, i32 %vbase.offset.i.i
  store ptr %3, ptr %add.ptr.i.i, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i.i = getelementptr inbounds i8, ptr %oss, i32 36
  %bf.load.i.i.i.i.i = load i8, ptr %__str_.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, 1
  %tobool.i.not.i.i.i.i = icmp eq i8 %bf.clear.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %__data_.i.i.i.i.i = getelementptr inbounds i8, ptr %oss, i32 44
  %4 = load ptr, ptr %__data_.i.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i = load i32, ptr %__str_.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = and i32 %bf.load.i5.i.i.i.i, -2
  call void @_ZdlPvj(ptr noundef %4, i32 noundef %bf.lshr.i.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %if.then.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %5 = getelementptr inbounds i8, ptr %oss, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %5) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %if.end

lpad:                                             ; preds = %if.else
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup9

lpad5:                                            ; preds = %invoke.cont
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad7:                                            ; preds = %invoke.cont6
  %8 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i15 = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i16 = and i8 %bf.load.i.i15, 1
  %tobool.i.not.i17 = icmp eq i8 %bf.clear.i.i16, 0
  br i1 %tobool.i.not.i17, label %ehcleanup, label %if.then.i18

if.then.i18:                                      ; preds = %lpad7
  %__data_.i.i19 = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %9 = load ptr, ptr %__data_.i.i19, align 4, !tbaa !189
  %bf.load.i5.i20 = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i21 = and i32 %bf.load.i5.i20, -2
  call void @_ZdlPvj(ptr noundef %9, i32 noundef %bf.lshr.i.i21) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i18, %lpad7, %lpad5
  %.pn = phi { ptr, i32 } [ %7, %lpad5 ], [ %8, %lpad7 ], [ %8, %if.then.i18 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %ehcleanup9

ehcleanup9:                                       ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %6, %lpad ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  resume { ptr, i32 } %.pn.pn

if.end:                                           ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then
  ret void
}

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZN13BufferManager4CopyEPvS0_j(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef %dst, ptr noundef %src, i32 noundef %nbytes) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ptr.addr.i39 = alloca ptr, align 4
  %ptr.addr.i = alloca ptr, align 4
  %oss = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp = alloca %"class.std::__1::basic_string", align 4
  call void @llvm.lifetime.start.p0(ptr %ptr.addr.i)
  store ptr %src, ptr %ptr.addr.i, align 4, !tbaa !201
  %call.i.i = call i32 @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE4findIS2_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEERKT_(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef nonnull align 4 dereferenceable(4) %ptr.addr.i)
  %cmp.i.i.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i.i.not.i, label %_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %coerce.val.ip.i = inttoptr i32 %call.i.i to ptr
  %second.i = getelementptr inbounds i8, ptr %coerce.val.ip.i, i32 12
  %0 = load ptr, ptr %second.i, align 4, !tbaa !201
  br label %_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit

_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit: ; preds = %entry, %if.then.i
  %retval.0.i = phi ptr [ %0, %if.then.i ], [ null, %entry ]
  call void @llvm.lifetime.end.p0(ptr %ptr.addr.i)
  call void @llvm.lifetime.start.p0(ptr %ptr.addr.i39)
  store ptr %dst, ptr %ptr.addr.i39, align 4, !tbaa !201
  %call.i.i40 = call i32 @_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE4findIS2_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEERKT_(ptr noundef nonnull align 4 dereferenceable(20) %this, ptr noundef nonnull align 4 dereferenceable(4) %ptr.addr.i39)
  %cmp.i.i.i.not.i41 = icmp eq i32 %call.i.i40, 0
  br i1 %cmp.i.i.i.not.i41, label %_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit46.thread, label %_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit46

_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit46.thread: ; preds = %_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit
  call void @llvm.lifetime.end.p0(ptr %ptr.addr.i39)
  %cmp.not58 = icmp eq ptr %retval.0.i, null
  br i1 %cmp.not58, label %if.else12, label %if.then8

_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit46: ; preds = %_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit
  %coerce.val.ip.i43 = inttoptr i32 %call.i.i40 to ptr
  %second.i44 = getelementptr inbounds i8, ptr %coerce.val.ip.i43, i32 12
  %1 = load ptr, ptr %second.i44, align 4, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr %ptr.addr.i39)
  %cmp.not = icmp eq ptr %retval.0.i, null
  %cmp4.not = icmp eq ptr %1, null
  %brmerge = or i1 %cmp.not, %cmp4.not
  br i1 %brmerge, label %if.else, label %if.then

if.then:                                          ; preds = %_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit46
  call void @_ZN13HexagonBuffer8CopyFromERKS_j(ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) %retval.0.i, i32 noundef %nbytes)
  br label %if.end21

if.else:                                          ; preds = %_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit46
  br i1 %cmp.not, label %if.else9, label %if.then8

if.then8:                                         ; preds = %_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit46.thread, %if.else
  call void @_ZNK13HexagonBuffer6CopyToEPvj(ptr noundef nonnull align 4 dereferenceable(36) %retval.0.i, ptr noundef %dst, i32 noundef %nbytes)
  br label %if.end21

if.else9:                                         ; preds = %if.else
  br i1 %cmp4.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.else9
  call void @_ZN13HexagonBuffer8CopyFromEPvj(ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef %src, i32 noundef %nbytes)
  br label %if.end21

if.else12:                                        ; preds = %_ZN13BufferManager10FindBufferI13HexagonBufferEEPT_PvRNSt3__113unordered_mapIS4_NS5_10unique_ptrIS2_NS5_14default_deleteIS2_EEEENS5_4hashIS4_EENS5_8equal_toIS4_EENS5_9allocatorINS5_4pairIKS4_SA_EEEEEE.exit46.thread, %if.else9
  call void @llvm.lifetime.start.p0(ptr %oss)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss)
  %call1.i47 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull @.str.17.46, i32 noundef 47)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else12
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  %__sb_.i = getelementptr inbounds i8, ptr %oss, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i)
          to label %invoke.cont15 unwind label %lpad14

invoke.cont15:                                    ; preds = %invoke.cont
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.3.41, ptr noundef nonnull @.str.11.44, i32 noundef 72, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %invoke.cont15
  %bf.load.i.i = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i48

if.then.i48:                                      ; preds = %invoke.cont17
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %2 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %2, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont17, %if.then.i48
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  %3 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %3, ptr %oss, align 4, !tbaa !190
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %3, i32 -12
  %vbase.offset.i.i = load i32, ptr %vbase.offset.ptr.i.i, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %oss, i32 %vbase.offset.i.i
  store ptr %4, ptr %add.ptr.i.i, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i.i = getelementptr inbounds i8, ptr %oss, i32 36
  %bf.load.i.i.i.i.i = load i8, ptr %__str_.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, 1
  %tobool.i.not.i.i.i.i = icmp eq i8 %bf.clear.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %__data_.i.i.i.i.i = getelementptr inbounds i8, ptr %oss, i32 44
  %5 = load ptr, ptr %__data_.i.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i = load i32, ptr %__str_.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = and i32 %bf.load.i5.i.i.i.i, -2
  call void @_ZdlPvj(ptr noundef %5, i32 noundef %bf.lshr.i.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %if.then.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %6 = getelementptr inbounds i8, ptr %oss, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %6) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %if.end21

lpad:                                             ; preds = %if.else12
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup18

lpad14:                                           ; preds = %invoke.cont
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad16:                                           ; preds = %invoke.cont15
  %9 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i49 = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i50 = and i8 %bf.load.i.i49, 1
  %tobool.i.not.i51 = icmp eq i8 %bf.clear.i.i50, 0
  br i1 %tobool.i.not.i51, label %ehcleanup, label %if.then.i52

if.then.i52:                                      ; preds = %lpad16
  %__data_.i.i53 = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %10 = load ptr, ptr %__data_.i.i53, align 4, !tbaa !189
  %bf.load.i5.i54 = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i55 = and i32 %bf.load.i5.i54, -2
  call void @_ZdlPvj(ptr noundef %10, i32 noundef %bf.lshr.i.i55) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i52, %lpad16, %lpad14
  %.pn = phi { ptr, i32 } [ %8, %lpad14 ], [ %9, %lpad16 ], [ %9, %if.then.i52 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %ehcleanup18

ehcleanup18:                                      ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %7, %lpad ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  resume { ptr, i32 } %.pn.pn

if.end21:                                         ; preds = %if.then8, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then11, %if.then
  ret void
}

define internal void @_GLOBAL__sub_I_HexagonCAPI.cpp() #3 {
entry:
  tail call void @_ZNSt3__18ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZL9_Ios_init.48)
  %0 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__18ios_base4InitD1Ev, ptr nonnull @_ZL9_Ios_init.48, ptr nonnull @__dso_handle) #28
  ret void
}

; Function Attrs: mustprogress
define hidden noundef ptr @hexagon_runtime_alloc_1d(i32 noundef %bytes, i64 noundef %alignment, i1 noundef zeroext %isVtcm) local_unnamed_addr #6 {
entry:
  %call = tail call noundef ptr @_ZN10HexagonAPI6GlobalEv()
  %call1 = tail call noundef ptr @_ZN10HexagonAPI5AllocEjyb(ptr noundef nonnull align 4 dereferenceable(12) %call, i32 noundef %bytes, i64 noundef %alignment, i1 noundef zeroext %isVtcm)
  ret ptr %call1
}

; Function Attrs: mustprogress
define hidden noundef ptr @hexagon_runtime_alloc_2d(i32 noundef %numBlocks, i32 noundef %blockSize, i64 noundef %alignment, i1 noundef zeroext %isVtcm) local_unnamed_addr #6 {
entry:
  %call = tail call noundef ptr @_ZN10HexagonAPI6GlobalEv()
  %call1 = tail call noundef ptr @_ZN10HexagonAPI5AllocEjjyb(ptr noundef nonnull align 4 dereferenceable(12) %call, i32 noundef %numBlocks, i32 noundef %blockSize, i64 noundef %alignment, i1 noundef zeroext %isVtcm)
  ret ptr %call1
}

; Function Attrs: mustprogress
define hidden void @hexagon_runtime_free_1d(ptr noundef %ptr) local_unnamed_addr #6 {
entry:
  %call = tail call noundef ptr @_ZN10HexagonAPI6GlobalEv()
  tail call void @_ZN10HexagonAPI4FreeEPv(ptr noundef nonnull align 4 dereferenceable(12) %call, ptr noundef %ptr)
  ret void
}

; Function Attrs: mustprogress
define hidden void @hexagon_runtime_free_2d(ptr noundef %ptr) local_unnamed_addr #6 {
entry:
  %call = tail call noundef ptr @_ZN10HexagonAPI6GlobalEv()
  tail call void @_ZN10HexagonAPI4FreeEPv(ptr noundef nonnull align 4 dereferenceable(12) %call, ptr noundef %ptr)
  ret void
}

; Function Attrs: mustprogress
define hidden void @hexagon_runtime_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbytes, i1 noundef zeroext %isDstVtcm, i1 noundef zeroext %isSrcVtcm) local_unnamed_addr #6 {
entry:
  %call = tail call noundef ptr @_ZN10HexagonAPI6GlobalEv()
  tail call void @_ZN10HexagonAPI4CopyEPvS0_j(ptr noundef nonnull align 4 dereferenceable(12) %call, ptr noundef %dst, ptr noundef %src, i32 noundef %nbytes)
  ret void
}

define internal void @_GLOBAL__sub_I_HexagonBuffer.cpp() #3 {
entry:
  tail call void @_ZNSt3__18ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZL9_Ios_init.56)
  %0 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__18ios_base4InitD1Ev, ptr nonnull @_ZL9_Ios_init.56, ptr nonnull @__dso_handle) #28
  ret void
}

; Function Attrs: mustprogress
define hidden void @_Z9AllocatorILN13HexagonBuffer12StorageScopeE0EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::__1::unique_ptr.40") align 4 captures(none) %agg.result, i32 noundef %nbytes, i32 noundef %alignment) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
entry:
  %call.i = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwj(i32 noundef 16) #32, !noalias !296
  invoke void @_ZN13DDRAllocationC2Ejj(ptr noundef nonnull align 4 dereferenceable(16) %call.i, i32 noundef %nbytes, i32 noundef %alignment)
          to label %_ZNSt3__111make_uniqueB8ne190000I13DDRAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit unwind label %lpad.i, !noalias !296

lpad.i:                                           ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvj(ptr noundef nonnull %call.i, i32 noundef 16) #29, !noalias !296
  resume { ptr, i32 } %0

_ZNSt3__111make_uniqueB8ne190000I13DDRAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit: ; preds = %entry
  store ptr %call.i, ptr %agg.result, align 4, !tbaa !299
  ret void
}

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZN13DDRAllocationC2Ejj(ptr noundef nonnull align 4 dereferenceable(16) %this, i32 noundef %nbytes, i32 noundef %alignment) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::__1::basic_string", align 4
  %data_.i = getelementptr inbounds i8, ptr %this, i32 4
  store ptr null, ptr %data_.i, align 4, !tbaa !301
  %allocatedBytes_.i = getelementptr inbounds i8, ptr %this, i32 8
  store i32 %nbytes, ptr %allocatedBytes_.i, align 4, !tbaa !303
  %alignment_.i = getelementptr inbounds i8, ptr %this, i32 12
  store i32 %alignment, ptr %alignment_.i, align 4, !tbaa !304
  store ptr getelementptr inbounds inrange(-8, 8) (i8, ptr @_ZTV13DDRAllocation, i32 8), ptr %this, align 4, !tbaa !190
  %call = tail call i32 @posix_memalign(ptr noundef nonnull %data_.i, i32 noundef %alignment, i32 noundef %nbytes) #28
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000ILi0EEEPKc(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp, ptr noundef nonnull @.str.9.57)
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.17.58, ptr noundef nonnull @.str.2.59, i32 noundef 36, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %if.then
  %bf.load.i.i = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont3
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %0 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %0, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont3, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %if.end

lpad2:                                            ; preds = %if.then
  %1 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i10 = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i11 = and i8 %bf.load.i.i10, 1
  %tobool.i.not.i12 = icmp eq i8 %bf.clear.i.i11, 0
  br i1 %tobool.i.not.i12, label %ehcleanup, label %if.then.i13

if.then.i13:                                      ; preds = %lpad2
  %__data_.i.i14 = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %2 = load ptr, ptr %__data_.i.i14, align 4, !tbaa !189
  %bf.load.i5.i15 = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i16 = and i32 %bf.load.i5.i15, -2
  call void @_ZdlPvj(ptr noundef %2, i32 noundef %bf.lshr.i.i16) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i13, %lpad2
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  resume { ptr, i32 } %1

if.end:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %entry
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZN13DDRAllocationD2Ev(ptr noundef nonnull align 4 dereferenceable(16) %this) unnamed_addr #17 comdat align 2 {
entry:
  store ptr getelementptr inbounds inrange(-8, 8) (i8, ptr @_ZTV13DDRAllocation, i32 8), ptr %this, align 4, !tbaa !190
  %data_ = getelementptr inbounds i8, ptr %this, i32 4
  %0 = load ptr, ptr %data_, align 4, !tbaa !301
  tail call void @free(ptr noundef %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZN13DDRAllocationD0Ev(ptr noundef nonnull align 4 dereferenceable(16) %this) unnamed_addr #17 comdat align 2 {
entry:
  store ptr getelementptr inbounds inrange(-8, 8) (i8, ptr @_ZTV13DDRAllocation, i32 8), ptr %this, align 4, !tbaa !190
  %data_.i = getelementptr inbounds i8, ptr %this, i32 4
  %0 = load ptr, ptr %data_.i, align 4, !tbaa !301
  tail call void @free(ptr noundef %0) #28
  tail call void @_ZdlPvj(ptr noundef nonnull %this, i32 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress
define hidden void @_Z9AllocatorILN13HexagonBuffer12StorageScopeE1EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::__1::unique_ptr.40") align 4 captures(none) %agg.result, i32 noundef %nbytes, i32 noundef %alignment) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
entry:
  %call.i = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwj(i32 noundef 16) #32, !noalias !305
  invoke void @_ZN14VTCMAllocationC2Ejj(ptr noundef nonnull align 4 dereferenceable(16) %call.i, i32 noundef %nbytes, i32 noundef %alignment)
          to label %_ZNSt3__111make_uniqueB8ne190000I14VTCMAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit unwind label %lpad.i, !noalias !305

lpad.i:                                           ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvj(ptr noundef nonnull %call.i, i32 noundef 16) #29, !noalias !305
  resume { ptr, i32 } %0

_ZNSt3__111make_uniqueB8ne190000I14VTCMAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_.exit: ; preds = %entry
  store ptr %call.i, ptr %agg.result, align 4, !tbaa !299
  ret void
}

; Function Attrs: mustprogress
define linkonce_odr hidden void @_ZN14VTCMAllocationC2Ejj(ptr noundef nonnull align 4 dereferenceable(16) %this, i32 noundef %nbytes, i32 noundef %alignment) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %oss = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp = alloca %"class.std::__1::basic_string", align 4
  %oss29 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp35 = alloca %"class.std::__1::basic_string", align 4
  %data_.i = getelementptr inbounds i8, ptr %this, i32 4
  store ptr null, ptr %data_.i, align 4, !tbaa !301
  %allocatedBytes_.i = getelementptr inbounds i8, ptr %this, i32 8
  store i32 %nbytes, ptr %allocatedBytes_.i, align 4, !tbaa !303
  %alignment_.i = getelementptr inbounds i8, ptr %this, i32 12
  store i32 %alignment, ptr %alignment_.i, align 4, !tbaa !304
  store ptr getelementptr inbounds inrange(-8, 8) (i8, ptr @_ZTV14VTCMAllocation, i32 8), ptr %this, align 4, !tbaa !190
  %cmp = icmp ult i32 %alignment, 129
  %cmp2 = icmp eq i32 %alignment, 2048
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %oss)
  invoke void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  %call1.i71 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull @.str.18.60, i32 noundef 59)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  %__sb_.i = getelementptr inbounds i8, ptr %oss, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.19.61, ptr noundef nonnull @.str.2.59, i32 noundef 48, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont6
  %bf.load.i.i = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont8
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %0 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %0, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont8, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  %1 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %1, ptr %oss, align 4, !tbaa !190
  %2 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %1, i32 -12
  %vbase.offset.i.i = load i32, ptr %vbase.offset.ptr.i.i, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %oss, i32 %vbase.offset.i.i
  store ptr %2, ptr %add.ptr.i.i, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i.i = getelementptr inbounds i8, ptr %oss, i32 36
  %bf.load.i.i.i.i.i = load i8, ptr %__str_.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, 1
  %tobool.i.not.i.i.i.i = icmp eq i8 %bf.clear.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %__data_.i.i.i.i.i = getelementptr inbounds i8, ptr %oss, i32 44
  %3 = load ptr, ptr %__data_.i.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i = load i32, ptr %__str_.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = and i32 %bf.load.i5.i.i.i.i, -2
  call void @_ZdlPvj(ptr noundef %3, i32 noundef %bf.lshr.i.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %if.then.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %4 = getelementptr inbounds i8, ptr %oss, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %4) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %if.end

lpad:                                             ; preds = %if.then
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup10

lpad3:                                            ; preds = %invoke.cont
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup9

lpad5:                                            ; preds = %invoke.cont4
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad7:                                            ; preds = %invoke.cont6
  %8 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i72 = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i73 = and i8 %bf.load.i.i72, 1
  %tobool.i.not.i74 = icmp eq i8 %bf.clear.i.i73, 0
  br i1 %tobool.i.not.i74, label %ehcleanup, label %if.then.i75

if.then.i75:                                      ; preds = %lpad7
  %__data_.i.i76 = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %9 = load ptr, ptr %__data_.i.i76, align 4, !tbaa !189
  %bf.load.i5.i77 = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i78 = and i32 %bf.load.i5.i77, -2
  call void @_ZdlPvj(ptr noundef %9, i32 noundef %bf.lshr.i.i78) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i75, %lpad7, %lpad5
  %.pn = phi { ptr, i32 } [ %7, %lpad5 ], [ %8, %lpad7 ], [ %8, %if.then.i75 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %ehcleanup9

ehcleanup9:                                       ; preds = %ehcleanup, %lpad3
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %6, %lpad3 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss) #28
  br label %ehcleanup10

ehcleanup10:                                      ; preds = %ehcleanup9, %lpad
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %ehcleanup9 ], [ %5, %lpad ]
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %ehcleanup52

if.end:                                           ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %entry
  br i1 %cmp2, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %add = add i32 %nbytes, 2047
  %and = and i32 %add, -2048
  br label %if.end18

if.else:                                          ; preds = %if.end
  br i1 %cmp, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.else
  %add15 = add i32 %nbytes, 127
  %and16 = and i32 %add15, -128
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14, %if.then12
  %nbytes.addr.0 = phi i32 [ %and, %if.then12 ], [ %and16, %if.then14 ], [ %nbytes, %if.else ]
  %10 = load i32, ptr %allocatedBytes_.i, align 4, !tbaa !303
  %cmp19.not = icmp eq i32 %10, %nbytes.addr.0
  br i1 %cmp19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  store i32 %nbytes.addr.0, ptr %allocatedBytes_.i, align 4, !tbaa !303
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18
  %call25 = call noundef ptr @_ZN10HexagonAPI6GlobalEv()
  %call27 = call noundef ptr @_ZN10HexagonAPI11getVtcmPoolEv(ptr noundef nonnull align 4 dereferenceable(12) %call25)
  %tobool.not = icmp eq ptr %call27, null
  br i1 %tobool.not, label %if.then28, label %if.end44

if.then28:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(ptr %oss29)
  invoke void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss29)
          to label %invoke.cont31 unwind label %lpad30

invoke.cont31:                                    ; preds = %if.then28
  %call1.i81 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss29, ptr noundef nonnull @.str.20.62, i32 noundef 21)
          to label %invoke.cont33 unwind label %lpad32

invoke.cont33:                                    ; preds = %invoke.cont31
  call void @llvm.lifetime.start.p0(ptr %ref.tmp35)
  %__sb_.i83 = getelementptr inbounds i8, ptr %oss29, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp35, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i83)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %invoke.cont33
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.21.63, ptr noundef nonnull @.str.2.59, i32 noundef 62, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp35)
          to label %invoke.cont39 unwind label %lpad38

invoke.cont39:                                    ; preds = %invoke.cont37
  %bf.load.i.i85 = load i8, ptr %ref.tmp35, align 4
  %bf.clear.i.i86 = and i8 %bf.load.i.i85, 1
  %tobool.i.not.i87 = icmp eq i8 %bf.clear.i.i86, 0
  br i1 %tobool.i.not.i87, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit92, label %if.then.i88

if.then.i88:                                      ; preds = %invoke.cont39
  %__data_.i.i89 = getelementptr inbounds i8, ptr %ref.tmp35, i32 8
  %11 = load ptr, ptr %__data_.i.i89, align 4, !tbaa !189
  %bf.load.i5.i90 = load i32, ptr %ref.tmp35, align 4
  %bf.lshr.i.i91 = and i32 %bf.load.i5.i90, -2
  call void @_ZdlPvj(ptr noundef %11, i32 noundef %bf.lshr.i.i91) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit92

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit92: ; preds = %invoke.cont39, %if.then.i88
  call void @llvm.lifetime.end.p0(ptr %ref.tmp35)
  %12 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %12, ptr %oss29, align 4, !tbaa !190
  %13 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i93 = getelementptr i8, ptr %12, i32 -12
  %vbase.offset.i.i94 = load i32, ptr %vbase.offset.ptr.i.i93, align 4
  %add.ptr.i.i95 = getelementptr inbounds i8, ptr %oss29, i32 %vbase.offset.i.i94
  store ptr %13, ptr %add.ptr.i.i95, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i83, align 4, !tbaa !190
  %__str_.i.i.i97 = getelementptr inbounds i8, ptr %oss29, i32 36
  %bf.load.i.i.i.i.i98 = load i8, ptr %__str_.i.i.i97, align 4
  %bf.clear.i.i.i.i.i99 = and i8 %bf.load.i.i.i.i.i98, 1
  %tobool.i.not.i.i.i.i100 = icmp eq i8 %bf.clear.i.i.i.i.i99, 0
  br i1 %tobool.i.not.i.i.i.i100, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit105, label %if.then.i.i.i.i101

if.then.i.i.i.i101:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit92
  %__data_.i.i.i.i.i102 = getelementptr inbounds i8, ptr %oss29, i32 44
  %14 = load ptr, ptr %__data_.i.i.i.i.i102, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i103 = load i32, ptr %__str_.i.i.i97, align 4
  %bf.lshr.i.i.i.i.i104 = and i32 %bf.load.i5.i.i.i.i103, -2
  call void @_ZdlPvj(ptr noundef %14, i32 noundef %bf.lshr.i.i.i.i.i104) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit105

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit105: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit92, %if.then.i.i.i.i101
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i83) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss29, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %15 = getelementptr inbounds i8, ptr %oss29, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %15) #28
  call void @llvm.lifetime.end.p0(ptr %oss29)
  br label %if.end44

lpad30:                                           ; preds = %if.then28
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup43

lpad32:                                           ; preds = %invoke.cont31
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup42

lpad36:                                           ; preds = %invoke.cont33
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup41

lpad38:                                           ; preds = %invoke.cont37
  %19 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i106 = load i8, ptr %ref.tmp35, align 4
  %bf.clear.i.i107 = and i8 %bf.load.i.i106, 1
  %tobool.i.not.i108 = icmp eq i8 %bf.clear.i.i107, 0
  br i1 %tobool.i.not.i108, label %ehcleanup41, label %if.then.i109

if.then.i109:                                     ; preds = %lpad38
  %__data_.i.i110 = getelementptr inbounds i8, ptr %ref.tmp35, i32 8
  %20 = load ptr, ptr %__data_.i.i110, align 4, !tbaa !189
  %bf.load.i5.i111 = load i32, ptr %ref.tmp35, align 4
  %bf.lshr.i.i112 = and i32 %bf.load.i5.i111, -2
  call void @_ZdlPvj(ptr noundef %20, i32 noundef %bf.lshr.i.i112) #29
  br label %ehcleanup41

ehcleanup41:                                      ; preds = %if.then.i109, %lpad38, %lpad36
  %.pn65 = phi { ptr, i32 } [ %18, %lpad36 ], [ %19, %lpad38 ], [ %19, %if.then.i109 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp35)
  br label %ehcleanup42

ehcleanup42:                                      ; preds = %ehcleanup41, %lpad32
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %ehcleanup41 ], [ %17, %lpad32 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss29) #28
  br label %ehcleanup43

ehcleanup43:                                      ; preds = %ehcleanup42, %lpad30
  %.pn65.pn.pn = phi { ptr, i32 } [ %.pn65.pn, %ehcleanup42 ], [ %16, %lpad30 ]
  call void @llvm.lifetime.end.p0(ptr %oss29)
  br label %ehcleanup52

if.end44:                                         ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit105, %if.end22
  %call46 = call noundef ptr @_ZN10HexagonAPI6GlobalEv()
  %call48 = call noundef ptr @_ZN10HexagonAPI11getVtcmPoolEv(ptr noundef nonnull align 4 dereferenceable(12) %call46)
  %21 = load i32, ptr %allocatedBytes_.i, align 4, !tbaa !303
  %call51 = call noundef ptr @_ZN8VtcmPool8AllocateEj(ptr noundef nonnull align 4 dereferenceable(40) %call48, i32 noundef %21)
  store ptr %call51, ptr %data_.i, align 4, !tbaa !301
  ret void

ehcleanup52:                                      ; preds = %ehcleanup43, %ehcleanup10
  %.pn69 = phi { ptr, i32 } [ %.pn65.pn.pn, %ehcleanup43 ], [ %.pn.pn.pn, %ehcleanup10 ]
  resume { ptr, i32 } %.pn69
}

; Function Attrs: mustprogress
define linkonce_odr hidden noundef ptr @_ZN10HexagonAPI11getVtcmPoolEv(ptr noundef nonnull align 4 dereferenceable(12) %this) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %oss = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp = alloca %"class.std::__1::basic_string", align 4
  %runtimeVtcm = getelementptr inbounds i8, ptr %this, i32 4
  %0 = load ptr, ptr %runtimeVtcm, align 4, !tbaa !201
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %oss)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss)
  %call1.i14 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull @.str.22.64, i32 noundef 34)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  %__sb_.i = getelementptr inbounds i8, ptr %oss, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.23.65, ptr noundef nonnull @.str.24.66, i32 noundef 66, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  %bf.load.i.i = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont6
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %1 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %1, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont6, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  %2 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %2, ptr %oss, align 4, !tbaa !190
  %3 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %2, i32 -12
  %vbase.offset.i.i = load i32, ptr %vbase.offset.ptr.i.i, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %oss, i32 %vbase.offset.i.i
  store ptr %3, ptr %add.ptr.i.i, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i.i = getelementptr inbounds i8, ptr %oss, i32 36
  %bf.load.i.i.i.i.i = load i8, ptr %__str_.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, 1
  %tobool.i.not.i.i.i.i = icmp eq i8 %bf.clear.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %__data_.i.i.i.i.i = getelementptr inbounds i8, ptr %oss, i32 44
  %4 = load ptr, ptr %__data_.i.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i = load i32, ptr %__str_.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = and i32 %bf.load.i5.i.i.i.i, -2
  call void @_ZdlPvj(ptr noundef %4, i32 noundef %bf.lshr.i.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %if.then.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %5 = getelementptr inbounds i8, ptr %oss, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %5) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  %.pre = load ptr, ptr %runtimeVtcm, align 4, !tbaa !201
  br label %if.end

lpad:                                             ; preds = %if.then
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup7

lpad3:                                            ; preds = %invoke.cont
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont4
  %8 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i15 = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i16 = and i8 %bf.load.i.i15, 1
  %tobool.i.not.i17 = icmp eq i8 %bf.clear.i.i16, 0
  br i1 %tobool.i.not.i17, label %ehcleanup, label %if.then.i18

if.then.i18:                                      ; preds = %lpad5
  %__data_.i.i19 = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %9 = load ptr, ptr %__data_.i.i19, align 4, !tbaa !189
  %bf.load.i5.i20 = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i21 = and i32 %bf.load.i5.i20, -2
  call void @_ZdlPvj(ptr noundef %9, i32 noundef %bf.lshr.i.i21) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i18, %lpad5, %lpad3
  %.pn = phi { ptr, i32 } [ %7, %lpad3 ], [ %8, %lpad5 ], [ %8, %if.then.i18 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %ehcleanup7

ehcleanup7:                                       ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %6, %lpad ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  resume { ptr, i32 } %.pn.pn

if.end:                                           ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %entry
  %10 = phi ptr [ %.pre, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ %0, %entry ]
  ret ptr %10
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZN14VTCMAllocationD2Ev(ptr noundef nonnull align 4 dereferenceable(16) %this) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  store ptr getelementptr inbounds inrange(-8, 8) (i8, ptr @_ZTV14VTCMAllocation, i32 8), ptr %this, align 4, !tbaa !190
  %call = invoke noundef ptr @_ZN10HexagonAPI6GlobalEv()
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call3 = invoke noundef ptr @_ZN10HexagonAPI11getVtcmPoolEv(ptr noundef nonnull align 4 dereferenceable(12) %call)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %data_ = getelementptr inbounds i8, ptr %this, i32 4
  %0 = load ptr, ptr %data_, align 4, !tbaa !301
  %allocatedBytes_ = getelementptr inbounds i8, ptr %this, i32 8
  %1 = load i32, ptr %allocatedBytes_, align 4, !tbaa !303
  invoke void @_ZN8VtcmPool4FreeEPvj(ptr noundef nonnull align 4 dereferenceable(40) %call3, ptr noundef %0, i32 noundef %1)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  store ptr null, ptr %data_, align 4, !tbaa !301
  ret void

terminate.lpad:                                   ; preds = %invoke.cont2, %invoke.cont, %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  tail call void @__clang_call_terminate(ptr %3) #30
  unreachable
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZN14VTCMAllocationD0Ev(ptr noundef nonnull align 4 dereferenceable(16) %this) unnamed_addr #17 comdat align 2 {
entry:
  tail call void @_ZN14VTCMAllocationD2Ev(ptr noundef nonnull align 4 dereferenceable(16) %this) #28
  tail call void @_ZdlPvj(ptr noundef nonnull %this, i32 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress
define hidden void @_ZN13HexagonBufferC2Ejjb(ptr noundef nonnull align 4 dereferenceable(36) %this, i32 noundef %nbytes, i32 noundef %alignment, i1 noundef zeroext %isVtcm) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp.i = alloca %"class.std::__1::basic_ostream.base", align 4
  %alloca = alloca %"class.std::__1::unique_ptr.40", align 4
  %__end_.i = getelementptr inbounds i8, ptr %this, i32 4
  %__end_cap_.i = getelementptr inbounds i8, ptr %this, i32 8
  %managedAllocations_ = getelementptr inbounds i8, ptr %this, i32 12
  %ndim_ = getelementptr inbounds i8, ptr %this, i32 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %this, i8 0, i64 24, i1 false)
  store i32 1, ptr %ndim_, align 4, !tbaa !308
  %nbytesPerAllocation_ = getelementptr inbounds i8, ptr %this, i32 28
  store i32 %nbytes, ptr %nbytesPerAllocation_, align 4, !tbaa !317
  %storageScope_.i = getelementptr inbounds i8, ptr %this, i32 32
  %selv.i = zext i1 %isVtcm to i32
  store i32 %selv.i, ptr %storageScope_.i, align 4, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr %alloca)
  br i1 %isVtcm, label %if.then10, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i52 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwj(i32 noundef 16) #32
          to label %call.i.i.noexc unwind label %lpad4

call.i.i.noexc:                                   ; preds = %if.then
  invoke void @_ZN13DDRAllocationC2Ejj(ptr noundef nonnull align 4 dereferenceable(16) %call.i.i52, i32 noundef %nbytes, i32 noundef %alignment)
          to label %if.end30 unwind label %lpad.i.i, !noalias !319

lpad.i.i:                                         ; preds = %call.i.i.noexc
  %0 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup36.thread102

lpad4:                                            ; preds = %if.then
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit94

if.then10:                                        ; preds = %entry
  %call.i.i60 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwj(i32 noundef 16) #32
          to label %call.i.i.noexc59 unwind label %lpad12

call.i.i.noexc59:                                 ; preds = %if.then10
  invoke void @_ZN14VTCMAllocationC2Ejj(ptr noundef nonnull align 4 dereferenceable(16) %call.i.i60, i32 noundef %nbytes, i32 noundef %alignment)
          to label %if.end30 unwind label %lpad.i.i58, !noalias !324

lpad.i.i58:                                       ; preds = %call.i.i.noexc59
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup36.thread102

lpad12:                                           ; preds = %if.then10
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit94

if.end30:                                         ; preds = %call.i.i.noexc59, %call.i.i.noexc
  %4 = phi ptr [ %call.i.i52, %call.i.i.noexc ], [ %call.i.i60, %call.i.i.noexc59 ]
  store ptr %4, ptr %alloca, align 4, !tbaa !201
  %data_ = getelementptr inbounds i8, ptr %4, i32 4
  %5 = load ptr, ptr %__end_.i, align 4, !tbaa !329
  %6 = load ptr, ptr %__end_cap_.i, align 4, !tbaa !201
  %cmp.i = icmp ult ptr %5, %6
  br i1 %cmp.i, label %if.then.i82, label %if.else.i

if.then.i82:                                      ; preds = %if.end30
  %7 = load ptr, ptr %data_, align 4, !tbaa !201
  store ptr %7, ptr %5, align 4, !tbaa !201
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %5, i32 4
  br label %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit

if.else.i:                                        ; preds = %if.end30
  %8 = load ptr, ptr %this, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 2
  %add.i.i = add nsw i32 %sub.ptr.div.i.i.i, 1
  %cmp.i.i.i = icmp ugt i32 %add.i.i, 1073741823
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  invoke void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) #31
          to label %.noexc unwind label %ehcleanup36

.noexc:                                           ; preds = %if.then.i.i.i
  unreachable

_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i: ; preds = %if.else.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %cmp3.not.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, 2147483644
  %mul.i.i.i = lshr exact i32 %sub.ptr.sub.i.i.i.i, 1
  %9 = tail call i32 @llvm.umax.i32(i32 %mul.i.i.i, i32 %add.i.i)
  %retval.0.i.i.i = select i1 %cmp3.not.i.i.i, i32 %9, i32 1073741823
  %cmp.i17.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %cmp.i17.i.i, label %_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i
  %cmp.i.i.i.i.i = icmp ugt i32 %retval.0.i.i.i, 1073741823
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.else.i.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne190000v() #31
          to label %.noexc83 unwind label %ehcleanup36

.noexc83:                                         ; preds = %if.then.i.i.i.i.i
  unreachable

_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i: ; preds = %if.else.i.i.i
  %mul.i.i.i.i.i = shl nuw i32 %retval.0.i.i.i, 2
  %call.i5.i.i.i.i.i.i84 = invoke noalias noundef nonnull ptr @_Znwj(i32 noundef %mul.i.i.i.i.i) #32
          to label %_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i unwind label %ehcleanup36

_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i, %_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i
  %storemerge.i.i.i = phi ptr [ null, %_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i ], [ %call.i5.i.i.i.i.i.i84, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds ptr, ptr %storemerge.i.i.i, i32 %sub.ptr.div.i.i.i
  %add.ptr6.i.i.i = getelementptr inbounds ptr, ptr %storemerge.i.i.i, i32 %retval.0.i.i.i
  %10 = load ptr, ptr %data_, align 4, !tbaa !201
  store ptr %10, ptr %add.ptr.i.i.i, align 4, !tbaa !201
  %incdec.ptr.i8.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %storemerge.i.i.i, ptr align 4 %8, i32 %sub.ptr.sub.i.i.i, i1 false)
  store ptr %storemerge.i.i.i, ptr %this, align 4, !tbaa !201
  store ptr %incdec.ptr.i8.i, ptr %__end_.i, align 4, !tbaa !201
  store ptr %add.ptr6.i.i.i, ptr %__end_cap_.i, align 4, !tbaa !201
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit, label %if.then.i26.i.i

if.then.i26.i.i:                                  ; preds = %_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i
  tail call void @_ZdlPvj(ptr noundef nonnull %8, i32 noundef %sub.ptr.sub.i.i.i.i) #29
  br label %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit

_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit: ; preds = %if.then.i82, %_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i, %if.then.i26.i.i
  %__end.0.i = phi ptr [ %incdec.ptr.i.i, %if.then.i82 ], [ %incdec.ptr.i8.i, %_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i ], [ %incdec.ptr.i8.i, %if.then.i26.i.i ]
  store ptr %__end.0.i, ptr %__end_.i, align 4, !tbaa !329
  invoke void @_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE9push_backB8ne190000EOS5_(ptr noundef nonnull align 4 dereferenceable(12) %managedAllocations_, ptr noundef nonnull align 4 dereferenceable(4) %alloca)
          to label %invoke.cont35 unwind label %ehcleanup36

invoke.cont35:                                    ; preds = %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit
  %11 = load ptr, ptr %alloca, align 4, !tbaa !201
  store ptr null, ptr %alloca, align 4, !tbaa !201
  %tobool.not.i.i85 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i85, label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit89, label %delete.notnull.i.i.i86

delete.notnull.i.i.i86:                           ; preds = %invoke.cont35
  %vtable.i.i.i87 = load ptr, ptr %11, align 4, !tbaa !190
  %vfn.i.i.i88 = getelementptr inbounds i8, ptr %vtable.i.i.i87, i32 4
  %12 = load ptr, ptr %vfn.i.i.i88, align 4
  call void %12(ptr noundef nonnull align 4 dereferenceable(16) %11) #28
  br label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit89

_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit89: ; preds = %invoke.cont35, %delete.notnull.i.i.i86
  call void @llvm.lifetime.end.p0(ptr %alloca)
  ret void

ehcleanup36.thread102:                            ; preds = %lpad.i.i58, %lpad.i.i
  %call.i.i60.sink = phi ptr [ %call.i.i60, %lpad.i.i58 ], [ %call.i.i52, %lpad.i.i ]
  %.pn47.ph.ph = phi { ptr, i32 } [ %2, %lpad.i.i58 ], [ %0, %lpad.i.i ]
  tail call void @_ZdlPvj(ptr noundef nonnull %call.i.i60.sink, i32 noundef 16) #29, !noalias !219
  br label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit94

ehcleanup36:                                      ; preds = %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit, %if.then.i.i.i, %if.then.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  %.pr96.pre = load ptr, ptr %alloca, align 4, !tbaa !201
  store ptr null, ptr %alloca, align 4, !tbaa !201
  %tobool.not.i.i90 = icmp eq ptr %.pr96.pre, null
  br i1 %tobool.not.i.i90, label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit94, label %delete.notnull.i.i.i91

delete.notnull.i.i.i91:                           ; preds = %ehcleanup36
  %vtable.i.i.i92 = load ptr, ptr %.pr96.pre, align 4, !tbaa !190
  %vfn.i.i.i93 = getelementptr inbounds i8, ptr %vtable.i.i.i92, i32 4
  %14 = load ptr, ptr %vfn.i.i.i93, align 4
  call void %14(ptr noundef nonnull align 4 dereferenceable(16) %.pr96.pre) #28
  br label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit94

_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit94: ; preds = %lpad4, %lpad12, %ehcleanup36.thread102, %ehcleanup36, %delete.notnull.i.i.i91
  %.pn47100 = phi { ptr, i32 } [ %13, %ehcleanup36 ], [ %13, %delete.notnull.i.i.i91 ], [ %.pn47.ph.ph, %ehcleanup36.thread102 ], [ %3, %lpad12 ], [ %1, %lpad4 ]
  call void @llvm.lifetime.end.p0(ptr %alloca)
  call void @llvm.lifetime.start.p0(ptr %ref.tmp.i)
  store ptr %managedAllocations_, ptr %ref.tmp.i, align 4, !tbaa !201
  call void @_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE16__destroy_vectorclB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp.i)
  call void @llvm.lifetime.end.p0(ptr %ref.tmp.i)
  call void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) #28
  resume { ptr, i32 } %.pn47100
}

; Function Attrs: mustprogress noreturn
define linkonce_odr hidden void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) local_unnamed_addr #13 comdat align 2 {
entry:
  tail call void @_ZNSt3__120__throw_length_errorB8ne190000EPKc(ptr noundef nonnull @.str.25.67) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress
define linkonce_odr hidden void @_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE9push_backB8ne190000EOS5_(ptr noundef nonnull align 4 dereferenceable(12) %this, ptr noundef nonnull align 4 dereferenceable(4) %__x) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__end_ = getelementptr inbounds i8, ptr %this, i32 4
  %0 = load ptr, ptr %__end_, align 4, !tbaa !330
  %__end_cap_.i = getelementptr inbounds i8, ptr %this, i32 8
  %1 = load ptr, ptr %__end_cap_.i, align 4, !tbaa !201
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__x, align 4, !tbaa !201
  store ptr null, ptr %__x, align 4, !tbaa !201
  store ptr %2, ptr %0, align 4, !tbaa !299
  %incdec.ptr.i = getelementptr inbounds i8, ptr %0, i32 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %this, align 4, !tbaa !331
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %0 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 2
  %add.i = add nsw i32 %sub.ptr.div.i.i, 1
  %cmp.i.i = icmp ugt i32 %add.i, 1073741823
  br i1 %cmp.i.i, label %if.then.i.i, label %_ZNKSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE11__recommendB8ne190000Ej.exit.i

if.then.i.i:                                      ; preds = %if.else
  tail call void @_ZNKSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) #31
  unreachable

_ZNKSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE11__recommendB8ne190000Ej.exit.i: ; preds = %if.else
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i
  %cmp3.not.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 2147483644
  %mul.i.i = lshr exact i32 %sub.ptr.sub.i.i.i, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %mul.i.i, i32 %add.i)
  %retval.0.i.i = select i1 %cmp3.not.i.i, i32 %4, i32 1073741823
  %cmp.i17.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp.i17.i, label %_ZNSt3__114__split_bufferINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE17__destruct_at_endB8ne190000EPS5_.exit.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %_ZNKSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE11__recommendB8ne190000Ej.exit.i
  %cmp.i.i.i.i = icmp ugt i32 %retval.0.i.i, 1073741823
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_j.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.else.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne190000v() #31
  unreachable

_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_j.exit.i.i: ; preds = %if.else.i.i
  %mul.i.i.i.i = shl nuw i32 %retval.0.i.i, 2
  %call.i5.i.i.i.i.i = tail call noalias noundef nonnull ptr @_Znwj(i32 noundef %mul.i.i.i.i) #32
  br label %_ZNSt3__114__split_bufferINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE17__destruct_at_endB8ne190000EPS5_.exit.i.i

_ZNSt3__114__split_bufferINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE17__destruct_at_endB8ne190000EPS5_.exit.i.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_j.exit.i.i, %_ZNKSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE11__recommendB8ne190000Ej.exit.i
  %storemerge.i.i = phi ptr [ %call.i5.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_j.exit.i.i ], [ null, %_ZNKSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE11__recommendB8ne190000Ej.exit.i ]
  %add.ptr.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.40", ptr %storemerge.i.i, i32 %sub.ptr.div.i.i
  %add.ptr6.i.i = getelementptr inbounds %"class.std::__1::unique_ptr.40", ptr %storemerge.i.i, i32 %retval.0.i.i
  %5 = load ptr, ptr %__x, align 4, !tbaa !201
  store ptr null, ptr %__x, align 4, !tbaa !201
  store ptr %5, ptr %add.ptr.i.i, align 4, !tbaa !299
  %incdec.ptr.i8 = getelementptr inbounds i8, ptr %add.ptr.i.i, i32 4
  %6 = load ptr, ptr %__end_, align 4, !tbaa !330
  %7 = load ptr, ptr %this, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i21.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i22.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i23.i = sub i32 %sub.ptr.lhs.cast.i21.i, %sub.ptr.rhs.cast.i22.i
  %sub.ptr.div.i24.i = ashr exact i32 %sub.ptr.sub.i23.i, 2
  %idx.neg.i.i = sub nsw i32 0, %sub.ptr.div.i24.i
  %add.ptr.i25.i = getelementptr inbounds %"class.std::__1::unique_ptr.40", ptr %add.ptr.i.i, i32 %idx.neg.i.i
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %add.ptr.i25.i, ptr align 4 %7, i32 %sub.ptr.sub.i23.i, i1 false)
  store ptr %add.ptr.i25.i, ptr %this, align 4, !tbaa !201
  store ptr %incdec.ptr.i8, ptr %__end_, align 4, !tbaa !201
  %8 = load ptr, ptr %__end_cap_.i, align 4, !tbaa !201
  store ptr %add.ptr6.i.i, ptr %__end_cap_.i, align 4, !tbaa !201
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end, label %if.then.i26.i

if.then.i26.i:                                    ; preds = %_ZNSt3__114__split_bufferINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE17__destruct_at_endB8ne190000EPS5_.exit.i.i
  %sub.ptr.lhs.cast.i.i28.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i30.i = sub i32 %sub.ptr.lhs.cast.i.i28.i, %sub.ptr.rhs.cast.i22.i
  tail call void @_ZdlPvj(ptr noundef nonnull %7, i32 noundef %sub.ptr.sub.i.i30.i) #29
  br label %if.end

if.end:                                           ; preds = %if.then.i26.i, %_ZNSt3__114__split_bufferINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE17__destruct_at_endB8ne190000EPS5_.exit.i.i, %if.then
  %__end.0 = phi ptr [ %incdec.ptr.i, %if.then ], [ %incdec.ptr.i8, %_ZNSt3__114__split_bufferINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE17__destruct_at_endB8ne190000EPS5_.exit.i.i ], [ %incdec.ptr.i8, %if.then.i26.i ]
  store ptr %__end.0, ptr %__end_, align 4, !tbaa !330
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE16__destroy_vectorclB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(4) %this) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load ptr, ptr %this, align 4, !tbaa !332
  %1 = load ptr, ptr %0, align 4, !tbaa !331
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %__end_.i = getelementptr inbounds i8, ptr %0, i32 4
  %2 = load ptr, ptr %__end_.i, align 4, !tbaa !330
  %cmp.not6.i = icmp eq ptr %2, %1
  br i1 %cmp.not6.i, label %_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit, label %while.body.i

while.body.i:                                     ; preds = %if.then, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i
  %__soon_to_be_end.07.i = phi ptr [ %incdec.ptr.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i ], [ %2, %if.then ]
  %incdec.ptr.i = getelementptr inbounds i8, ptr %__soon_to_be_end.07.i, i32 -4
  %3 = load ptr, ptr %incdec.ptr.i, align 4, !tbaa !201
  store ptr null, ptr %incdec.ptr.i, align 4, !tbaa !201
  %tobool.not.i.i.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i, label %delete.notnull.i.i.i.i.i.i

delete.notnull.i.i.i.i.i.i:                       ; preds = %while.body.i
  %vtable.i.i.i.i.i.i = load ptr, ptr %3, align 4, !tbaa !190
  %vfn.i.i.i.i.i.i = getelementptr inbounds i8, ptr %vtable.i.i.i.i.i.i, i32 4
  %4 = load ptr, ptr %vfn.i.i.i.i.i.i, align 4
  tail call void %4(ptr noundef nonnull align 4 dereferenceable(16) %3) #28
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i: ; preds = %delete.notnull.i.i.i.i.i.i, %while.body.i
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %1
  br i1 %cmp.not.i, label %_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit.loopexit, label %while.body.i

_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit.loopexit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i
  %.pre = load ptr, ptr %this, align 4, !tbaa !332
  %.pre9 = load ptr, ptr %.pre, align 4, !tbaa !331
  br label %_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit

_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit: ; preds = %_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit.loopexit, %if.then
  %5 = phi ptr [ %.pre9, %_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit.loopexit ], [ %1, %if.then ]
  %6 = phi ptr [ %.pre, %_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit.loopexit ], [ %0, %if.then ]
  store ptr %1, ptr %__end_.i, align 4, !tbaa !330
  %__end_cap_.i.i = getelementptr inbounds i8, ptr %6, i32 8
  %7 = load ptr, ptr %__end_cap_.i.i, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @_ZdlPvj(ptr noundef %5, i32 noundef %sub.ptr.sub.i) #29
  br label %if.end

if.end:                                           ; preds = %_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit, %entry
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load ptr, ptr %this, align 4, !tbaa !334
  %cmp.not.i = icmp eq ptr %0, null
  br i1 %cmp.not.i, label %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorclB8ne190000Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %__end_.i.i.i = getelementptr inbounds i8, ptr %this, i32 4
  store ptr %0, ptr %__end_.i.i.i, align 4, !tbaa !329
  %__end_cap_.i.i.i = getelementptr inbounds i8, ptr %this, i32 8
  %1 = load ptr, ptr %__end_cap_.i.i.i, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @_ZdlPvj(ptr noundef nonnull %0, i32 noundef %sub.ptr.sub.i.i) #29
  br label %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorclB8ne190000Ev.exit

_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorclB8ne190000Ev.exit: ; preds = %entry, %if.then.i
  ret void
}

; Function Attrs: mustprogress noreturn
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) local_unnamed_addr #13 comdat align 2 {
entry:
  tail call void @_ZNSt3__120__throw_length_errorB8ne190000EPKc(ptr noundef nonnull @.str.25.67) #31
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define hidden void @_ZN13HexagonBuffer15SetStorageScopeEb(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(36) %this, i1 noundef zeroext %isVtcm) local_unnamed_addr #23 align 2 {
entry:
  %storageScope_ = getelementptr inbounds i8, ptr %this, i32 32
  %selv = zext i1 %isVtcm to i32
  store i32 %selv, ptr %storageScope_, align 4, !tbaa !318
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define hidden noundef i32 @_ZNK13HexagonBuffer15GetStorageScopeEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %this) local_unnamed_addr #24 align 2 {
entry:
  %storageScope_ = getelementptr inbounds i8, ptr %this, i32 32
  %0 = load i32, ptr %storageScope_, align 4, !tbaa !318
  ret i32 %0
}

; Function Attrs: mustprogress
define hidden void @_ZN13HexagonBufferC2Ejjjb(ptr noundef nonnull align 4 dereferenceable(36) %this, i32 noundef %nallocs, i32 noundef %nbytes, i32 noundef %alignment, i1 noundef zeroext %isVtcm) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp.i = alloca %"class.std::__1::basic_ostream.base", align 4
  %alloca = alloca %"class.std::__1::unique_ptr.40", align 4
  %__end_.i = getelementptr inbounds i8, ptr %this, i32 4
  %__end_cap_.i = getelementptr inbounds i8, ptr %this, i32 8
  %managedAllocations_ = getelementptr inbounds i8, ptr %this, i32 12
  %ndim_ = getelementptr inbounds i8, ptr %this, i32 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %this, i8 0, i64 24, i1 false)
  store i32 2, ptr %ndim_, align 4, !tbaa !308
  %nbytesPerAllocation_ = getelementptr inbounds i8, ptr %this, i32 28
  store i32 %nbytes, ptr %nbytesPerAllocation_, align 4, !tbaa !317
  %storageScope_.i = getelementptr inbounds i8, ptr %this, i32 32
  %selv.i = zext i1 %isVtcm to i32
  store i32 %selv.i, ptr %storageScope_.i, align 4, !tbaa !318
  %sub = add i32 %nbytes, -1
  %add = add i32 %sub, %alignment
  %0 = urem i32 %add, %alignment
  %mul = sub nuw i32 %add, %0
  %mul2 = mul i32 %mul, %nallocs
  call void @llvm.lifetime.start.p0(ptr %alloca)
  br i1 %isVtcm, label %if.then11, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i67 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwj(i32 noundef 16) #32
          to label %call.i.i.noexc unwind label %ehcleanup42.thread

call.i.i.noexc:                                   ; preds = %if.then
  invoke void @_ZN13DDRAllocationC2Ejj(ptr noundef nonnull align 4 dereferenceable(16) %call.i.i67, i32 noundef %mul2, i32 noundef %alignment)
          to label %if.end31 unwind label %lpad.i.i, !noalias !335

lpad.i.i:                                         ; preds = %call.i.i.noexc
  %1 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvj(ptr noundef nonnull %call.i.i67, i32 noundef 16) #29, !noalias !335
  br label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit110

ehcleanup42.thread:                               ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit110

if.then11:                                        ; preds = %entry
  %call.i.i75 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwj(i32 noundef 16) #32
          to label %call.i.i.noexc74 unwind label %lpad13

call.i.i.noexc74:                                 ; preds = %if.then11
  invoke void @_ZN14VTCMAllocationC2Ejj(ptr noundef nonnull align 4 dereferenceable(16) %call.i.i75, i32 noundef %mul2, i32 noundef %alignment)
          to label %if.end31 unwind label %lpad.i.i73, !noalias !340

lpad.i.i73:                                       ; preds = %call.i.i.noexc74
  %3 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvj(ptr noundef nonnull %call.i.i75, i32 noundef 16) #29, !noalias !340
  br label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit110

lpad13:                                           ; preds = %if.then11
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit110

if.end31:                                         ; preds = %call.i.i.noexc74, %call.i.i.noexc
  %5 = phi ptr [ %call.i.i67, %call.i.i.noexc ], [ %call.i.i75, %call.i.i.noexc74 ]
  store ptr %5, ptr %alloca, align 4, !tbaa !201
  %cmp32119.not = icmp eq i32 %nallocs, 0
  br i1 %cmp32119.not, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end31
  %.pre = load ptr, ptr %__end_.i, align 4, !tbaa !329
  %data_ = getelementptr inbounds i8, ptr %5, i32 4
  br label %for.body

for.cond.cleanup:                                 ; preds = %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit, %if.end31
  invoke void @_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE9push_backB8ne190000EOS5_(ptr noundef nonnull align 4 dereferenceable(12) %managedAllocations_, ptr noundef nonnull align 4 dereferenceable(4) %alloca)
          to label %invoke.cont41 unwind label %ehcleanup42

for.body:                                         ; preds = %for.body.preheader, %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit
  %6 = phi ptr [ %__end.0.i, %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit ], [ %.pre, %for.body.preheader ]
  %i.0120 = phi i32 [ %inc, %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit ], [ 0, %for.body.preheader ]
  %7 = load ptr, ptr %data_, align 4, !tbaa !301
  %mul34 = mul i32 %i.0120, %mul
  %add.ptr = getelementptr inbounds i8, ptr %7, i32 %mul34
  %8 = load ptr, ptr %__end_cap_.i, align 4, !tbaa !201
  %cmp.i97 = icmp ult ptr %6, %8
  br i1 %cmp.i97, label %if.then.i98, label %if.else.i

if.then.i98:                                      ; preds = %for.body
  store ptr %add.ptr, ptr %6, align 4, !tbaa !201
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %6, i32 4
  br label %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit

if.else.i:                                        ; preds = %for.body
  %9 = load ptr, ptr %this, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 2
  %add.i.i = add nsw i32 %sub.ptr.div.i.i.i, 1
  %cmp.i.i.i = icmp ugt i32 %add.i.i, 1073741823
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  invoke void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) #31
          to label %.noexc unwind label %lpad36.loopexit.split-lp

.noexc:                                           ; preds = %if.then.i.i.i
  unreachable

_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i: ; preds = %if.else.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %cmp3.not.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, 2147483644
  %mul.i.i.i = lshr exact i32 %sub.ptr.sub.i.i.i.i, 1
  %10 = tail call i32 @llvm.umax.i32(i32 %mul.i.i.i, i32 %add.i.i)
  %retval.0.i.i.i = select i1 %cmp3.not.i.i.i, i32 %10, i32 1073741823
  %cmp.i17.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %cmp.i17.i.i, label %_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i
  %cmp.i.i.i.i.i = icmp ugt i32 %retval.0.i.i.i, 1073741823
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.else.i.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne190000v() #31
          to label %.noexc99 unwind label %lpad36.loopexit.split-lp

.noexc99:                                         ; preds = %if.then.i.i.i.i.i
  unreachable

_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i: ; preds = %if.else.i.i.i
  %mul.i.i.i.i.i = shl nuw i32 %retval.0.i.i.i, 2
  %call.i5.i.i.i.i.i.i100 = invoke noalias noundef nonnull ptr @_Znwj(i32 noundef %mul.i.i.i.i.i) #32
          to label %_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i unwind label %lpad36.loopexit

_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i, %_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i
  %storemerge.i.i.i = phi ptr [ null, %_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i ], [ %call.i5.i.i.i.i.i.i100, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds ptr, ptr %storemerge.i.i.i, i32 %sub.ptr.div.i.i.i
  %add.ptr6.i.i.i = getelementptr inbounds ptr, ptr %storemerge.i.i.i, i32 %retval.0.i.i.i
  store ptr %add.ptr, ptr %add.ptr.i.i.i, align 4, !tbaa !201
  %incdec.ptr.i8.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %storemerge.i.i.i, ptr align 4 %9, i32 %sub.ptr.sub.i.i.i, i1 false)
  store ptr %storemerge.i.i.i, ptr %this, align 4, !tbaa !201
  store ptr %incdec.ptr.i8.i, ptr %__end_.i, align 4, !tbaa !201
  store ptr %add.ptr6.i.i.i, ptr %__end_cap_.i, align 4, !tbaa !201
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit, label %if.then.i26.i.i

if.then.i26.i.i:                                  ; preds = %_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i
  tail call void @_ZdlPvj(ptr noundef nonnull %9, i32 noundef %sub.ptr.sub.i.i.i.i) #29
  br label %_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit

_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit: ; preds = %if.then.i98, %_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i, %if.then.i26.i.i
  %__end.0.i = phi ptr [ %incdec.ptr.i.i, %if.then.i98 ], [ %incdec.ptr.i8.i, %_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne190000EPS1_.exit.i.i.i ], [ %incdec.ptr.i8.i, %if.then.i26.i.i ]
  store ptr %__end.0.i, ptr %__end_.i, align 4, !tbaa !329
  %inc = add nuw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, %nallocs
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !345

lpad36.loopexit:                                  ; preds = %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup42.thread128

lpad36.loopexit.split-lp:                         ; preds = %if.then.i.i.i, %if.then.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup42.thread128

invoke.cont41:                                    ; preds = %for.cond.cleanup
  %11 = load ptr, ptr %alloca, align 4, !tbaa !201
  store ptr null, ptr %alloca, align 4, !tbaa !201
  %tobool.not.i.i101 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i101, label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit105, label %delete.notnull.i.i.i102

delete.notnull.i.i.i102:                          ; preds = %invoke.cont41
  %vtable.i.i.i103 = load ptr, ptr %11, align 4, !tbaa !190
  %vfn.i.i.i104 = getelementptr inbounds i8, ptr %vtable.i.i.i103, i32 4
  %12 = load ptr, ptr %vfn.i.i.i104, align 4
  call void %12(ptr noundef nonnull align 4 dereferenceable(16) %11) #28
  br label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit105

_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit105: ; preds = %invoke.cont41, %delete.notnull.i.i.i102
  call void @llvm.lifetime.end.p0(ptr %alloca)
  ret void

ehcleanup42.thread128:                            ; preds = %lpad36.loopexit, %lpad36.loopexit.split-lp
  %.pn62.ph.ph127 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %lpad36.loopexit.split-lp ], [ %lpad.loopexit, %lpad36.loopexit ]
  store ptr null, ptr %alloca, align 4, !tbaa !201
  br label %delete.notnull.i.i.i107

ehcleanup42:                                      ; preds = %for.cond.cleanup
  %13 = landingpad { ptr, i32 }
          cleanup
  %.pr115.pre = load ptr, ptr %alloca, align 4, !tbaa !201
  store ptr null, ptr %alloca, align 4, !tbaa !201
  %tobool.not.i.i106 = icmp eq ptr %.pr115.pre, null
  br i1 %tobool.not.i.i106, label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit110, label %delete.notnull.i.i.i107

delete.notnull.i.i.i107:                          ; preds = %ehcleanup42.thread128, %ehcleanup42
  %.pn62.ph133 = phi { ptr, i32 } [ %.pn62.ph.ph127, %ehcleanup42.thread128 ], [ %13, %ehcleanup42 ]
  %.pr115132 = phi ptr [ %5, %ehcleanup42.thread128 ], [ %.pr115.pre, %ehcleanup42 ]
  %vtable.i.i.i108 = load ptr, ptr %.pr115132, align 4, !tbaa !190
  %vfn.i.i.i109 = getelementptr inbounds i8, ptr %vtable.i.i.i108, i32 4
  %14 = load ptr, ptr %vfn.i.i.i109, align 4
  call void %14(ptr noundef nonnull align 4 dereferenceable(16) %.pr115132) #28
  br label %_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit110

_ZNSt3__110unique_ptrI10AllocationNS_14default_deleteIS1_EEED2B8ne190000Ev.exit110: ; preds = %lpad.i.i, %lpad13, %lpad.i.i73, %ehcleanup42.thread, %ehcleanup42, %delete.notnull.i.i.i107
  %.pn62118 = phi { ptr, i32 } [ %2, %ehcleanup42.thread ], [ %13, %ehcleanup42 ], [ %.pn62.ph133, %delete.notnull.i.i.i107 ], [ %1, %lpad.i.i ], [ %4, %lpad13 ], [ %3, %lpad.i.i73 ]
  call void @llvm.lifetime.end.p0(ptr %alloca)
  call void @llvm.lifetime.start.p0(ptr %ref.tmp.i)
  store ptr %managedAllocations_, ptr %ref.tmp.i, align 4, !tbaa !201
  call void @_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE16__destroy_vectorclB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp.i)
  call void @llvm.lifetime.end.p0(ptr %ref.tmp.i)
  call void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) #28
  resume { ptr, i32 } %.pn62118
}

; Function Attrs: mustprogress nounwind
define hidden void @_ZN13HexagonBufferD2Ev(ptr noundef nonnull align 4 dereferenceable(36) %this) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp.i = alloca %"class.std::__1::basic_ostream.base", align 4
  %managedAllocations_ = getelementptr inbounds i8, ptr %this, i32 12
  %0 = load ptr, ptr %managedAllocations_, align 4, !tbaa !331
  %__end_.i = getelementptr inbounds i8, ptr %this, i32 16
  %1 = load ptr, ptr %__end_.i, align 4, !tbaa !330
  %cmp.not6.i = icmp eq ptr %1, %0
  br i1 %cmp.not6.i, label %_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit, label %while.body.i

while.body.i:                                     ; preds = %entry, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i
  %__soon_to_be_end.07.i = phi ptr [ %incdec.ptr.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i ], [ %1, %entry ]
  %incdec.ptr.i = getelementptr inbounds i8, ptr %__soon_to_be_end.07.i, i32 -4
  %2 = load ptr, ptr %incdec.ptr.i, align 4, !tbaa !201
  store ptr null, ptr %incdec.ptr.i, align 4, !tbaa !201
  %tobool.not.i.i.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i, label %delete.notnull.i.i.i.i.i.i

delete.notnull.i.i.i.i.i.i:                       ; preds = %while.body.i
  %vtable.i.i.i.i.i.i = load ptr, ptr %2, align 4, !tbaa !190
  %vfn.i.i.i.i.i.i = getelementptr inbounds i8, ptr %vtable.i.i.i.i.i.i, i32 4
  %3 = load ptr, ptr %vfn.i.i.i.i.i.i, align 4
  tail call void %3(ptr noundef nonnull align 4 dereferenceable(16) %2) #28
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i: ; preds = %delete.notnull.i.i.i.i.i.i, %while.body.i
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %0
  br i1 %cmp.not.i, label %_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit, label %while.body.i

_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE22__base_destruct_at_endB8ne190000EPS5_.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI10AllocationNS_14default_deleteIS3_EEEEEEE7destroyB8ne190000IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_.exit.i, %entry
  store ptr %0, ptr %__end_.i, align 4, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr %ref.tmp.i)
  store ptr %managedAllocations_, ptr %ref.tmp.i, align 4, !tbaa !201
  call void @_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE16__destroy_vectorclB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp.i)
  call void @llvm.lifetime.end.p0(ptr %ref.tmp.i)
  call void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) #28
  ret void
}

; Function Attrs: mustprogress
define hidden noundef ptr @_ZN13HexagonBuffer10GetPointerEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %this) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %oss = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp = alloca %"class.std::__1::basic_string", align 4
  %oss12 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp16 = alloca %"class.std::__1::basic_string", align 4
  %ref.tmp33 = alloca %"class.std::__1::basic_string", align 4
  %__end_.i = getelementptr inbounds i8, ptr %this, i32 4
  %0 = load ptr, ptr %__end_.i, align 4, !tbaa !329
  %1 = load ptr, ptr %this, align 4, !tbaa !334
  %tobool.not = icmp eq ptr %0, %1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %oss)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss)
  %call1.i52 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull @.str.4.70, i32 noundef 78)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  %__sb_.i = getelementptr inbounds i8, ptr %oss, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.5.71, ptr noundef nonnull @.str.2.59, i32 noundef 130, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  %bf.load.i.i = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont6
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %2 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %2, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont6, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  %3 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %3, ptr %oss, align 4, !tbaa !190
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %3, i32 -12
  %vbase.offset.i.i = load i32, ptr %vbase.offset.ptr.i.i, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %oss, i32 %vbase.offset.i.i
  store ptr %4, ptr %add.ptr.i.i, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i.i = getelementptr inbounds i8, ptr %oss, i32 36
  %bf.load.i.i.i.i.i = load i8, ptr %__str_.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, 1
  %tobool.i.not.i.i.i.i = icmp eq i8 %bf.clear.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %__data_.i.i.i.i.i = getelementptr inbounds i8, ptr %oss, i32 44
  %5 = load ptr, ptr %__data_.i.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i = load i32, ptr %__str_.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = and i32 %bf.load.i5.i.i.i.i, -2
  call void @_ZdlPvj(ptr noundef %5, i32 noundef %bf.lshr.i.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %if.then.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %6 = getelementptr inbounds i8, ptr %oss, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %6) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %if.end

lpad:                                             ; preds = %if.then
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup7

lpad3:                                            ; preds = %invoke.cont
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont4
  %9 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i53 = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i54 = and i8 %bf.load.i.i53, 1
  %tobool.i.not.i55 = icmp eq i8 %bf.clear.i.i54, 0
  br i1 %tobool.i.not.i55, label %ehcleanup, label %if.then.i56

if.then.i56:                                      ; preds = %lpad5
  %__data_.i.i57 = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %10 = load ptr, ptr %__data_.i.i57, align 4, !tbaa !189
  %bf.load.i5.i58 = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i59 = and i32 %bf.load.i5.i58, -2
  call void @_ZdlPvj(ptr noundef %10, i32 noundef %bf.lshr.i.i59) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i56, %lpad5, %lpad3
  %.pn = phi { ptr, i32 } [ %8, %lpad3 ], [ %9, %lpad5 ], [ %9, %if.then.i56 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %ehcleanup7

ehcleanup7:                                       ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %7, %lpad ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %eh.resume

if.end:                                           ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %entry
  %ndim_ = getelementptr inbounds i8, ptr %this, i32 24
  %11 = load i32, ptr %ndim_, align 4
  %12 = add i32 %11, -1
  %or.cond = icmp ult i32 %12, 2
  br i1 %or.cond, label %if.end25, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(ptr %oss12)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss12)
  %call1.i62 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss12, ptr noundef nonnull @.str.6.72, i32 noundef 43)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %if.then11
  call void @llvm.lifetime.start.p0(ptr %ref.tmp16)
  %__sb_.i64 = getelementptr inbounds i8, ptr %oss12, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp16, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i64)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont14
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.7.73, ptr noundef nonnull @.str.2.59, i32 noundef 132, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp16)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %invoke.cont18
  %bf.load.i.i66 = load i8, ptr %ref.tmp16, align 4
  %bf.clear.i.i67 = and i8 %bf.load.i.i66, 1
  %tobool.i.not.i68 = icmp eq i8 %bf.clear.i.i67, 0
  br i1 %tobool.i.not.i68, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit73, label %if.then.i69

if.then.i69:                                      ; preds = %invoke.cont20
  %__data_.i.i70 = getelementptr inbounds i8, ptr %ref.tmp16, i32 8
  %13 = load ptr, ptr %__data_.i.i70, align 4, !tbaa !189
  %bf.load.i5.i71 = load i32, ptr %ref.tmp16, align 4
  %bf.lshr.i.i72 = and i32 %bf.load.i5.i71, -2
  call void @_ZdlPvj(ptr noundef %13, i32 noundef %bf.lshr.i.i72) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit73

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit73: ; preds = %invoke.cont20, %if.then.i69
  call void @llvm.lifetime.end.p0(ptr %ref.tmp16)
  %14 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %14, ptr %oss12, align 4, !tbaa !190
  %15 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i74 = getelementptr i8, ptr %14, i32 -12
  %vbase.offset.i.i75 = load i32, ptr %vbase.offset.ptr.i.i74, align 4
  %add.ptr.i.i76 = getelementptr inbounds i8, ptr %oss12, i32 %vbase.offset.i.i75
  store ptr %15, ptr %add.ptr.i.i76, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i64, align 4, !tbaa !190
  %__str_.i.i.i78 = getelementptr inbounds i8, ptr %oss12, i32 36
  %bf.load.i.i.i.i.i79 = load i8, ptr %__str_.i.i.i78, align 4
  %bf.clear.i.i.i.i.i80 = and i8 %bf.load.i.i.i.i.i79, 1
  %tobool.i.not.i.i.i.i81 = icmp eq i8 %bf.clear.i.i.i.i.i80, 0
  br i1 %tobool.i.not.i.i.i.i81, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit86, label %if.then.i.i.i.i82

if.then.i.i.i.i82:                                ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit73
  %__data_.i.i.i.i.i83 = getelementptr inbounds i8, ptr %oss12, i32 44
  %16 = load ptr, ptr %__data_.i.i.i.i.i83, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i84 = load i32, ptr %__str_.i.i.i78, align 4
  %bf.lshr.i.i.i.i.i85 = and i32 %bf.load.i5.i.i.i.i84, -2
  call void @_ZdlPvj(ptr noundef %16, i32 noundef %bf.lshr.i.i.i.i.i85) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit86

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit86: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit73, %if.then.i.i.i.i82
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i64) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss12, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %17 = getelementptr inbounds i8, ptr %oss12, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %17) #28
  call void @llvm.lifetime.end.p0(ptr %oss12)
  %.pr = load i32, ptr %ndim_, align 4, !tbaa !308
  br label %if.end25

lpad13:                                           ; preds = %if.then11
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup23

lpad17:                                           ; preds = %invoke.cont14
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup22

lpad19:                                           ; preds = %invoke.cont18
  %20 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i87 = load i8, ptr %ref.tmp16, align 4
  %bf.clear.i.i88 = and i8 %bf.load.i.i87, 1
  %tobool.i.not.i89 = icmp eq i8 %bf.clear.i.i88, 0
  br i1 %tobool.i.not.i89, label %ehcleanup22, label %if.then.i90

if.then.i90:                                      ; preds = %lpad19
  %__data_.i.i91 = getelementptr inbounds i8, ptr %ref.tmp16, i32 8
  %21 = load ptr, ptr %__data_.i.i91, align 4, !tbaa !189
  %bf.load.i5.i92 = load i32, ptr %ref.tmp16, align 4
  %bf.lshr.i.i93 = and i32 %bf.load.i5.i92, -2
  call void @_ZdlPvj(ptr noundef %21, i32 noundef %bf.lshr.i.i93) #29
  br label %ehcleanup22

ehcleanup22:                                      ; preds = %if.then.i90, %lpad19, %lpad17
  %.pn47 = phi { ptr, i32 } [ %19, %lpad17 ], [ %20, %lpad19 ], [ %20, %if.then.i90 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp16)
  br label %ehcleanup23

ehcleanup23:                                      ; preds = %ehcleanup22, %lpad13
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %ehcleanup22 ], [ %18, %lpad13 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss12) #28
  call void @llvm.lifetime.end.p0(ptr %oss12)
  br label %eh.resume

if.end25:                                         ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit86, %if.end
  %22 = phi i32 [ %.pr, %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit86 ], [ %11, %if.end ]
  %cmp27 = icmp eq i32 %22, 1
  br i1 %cmp27, label %if.then28, label %return

if.then28:                                        ; preds = %if.end25
  %23 = load ptr, ptr %__end_.i, align 4, !tbaa !329
  %24 = load ptr, ptr %this, align 4, !tbaa !334
  %sub.ptr.lhs.cast.i96 = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i97 = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i98 = sub i32 %sub.ptr.lhs.cast.i96, %sub.ptr.rhs.cast.i97
  %cmp31.not = icmp eq i32 %sub.ptr.sub.i98, 4
  br i1 %cmp31.not, label %return, label %if.then32

if.then32:                                        ; preds = %if.then28
  call void @llvm.lifetime.start.p0(ptr %ref.tmp33)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000ILi0EEEPKc(ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp33, ptr noundef nonnull @.str.9.57)
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.8.74, ptr noundef nonnull @.str.2.59, i32 noundef 134, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp33)
          to label %invoke.cont35 unwind label %lpad34

invoke.cont35:                                    ; preds = %if.then32
  %bf.load.i.i100 = load i8, ptr %ref.tmp33, align 4
  %bf.clear.i.i101 = and i8 %bf.load.i.i100, 1
  %tobool.i.not.i102 = icmp eq i8 %bf.clear.i.i101, 0
  br i1 %tobool.i.not.i102, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit107, label %if.then.i103

if.then.i103:                                     ; preds = %invoke.cont35
  %__data_.i.i104 = getelementptr inbounds i8, ptr %ref.tmp33, i32 8
  %25 = load ptr, ptr %__data_.i.i104, align 4, !tbaa !189
  %bf.load.i5.i105 = load i32, ptr %ref.tmp33, align 4
  %bf.lshr.i.i106 = and i32 %bf.load.i5.i105, -2
  call void @_ZdlPvj(ptr noundef %25, i32 noundef %bf.lshr.i.i106) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit107

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit107: ; preds = %invoke.cont35, %if.then.i103
  call void @llvm.lifetime.end.p0(ptr %ref.tmp33)
  %.pre = load ptr, ptr %this, align 4, !tbaa !334
  br label %return

lpad34:                                           ; preds = %if.then32
  %26 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i108 = load i8, ptr %ref.tmp33, align 4
  %bf.clear.i.i109 = and i8 %bf.load.i.i108, 1
  %tobool.i.not.i110 = icmp eq i8 %bf.clear.i.i109, 0
  br i1 %tobool.i.not.i110, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115, label %if.then.i111

if.then.i111:                                     ; preds = %lpad34
  %__data_.i.i112 = getelementptr inbounds i8, ptr %ref.tmp33, i32 8
  %27 = load ptr, ptr %__data_.i.i112, align 4, !tbaa !189
  %bf.load.i5.i113 = load i32, ptr %ref.tmp33, align 4
  %bf.lshr.i.i114 = and i32 %bf.load.i5.i113, -2
  call void @_ZdlPvj(ptr noundef %27, i32 noundef %bf.lshr.i.i114) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115: ; preds = %lpad34, %if.then.i111
  call void @llvm.lifetime.end.p0(ptr %ref.tmp33)
  br label %eh.resume

return:                                           ; preds = %if.then28, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit107, %if.end25
  %retval.0.in = phi ptr [ %this, %if.end25 ], [ %.pre, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit107 ], [ %24, %if.then28 ]
  %retval.0 = load ptr, ptr %retval.0.in, align 4, !tbaa !201
  ret ptr %retval.0

eh.resume:                                        ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115, %ehcleanup23, %ehcleanup7
  %.pn50 = phi { ptr, i32 } [ %26, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit115 ], [ %.pn47.pn, %ehcleanup23 ], [ %.pn.pn, %ehcleanup7 ]
  resume { ptr, i32 } %.pn50
}

; Function Attrs: mustprogress
define hidden void @_ZN9BufferSet12MemoryCopiesERKS_S1_j(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.30") align 4 %agg.result, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %dest, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %src, i32 noundef %bytesToCopy) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %oss = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp = alloca %"class.std::__1::basic_string", align 4
  %oss11 = alloca %"class.std::__1::basic_ostringstream", align 4
  %ref.tmp15 = alloca %"class.std::__1::basic_string", align 4
  %numRegions.i = getelementptr inbounds i8, ptr %src, i32 4
  %0 = load i32, ptr %numRegions.i, align 4, !tbaa !346
  %regionSizeBytes.i = getelementptr inbounds i8, ptr %src, i32 8
  %1 = load i32, ptr %regionSizeBytes.i, align 4, !tbaa !348
  %mul.i = mul i32 %1, %0
  %cmp.not = icmp ult i32 %mul.i, %bytesToCopy
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %oss)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss)
  %call1.i124 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull @.str.9.57, i32 noundef 0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  call void @llvm.lifetime.start.p0(ptr %ref.tmp)
  %__sb_.i = getelementptr inbounds i8, ptr %oss, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.10.75, ptr noundef nonnull @.str.2.59, i32 noundef 156, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont3
  %bf.load.i.i = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  %tobool.i.not.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.i.not.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont5
  %__data_.i.i = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %2 = load ptr, ptr %__data_.i.i, align 4, !tbaa !189
  %bf.load.i5.i = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i = and i32 %bf.load.i5.i, -2
  call void @_ZdlPvj(ptr noundef %2, i32 noundef %bf.lshr.i.i) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %invoke.cont5, %if.then.i
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  %3 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %3, ptr %oss, align 4, !tbaa !190
  %4 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i = getelementptr i8, ptr %3, i32 -12
  %vbase.offset.i.i = load i32, ptr %vbase.offset.ptr.i.i, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %oss, i32 %vbase.offset.i.i
  store ptr %4, ptr %add.ptr.i.i, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i, align 4, !tbaa !190
  %__str_.i.i.i = getelementptr inbounds i8, ptr %oss, i32 36
  %bf.load.i.i.i.i.i = load i8, ptr %__str_.i.i.i, align 4
  %bf.clear.i.i.i.i.i = and i8 %bf.load.i.i.i.i.i, 1
  %tobool.i.not.i.i.i.i = icmp eq i8 %bf.clear.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %__data_.i.i.i.i.i = getelementptr inbounds i8, ptr %oss, i32 44
  %5 = load ptr, ptr %__data_.i.i.i.i.i, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i = load i32, ptr %__str_.i.i.i, align 4
  %bf.lshr.i.i.i.i.i = and i32 %bf.load.i5.i.i.i.i, -2
  call void @_ZdlPvj(ptr noundef %5, i32 noundef %bf.lshr.i.i.i.i.i) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %if.then.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %6 = getelementptr inbounds i8, ptr %oss, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %6) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %if.end

lpad:                                             ; preds = %if.then
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup6

lpad2:                                            ; preds = %invoke.cont
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad4:                                            ; preds = %invoke.cont3
  %9 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i125 = load i8, ptr %ref.tmp, align 4
  %bf.clear.i.i126 = and i8 %bf.load.i.i125, 1
  %tobool.i.not.i127 = icmp eq i8 %bf.clear.i.i126, 0
  br i1 %tobool.i.not.i127, label %ehcleanup, label %if.then.i128

if.then.i128:                                     ; preds = %lpad4
  %__data_.i.i129 = getelementptr inbounds i8, ptr %ref.tmp, i32 8
  %10 = load ptr, ptr %__data_.i.i129, align 4, !tbaa !189
  %bf.load.i5.i130 = load i32, ptr %ref.tmp, align 4
  %bf.lshr.i.i131 = and i32 %bf.load.i5.i130, -2
  call void @_ZdlPvj(ptr noundef %10, i32 noundef %bf.lshr.i.i131) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i128, %lpad4, %lpad2
  %.pn = phi { ptr, i32 } [ %8, %lpad2 ], [ %9, %lpad4 ], [ %9, %if.then.i128 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp)
  br label %ehcleanup6

ehcleanup6:                                       ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %ehcleanup ], [ %7, %lpad ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss) #28
  call void @llvm.lifetime.end.p0(ptr %oss)
  br label %eh.resume

if.end:                                           ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %entry
  %numRegions.i133 = getelementptr inbounds i8, ptr %dest, i32 4
  %11 = load i32, ptr %numRegions.i133, align 4, !tbaa !346
  %regionSizeBytes.i134 = getelementptr inbounds i8, ptr %dest, i32 8
  %12 = load i32, ptr %regionSizeBytes.i134, align 4, !tbaa !348
  %mul.i135 = mul i32 %12, %11
  %cmp9.not = icmp ult i32 %mul.i135, %bytesToCopy
  br i1 %cmp9.not, label %if.then10, label %if.end24

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(ptr %oss11)
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss11)
  %call1.i137 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j(ptr noundef nonnull align 4 dereferenceable(4) %oss11, ptr noundef nonnull @.str.9.57, i32 noundef 0)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %if.then10
  call void @llvm.lifetime.start.p0(ptr %ref.tmp15)
  %__sb_.i139 = getelementptr inbounds i8, ptr %oss11, i32 4
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 4 %ref.tmp15, ptr noundef nonnull align 4 dereferenceable(52) %__sb_.i139)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %invoke.cont13
  invoke void @_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull @.str.11.76, ptr noundef nonnull @.str.2.59, i32 noundef 157, ptr noundef nonnull align 4 dereferenceable(12) %ref.tmp15)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont17
  %bf.load.i.i141 = load i8, ptr %ref.tmp15, align 4
  %bf.clear.i.i142 = and i8 %bf.load.i.i141, 1
  %tobool.i.not.i143 = icmp eq i8 %bf.clear.i.i142, 0
  br i1 %tobool.i.not.i143, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit148, label %if.then.i144

if.then.i144:                                     ; preds = %invoke.cont19
  %__data_.i.i145 = getelementptr inbounds i8, ptr %ref.tmp15, i32 8
  %13 = load ptr, ptr %__data_.i.i145, align 4, !tbaa !189
  %bf.load.i5.i146 = load i32, ptr %ref.tmp15, align 4
  %bf.lshr.i.i147 = and i32 %bf.load.i5.i146, -2
  call void @_ZdlPvj(ptr noundef %13, i32 noundef %bf.lshr.i.i147) #29
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit148

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit148: ; preds = %invoke.cont19, %if.then.i144
  call void @llvm.lifetime.end.p0(ptr %ref.tmp15)
  %14 = load ptr, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 4
  store ptr %14, ptr %oss11, align 4, !tbaa !190
  %15 = load ptr, ptr getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 12), align 4
  %vbase.offset.ptr.i.i149 = getelementptr i8, ptr %14, i32 -12
  %vbase.offset.i.i150 = load i32, ptr %vbase.offset.ptr.i.i149, align 4
  %add.ptr.i.i151 = getelementptr inbounds i8, ptr %oss11, i32 %vbase.offset.i.i150
  store ptr %15, ptr %add.ptr.i.i151, align 4, !tbaa !190
  store ptr getelementptr inbounds inrange(-8, 56) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 8), ptr %__sb_.i139, align 4, !tbaa !190
  %__str_.i.i.i153 = getelementptr inbounds i8, ptr %oss11, i32 36
  %bf.load.i.i.i.i.i154 = load i8, ptr %__str_.i.i.i153, align 4
  %bf.clear.i.i.i.i.i155 = and i8 %bf.load.i.i.i.i.i154, 1
  %tobool.i.not.i.i.i.i156 = icmp eq i8 %bf.clear.i.i.i.i.i155, 0
  br i1 %tobool.i.not.i.i.i.i156, label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit161, label %if.then.i.i.i.i157

if.then.i.i.i.i157:                               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit148
  %__data_.i.i.i.i.i158 = getelementptr inbounds i8, ptr %oss11, i32 44
  %16 = load ptr, ptr %__data_.i.i.i.i.i158, align 4, !tbaa !189
  %bf.load.i5.i.i.i.i159 = load i32, ptr %__str_.i.i.i153, align 4
  %bf.lshr.i.i.i.i.i160 = and i32 %bf.load.i5.i.i.i.i159, -2
  call void @_ZdlPvj(ptr noundef %16, i32 noundef %bf.lshr.i.i.i.i.i160) #29
  br label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit161

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit161: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit148, %if.then.i.i.i.i157
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(32) %__sb_.i139) #28
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(4) %oss11, ptr noundef nonnull getelementptr inbounds (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 4)) #28
  %17 = getelementptr inbounds i8, ptr %oss11, i32 56
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 4 dereferenceable(80) %17) #28
  call void @llvm.lifetime.end.p0(ptr %oss11)
  br label %if.end24

lpad12:                                           ; preds = %if.then10
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup22

lpad16:                                           ; preds = %invoke.cont13
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup21

lpad18:                                           ; preds = %invoke.cont17
  %20 = landingpad { ptr, i32 }
          cleanup
  %bf.load.i.i162 = load i8, ptr %ref.tmp15, align 4
  %bf.clear.i.i163 = and i8 %bf.load.i.i162, 1
  %tobool.i.not.i164 = icmp eq i8 %bf.clear.i.i163, 0
  br i1 %tobool.i.not.i164, label %ehcleanup21, label %if.then.i165

if.then.i165:                                     ; preds = %lpad18
  %__data_.i.i166 = getelementptr inbounds i8, ptr %ref.tmp15, i32 8
  %21 = load ptr, ptr %__data_.i.i166, align 4, !tbaa !189
  %bf.load.i5.i167 = load i32, ptr %ref.tmp15, align 4
  %bf.lshr.i.i168 = and i32 %bf.load.i5.i167, -2
  call void @_ZdlPvj(ptr noundef %21, i32 noundef %bf.lshr.i.i168) #29
  br label %ehcleanup21

ehcleanup21:                                      ; preds = %if.then.i165, %lpad18, %lpad16
  %.pn118 = phi { ptr, i32 } [ %19, %lpad16 ], [ %20, %lpad18 ], [ %20, %if.then.i165 ]
  call void @llvm.lifetime.end.p0(ptr %ref.tmp15)
  br label %ehcleanup22

ehcleanup22:                                      ; preds = %ehcleanup21, %lpad12
  %.pn118.pn = phi { ptr, i32 } [ %.pn118, %ehcleanup21 ], [ %18, %lpad12 ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 4 dereferenceable(56) %oss11) #28
  call void @llvm.lifetime.end.p0(ptr %oss11)
  br label %eh.resume

if.end24:                                         ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit161, %if.end
  %22 = load i32, ptr %regionSizeBytes.i, align 4, !tbaa !348
  %add = add i32 %bytesToCopy, -1
  %sub = add i32 %add, %22
  %div = udiv i32 %sub, %22
  store ptr null, ptr %agg.result, align 4, !tbaa !349
  %__end_.i = getelementptr inbounds i8, ptr %agg.result, i32 4
  store ptr null, ptr %__end_.i, align 4, !tbaa !353
  %__end_cap_.i = getelementptr inbounds i8, ptr %agg.result, i32 8
  store ptr null, ptr %__end_cap_.i, align 4, !tbaa !354
  %cmp26189.not = icmp ugt i32 %22, %sub
  br i1 %cmp26189.not, label %nrvo.skipdtor, label %for.body

for.cond.loopexit:                                ; preds = %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000EOS1_.exit, %for.body
  %23 = phi ptr [ %24, %for.body ], [ %__end.0.i, %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000EOS1_.exit ]
  %cmp26 = icmp ult i32 %add29, %div
  br i1 %cmp26, label %for.body, label %nrvo.skipdtor, !llvm.loop !355

for.body:                                         ; preds = %if.end24, %for.cond.loopexit
  %24 = phi ptr [ %23, %for.cond.loopexit ], [ null, %if.end24 ]
  %srcI.0190 = phi i32 [ %add29, %for.cond.loopexit ], [ 0, %if.end24 ]
  %25 = load i32, ptr %regionSizeBytes.i, align 4, !tbaa !348
  %mul = mul i32 %25, %srcI.0190
  %add29 = add nuw i32 %srcI.0190, 1
  %mul31 = mul i32 %25, %add29
  %26 = call i32 @llvm.umin.i32(i32 %bytesToCopy, i32 %mul31)
  %27 = load i32, ptr %regionSizeBytes.i134, align 4, !tbaa !348
  %div37 = udiv i32 %mul, %27
  %sub38 = add i32 %26, -1
  %div40 = udiv i32 %sub38, %27
  %add41 = add i32 %div40, 1
  %cmp43187 = icmp ult i32 %div37, %add41
  br i1 %cmp43187, label %for.body45, label %for.cond.loopexit

for.body45:                                       ; preds = %for.body, %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000EOS1_.exit
  %28 = phi ptr [ %__end.0.i, %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000EOS1_.exit ], [ %24, %for.body ]
  %destI.0188 = phi i32 [ %add54, %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000EOS1_.exit ], [ %div37, %for.body ]
  %29 = load i32, ptr %regionSizeBytes.i134, align 4, !tbaa !348
  %mul48 = mul i32 %29, %destI.0188
  %30 = call i32 @llvm.umax.i32(i32 %mul, i32 %mul48)
  %add54 = add nuw i32 %destI.0188, 1
  %mul56 = mul i32 %29, %add54
  %31 = call i32 @llvm.umin.i32(i32 %mul56, i32 %26)
  %sub61 = sub i32 %31, %30
  %32 = load i32, ptr %regionSizeBytes.i, align 4, !tbaa !348
  %rem = urem i32 %30, %32
  %src.val = load ptr, ptr %src, align 4, !tbaa !356
  %arrayidx.i = getelementptr inbounds ptr, ptr %src.val, i32 %srcI.0190
  %33 = load ptr, ptr %arrayidx.i, align 4, !tbaa !201
  %add.ptr.i = getelementptr inbounds i8, ptr %33, i32 %rem
  %rem67 = urem i32 %30, %29
  %dest.val = load ptr, ptr %dest, align 4, !tbaa !356
  %arrayidx.i174 = getelementptr inbounds ptr, ptr %dest.val, i32 %destI.0188
  %34 = load ptr, ptr %arrayidx.i174, align 4, !tbaa !201
  %add.ptr.i175 = getelementptr inbounds i8, ptr %34, i32 %rem67
  %35 = load ptr, ptr %__end_cap_.i, align 4, !tbaa !201
  %cmp.i = icmp ult ptr %28, %35
  br i1 %cmp.i, label %if.then.i178, label %if.else.i

if.then.i178:                                     ; preds = %for.body45
  store ptr %add.ptr.i175, ptr %28, align 4, !tbaa !201
  %ref.tmp71.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %28, i32 4
  store ptr %add.ptr.i, ptr %ref.tmp71.sroa.6.0..sroa_idx, align 4, !tbaa !201
  %ref.tmp71.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %28, i32 8
  store i32 %sub61, ptr %ref.tmp71.sroa.7.0..sroa_idx, align 4, !tbaa !184
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %28, i32 12
  br label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000EOS1_.exit

if.else.i:                                        ; preds = %for.body45
  %36 = load ptr, ptr %agg.result, align 4, !tbaa !201
  %__end_.promoted.fr.i.i.i.i.i = freeze ptr %36
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %__end_.promoted.fr.i.i.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 12
  %add.i.i = add nsw i32 %sub.ptr.div.i.i.i, 1
  %cmp.i.i.i177 = icmp ugt i32 %add.i.i, 357913941
  br i1 %cmp.i.i.i177, label %if.then.i.i.i, label %_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  invoke void @_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %agg.result) #31
          to label %.noexc unwind label %lpad72.loopexit.split-lp

.noexc:                                           ; preds = %if.then.i.i.i
  unreachable

_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i: ; preds = %if.else.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 12
  %cmp3.not.i.i.i = icmp ult i32 %sub.ptr.div.i.i.i.i, 178956970
  %mul.i.i.i = shl nuw nsw i32 %sub.ptr.div.i.i.i.i, 1
  %37 = call i32 @llvm.umax.i32(i32 %mul.i.i.i, i32 %add.i.i)
  %retval.0.i.i.i = select i1 %cmp3.not.i.i.i, i32 %37, i32 357913941
  %cmp.i17.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %cmp.i17.i.i, label %_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i
  %cmp.i.i.i.i.i = icmp ugt i32 %retval.0.i.i.i, 357913941
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorI10MemoryCopyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.else.i.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne190000v() #31
          to label %.noexc179 unwind label %lpad72.loopexit.split-lp

.noexc179:                                        ; preds = %if.then.i.i.i.i.i
  unreachable

_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorI10MemoryCopyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i: ; preds = %if.else.i.i.i
  %mul.i.i.i.i.i = mul nuw i32 %retval.0.i.i.i, 12
  %call.i5.i.i.i.i.i.i180 = invoke noalias noundef nonnull ptr @_Znwj(i32 noundef %mul.i.i.i.i.i) #32
          to label %_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i unwind label %lpad72.loopexit

_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorI10MemoryCopyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i, %_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i
  %storemerge.i.i.i = phi ptr [ null, %_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i ], [ %call.i5.i.i.i.i.i.i180, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorI10MemoryCopyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds %struct.MemoryCopy, ptr %storemerge.i.i.i, i32 %sub.ptr.div.i.i.i
  %add.ptr6.i.i.i = getelementptr inbounds %struct.MemoryCopy, ptr %storemerge.i.i.i, i32 %retval.0.i.i.i
  store ptr %add.ptr.i175, ptr %add.ptr.i.i.i, align 4, !tbaa !201
  %ref.tmp71.sroa.6.0.add.ptr.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 4
  store ptr %add.ptr.i, ptr %ref.tmp71.sroa.6.0.add.ptr.i.i.i.sroa_idx, align 4, !tbaa !201
  %ref.tmp71.sroa.7.0.add.ptr.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 8
  store i32 %sub61, ptr %ref.tmp71.sroa.7.0.add.ptr.i.i.i.sroa_idx, align 4, !tbaa !184
  %incdec.ptr.i8.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 12
  %sub.ptr.div.neg.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, -12
  %add.ptr.i24.i.i = getelementptr inbounds %struct.MemoryCopy, ptr %add.ptr.i.i.i, i32 %sub.ptr.div.neg.i.i.i
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %add.ptr.i24.i.i, ptr align 4 %__end_.promoted.fr.i.i.i.i.i, i32 %sub.ptr.sub.i.i.i, i1 false)
  store ptr %add.ptr.i24.i.i, ptr %agg.result, align 4, !tbaa !201
  store ptr %incdec.ptr.i8.i, ptr %__end_.i, align 4, !tbaa !201
  store ptr %add.ptr6.i.i.i, ptr %__end_cap_.i, align 4, !tbaa !201
  %tobool.not.i.i.i = icmp eq ptr %__end_.promoted.fr.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000EOS1_.exit, label %if.then.i25.i.i

if.then.i25.i.i:                                  ; preds = %_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i
  call void @_ZdlPvj(ptr noundef nonnull %__end_.promoted.fr.i.i.i.i.i, i32 noundef %sub.ptr.sub.i.i.i.i) #29
  br label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000EOS1_.exit

_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000EOS1_.exit: ; preds = %if.then.i178, %_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i, %if.then.i25.i.i
  %__end.0.i = phi ptr [ %incdec.ptr.i.i, %if.then.i178 ], [ %incdec.ptr.i8.i, %_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i ], [ %incdec.ptr.i8.i, %if.then.i25.i.i ]
  store ptr %__end.0.i, ptr %__end_.i, align 4, !tbaa !353
  %cmp43 = icmp ult i32 %add54, %add41
  br i1 %cmp43, label %for.body45, label %for.cond.loopexit, !llvm.loop !357

lpad72.loopexit:                                  ; preds = %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorI10MemoryCopyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %lpad72

lpad72.loopexit.split-lp:                         ; preds = %if.then.i.i.i, %if.then.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %lpad72

lpad72:                                           ; preds = %lpad72.loopexit.split-lp, %lpad72.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %lpad72.loopexit ], [ %lpad.loopexit.split-lp, %lpad72.loopexit.split-lp ]
  call void @_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %agg.result) #28
  br label %eh.resume

nrvo.skipdtor:                                    ; preds = %for.cond.loopexit, %if.end24
  ret void

eh.resume:                                        ; preds = %lpad72, %ehcleanup22, %ehcleanup6
  %.pn121.pn = phi { ptr, i32 } [ %lpad.phi, %lpad72 ], [ %.pn118.pn, %ehcleanup22 ], [ %.pn.pn, %ehcleanup6 ]
  resume { ptr, i32 } %.pn121.pn
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: mustprogress noreturn
define linkonce_odr hidden void @_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) local_unnamed_addr #13 comdat align 2 {
entry:
  tail call void @_ZNSt3__120__throw_length_errorB8ne190000EPKc(ptr noundef nonnull @.str.25.67) #31
  unreachable
}

; Function Attrs: mustprogress nounwind
define linkonce_odr hidden void @_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %this) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load ptr, ptr %this, align 4, !tbaa !349
  %cmp.not.i = icmp eq ptr %0, null
  br i1 %cmp.not.i, label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE16__destroy_vectorclB8ne190000Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %__end_.i.i.i = getelementptr inbounds i8, ptr %this, i32 4
  store ptr %0, ptr %__end_.i.i.i, align 4, !tbaa !353
  %__end_cap_.i.i.i = getelementptr inbounds i8, ptr %this, i32 8
  %1 = load ptr, ptr %__end_cap_.i.i.i, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @_ZdlPvj(ptr noundef nonnull %0, i32 noundef %sub.ptr.sub.i.i) #29
  br label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE16__destroy_vectorclB8ne190000Ev.exit

_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE16__destroy_vectorclB8ne190000Ev.exit: ; preds = %entry, %if.then.i
  ret void
}

; Function Attrs: mustprogress
define hidden void @_ZN10MemoryCopy13MergeAdjacentENSt3__16vectorIS_NS0_9allocatorIS_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.30") align 4 %agg.result, ptr noundef readonly captures(none) %microCopies) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load ptr, ptr %microCopies, align 4, !tbaa !349
  %coerce.val.pi.i.i = ptrtoint ptr %0 to i32
  %__end_.i = getelementptr inbounds i8, ptr %microCopies, i32 4
  %1 = load ptr, ptr %__end_.i, align 4, !tbaa !353
  %coerce.val.pi.i.i28 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i.i.i = sub i32 %coerce.val.pi.i.i28, %coerce.val.pi.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 12
  %cmp.i.i.i.i = icmp eq ptr %1, %0
  %2 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %sub.ptr.div.i.i.i, i1 false)
  %3 = shl nuw nsw i32 %2, 1
  %4 = sub nsw i32 62, %3
  %mul.i.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 %4
  tail call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_Lb0EEEvT1_SA_T0_NS_15iterator_traitsISA_E15difference_typeEb"(ptr noundef %0, ptr noundef %1, i32 noundef %mul.i.i.i, i1 noundef zeroext true)
  store ptr null, ptr %agg.result, align 4, !tbaa !349
  %__end_.i29 = getelementptr inbounds i8, ptr %agg.result, i32 4
  store ptr null, ptr %__end_.i29, align 4, !tbaa !353
  %__end_cap_.i = getelementptr inbounds i8, ptr %agg.result, i32 8
  store ptr null, ptr %__end_cap_.i, align 4, !tbaa !354
  %5 = load ptr, ptr %microCopies, align 4, !tbaa !349
  %6 = load ptr, ptr %__end_.i, align 4, !tbaa !353
  %cmp.i.i.not49 = icmp eq ptr %5, %6
  br i1 %cmp.i.i.not49, label %nrvo.skipdtor, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %7 = phi ptr [ %18, %if.end ], [ null, %entry ]
  %__begin1.sroa.0.050 = phi ptr [ %incdec.ptr.i, %if.end ], [ %5, %entry ]
  %8 = load ptr, ptr %agg.result, align 4, !tbaa !201
  %__end_.promoted.fr.i.i.i.i.i = freeze ptr %8
  %tobool.not = icmp eq ptr %7, %__end_.promoted.fr.i.i.i.i.i
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i32 -12
  %src.i = getelementptr inbounds i8, ptr %7, i32 -8
  %9 = load ptr, ptr %src.i, align 4, !tbaa !358
  %numBytes.i = getelementptr inbounds i8, ptr %7, i32 -4
  %10 = load i32, ptr %numBytes.i, align 4, !tbaa !360
  %add.ptr.i35 = getelementptr inbounds i8, ptr %9, i32 %10
  %11 = load ptr, ptr %add.ptr.i, align 4, !tbaa !361
  %add.ptr3.i = getelementptr inbounds i8, ptr %11, i32 %10
  %src4.i = getelementptr inbounds i8, ptr %__begin1.sroa.0.050, i32 4
  %12 = load ptr, ptr %src4.i, align 4, !tbaa !358
  %cmp.i = icmp eq ptr %add.ptr.i35, %12
  %13 = load ptr, ptr %__begin1.sroa.0.050, align 4
  %cmp6.i = icmp eq ptr %add.ptr3.i, %13
  %14 = select i1 %cmp.i, i1 %cmp6.i, i1 false
  br i1 %14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %numBytes = getelementptr inbounds i8, ptr %__begin1.sroa.0.050, i32 8
  %15 = load i32, ptr %numBytes, align 4, !tbaa !360
  %add = add i32 %15, %10
  store i32 %add, ptr %numBytes.i, align 4, !tbaa !360
  br label %if.end

lpad.loopexit:                                    ; preds = %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorI10MemoryCopyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i
  %lpad.loopexit47 = landingpad { ptr, i32 }
          cleanup
  br label %lpad

lpad.loopexit.split-lp:                           ; preds = %if.then.i.i.i, %if.then.i.i.i.i.i
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  br label %lpad

lpad:                                             ; preds = %lpad.loopexit.split-lp, %lpad.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit47, %lpad.loopexit ], [ %lpad.loopexit.split-lp48, %lpad.loopexit.split-lp ]
  tail call void @_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %agg.result) #28
  resume { ptr, i32 } %lpad.phi

if.else:                                          ; preds = %land.lhs.true, %for.body
  %16 = load ptr, ptr %__end_cap_.i, align 4, !tbaa !201
  %cmp.i39 = icmp ult ptr %7, %16
  br i1 %cmp.i39, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %__begin1.sroa.0.050, i32 12, i1 false), !tbaa.struct !362
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %7, i32 12
  br label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit

if.else.i:                                        ; preds = %if.else
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %__end_.promoted.fr.i.i.i.i.i to i32
  %sub.ptr.sub.i.i.i40 = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i41 = sdiv exact i32 %sub.ptr.sub.i.i.i40, 12
  %add.i.i = add nsw i32 %sub.ptr.div.i.i.i41, 1
  %cmp.i.i.i = icmp ugt i32 %add.i.i, 357913941
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  invoke void @_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev(ptr noundef nonnull align 4 dereferenceable(12) %agg.result) #31
          to label %.noexc unwind label %lpad.loopexit.split-lp

.noexc:                                           ; preds = %if.then.i.i.i
  unreachable

_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i: ; preds = %if.else.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 12
  %cmp3.not.i.i.i = icmp ult i32 %sub.ptr.div.i.i.i.i, 178956970
  %mul.i.i.i42 = shl nuw nsw i32 %sub.ptr.div.i.i.i.i, 1
  %17 = tail call i32 @llvm.umax.i32(i32 %mul.i.i.i42, i32 %add.i.i)
  %retval.0.i.i.i = select i1 %cmp3.not.i.i.i, i32 %17, i32 357913941
  %cmp.i17.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %cmp.i17.i.i, label %_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i
  %cmp.i.i.i.i.i = icmp ugt i32 %retval.0.i.i.i, 357913941
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorI10MemoryCopyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.else.i.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne190000v() #31
          to label %.noexc43 unwind label %lpad.loopexit.split-lp

.noexc43:                                         ; preds = %if.then.i.i.i.i.i
  unreachable

_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorI10MemoryCopyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i: ; preds = %if.else.i.i.i
  %mul.i.i.i.i.i = mul nuw i32 %retval.0.i.i.i, 12
  %call.i5.i.i.i.i.i.i44 = invoke noalias noundef nonnull ptr @_Znwj(i32 noundef %mul.i.i.i.i.i) #32
          to label %_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i unwind label %lpad.loopexit

_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorI10MemoryCopyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i, %_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i
  %storemerge.i.i.i = phi ptr [ null, %_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE11__recommendB8ne190000Ej.exit.i.i ], [ %call.i5.i.i.i.i.i.i44, %_ZNSt3__119__allocate_at_leastB8ne190000INS_9allocatorI10MemoryCopyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_j.exit.i.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds %struct.MemoryCopy, ptr %storemerge.i.i.i, i32 %sub.ptr.div.i.i.i41
  %add.ptr6.i.i.i = getelementptr inbounds %struct.MemoryCopy, ptr %storemerge.i.i.i, i32 %retval.0.i.i.i
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__begin1.sroa.0.050, i32 12, i1 false), !tbaa.struct !362
  %incdec.ptr.i8.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 12
  %sub.ptr.div.neg.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i40, -12
  %add.ptr.i24.i.i = getelementptr inbounds %struct.MemoryCopy, ptr %add.ptr.i.i.i, i32 %sub.ptr.div.neg.i.i.i
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %add.ptr.i24.i.i, ptr align 4 %__end_.promoted.fr.i.i.i.i.i, i32 %sub.ptr.sub.i.i.i40, i1 false)
  store ptr %add.ptr.i24.i.i, ptr %agg.result, align 4, !tbaa !201
  store ptr %incdec.ptr.i8.i, ptr %__end_.i29, align 4, !tbaa !201
  store ptr %add.ptr6.i.i.i, ptr %__end_cap_.i, align 4, !tbaa !201
  %tobool.not.i.i.i = icmp eq ptr %__end_.promoted.fr.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit, label %if.then.i25.i.i

if.then.i25.i.i:                                  ; preds = %_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i
  tail call void @_ZdlPvj(ptr noundef nonnull %__end_.promoted.fr.i.i.i.i.i, i32 noundef %sub.ptr.sub.i.i.i.i) #29
  br label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit

_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit: ; preds = %if.then.i, %_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i, %if.then.i25.i.i
  %__end.0.i = phi ptr [ %incdec.ptr.i.i, %if.then.i ], [ %incdec.ptr.i8.i, %_ZNSt3__114__split_bufferI10MemoryCopyRNS_9allocatorIS1_EEEC2EjjS4_.exit.i.i ], [ %incdec.ptr.i8.i, %if.then.i25.i.i ]
  store ptr %__end.0.i, ptr %__end_.i29, align 4, !tbaa !353
  br label %if.end

if.end:                                           ; preds = %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit, %if.then
  %18 = phi ptr [ %__end.0.i, %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE9push_backB8ne190000ERKS1_.exit ], [ %7, %if.then ]
  %incdec.ptr.i = getelementptr inbounds i8, ptr %__begin1.sroa.0.050, i32 12
  %cmp.i.i.not = icmp eq ptr %incdec.ptr.i, %6
  br i1 %cmp.i.i.not, label %nrvo.skipdtor, label %for.body

nrvo.skipdtor:                                    ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_Lb0EEEvT1_SA_T0_NS_15iterator_traitsISA_E15difference_typeEb"(ptr noundef %__first, ptr noundef %__last, i32 noundef %__depth, i1 noundef zeroext %__leftmost) unnamed_addr #25 {
entry:
  %__t.i.i.i.i269 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i.i261 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i34.i235 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i32.i236 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i31.i237 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i29.i238 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i.i239 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i234 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i34.i209 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i32.i210 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i31.i211 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i29.i212 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i.i213 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i34.i184 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i32.i185 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i31.i186 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i29.i187 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i.i188 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i34.i159 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i32.i160 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i31.i161 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i29.i162 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i.i163 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i34.i = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i32.i = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i31.i = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i29.i = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i.i = alloca %struct.MemoryCopy, align 4
  %__top.i.i.i.i = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i = alloca %struct.MemoryCopy, align 4
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %while.cond.outer.outer.backedge, %entry
  %__first.addr.0.ph.ph = phi ptr [ %__first, %entry ], [ %__first.addr.0.ph.ph.be, %while.cond.outer.outer.backedge ]
  %__last.addr.0.ph.ph = phi ptr [ %__last, %entry ], [ %__last.addr.0, %while.cond.outer.outer.backedge ]
  %__leftmost.addr.0.off0.ph.ph = phi i1 [ %__leftmost, %entry ], [ false, %while.cond.outer.outer.backedge ]
  %__depth.addr.0.ph.ph = phi i32 [ %__depth, %entry ], [ %dec, %while.cond.outer.outer.backedge ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.outer, %if.else64
  %__first.addr.0.ph = phi ptr [ %__first.addr.1.lcssa.i, %if.else64 ], [ %__first.addr.0.ph.ph, %while.cond.outer.outer ]
  %__last.addr.0.ph = phi ptr [ %__last.addr.0, %if.else64 ], [ %__last.addr.0.ph.ph, %while.cond.outer.outer ]
  %__depth.addr.0.ph = phi i32 [ %dec, %if.else64 ], [ %__depth.addr.0.ph.ph, %while.cond.outer.outer ]
  %sub.ptr.rhs.cast = ptrtoint ptr %__first.addr.0.ph to i32
  %0 = getelementptr i8, ptr %__first.addr.0.ph, i32 4
  %add.ptr26 = getelementptr inbounds i8, ptr %__first.addr.0.ph, i32 12
  %1 = getelementptr i8, ptr %__first.addr.0.ph, i32 16
  %add.ptr30 = getelementptr inbounds i8, ptr %__first.addr.0.ph, i32 24
  %2 = getelementptr i8, ptr %__first.addr.0.ph, i32 28
  %3 = getelementptr i8, ptr %__first.addr.0.ph, i32 -8
  %__pivot.sroa.9.0.__first.sroa_idx.i = getelementptr inbounds i8, ptr %__first.addr.0.ph, i32 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.then60
  %__last.addr.0 = phi ptr [ %add.ptr27.i, %if.then60 ], [ %__last.addr.0.ph, %while.cond.outer ]
  %__depth.addr.0 = phi i32 [ %dec, %if.then60 ], [ %__depth.addr.0.ph, %while.cond.outer ]
  %sub.ptr.lhs.cast = ptrtoint ptr %__last.addr.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  switch i32 %sub.ptr.div, label %sw.epilog [
    i32 0, label %cleanup78
    i32 1, label %cleanup78
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb4
    i32 5, label %sw.bb8
  ]

sw.bb1:                                           ; preds = %while.cond
  %4 = getelementptr i8, ptr %__last.addr.0, i32 -8
  %incdec.ptr.val = load ptr, ptr %4, align 4, !tbaa !358
  %.val133 = load ptr, ptr %0, align 4, !tbaa !358
  %cmp.i = icmp ult ptr %incdec.ptr.val, %.val133
  br i1 %cmp.i, label %if.then, label %cleanup78

if.then:                                          ; preds = %sw.bb1
  %incdec.ptr = getelementptr inbounds i8, ptr %__last.addr.0, i32 -12
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, ptr noundef nonnull align 4 dereferenceable(12) %incdec.ptr, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %incdec.ptr, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i)
  br label %cleanup78

sw.bb2:                                           ; preds = %while.cond
  %incdec.ptr3 = getelementptr inbounds i8, ptr %__last.addr.0, i32 -12
  tail call fastcc void @"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_"(ptr noundef %__first.addr.0.ph, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %incdec.ptr3)
  br label %cleanup78

sw.bb4:                                           ; preds = %while.cond
  %incdec.ptr7 = getelementptr inbounds i8, ptr %__last.addr.0, i32 -12
  tail call fastcc void @"_ZNSt3__17__sort4B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_SA_SA_SA_T0_"(ptr noundef %__first.addr.0.ph, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr30, ptr noundef nonnull %incdec.ptr7)
  br label %cleanup78

sw.bb8:                                           ; preds = %while.cond
  %add.ptr11 = getelementptr inbounds i8, ptr %__first.addr.0.ph, i32 36
  %incdec.ptr12 = getelementptr inbounds i8, ptr %__last.addr.0, i32 -12
  tail call fastcc void @"_ZNSt3__17__sort5B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_SA_SA_SA_SA_T0_"(ptr noundef %__first.addr.0.ph, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr30, ptr noundef nonnull %add.ptr11, ptr noundef nonnull %incdec.ptr12)
  br label %cleanup78

sw.epilog:                                        ; preds = %while.cond
  %cmp = icmp slt i32 %sub.ptr.sub, 288
  br i1 %cmp, label %if.then13, label %if.end16

if.then13:                                        ; preds = %sw.epilog
  %cmp.i134 = icmp eq ptr %__first.addr.0.ph, %__last.addr.0
  %cmp1.not6.i = icmp eq ptr %add.ptr26, %__last.addr.0
  %or.cond.i = select i1 %cmp.i134, i1 true, i1 %cmp1.not6.i
  br i1 %__leftmost.addr.0.off0.ph.ph, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then13
  br i1 %or.cond.i, label %cleanup78, label %for.body.i

for.body.i:                                       ; preds = %if.then14, %if.end9.i
  %storemerge8.i = phi ptr [ %storemerge.i, %if.end9.i ], [ %add.ptr26, %if.then14 ]
  %__first.pn7.i = phi ptr [ %storemerge8.i, %if.end9.i ], [ %__first.addr.0.ph, %if.then14 ]
  %5 = getelementptr i8, ptr %__first.pn7.i, i32 16
  %storemerge.val.i = load ptr, ptr %5, align 4, !tbaa !201
  %6 = getelementptr i8, ptr %__first.pn7.i, i32 4
  %__first.pn.val.i = load ptr, ptr %6, align 4, !tbaa !358
  %cmp.i.i = icmp ult ptr %storemerge.val.i, %__first.pn.val.i
  br i1 %cmp.i.i, label %if.then3.i, label %if.end9.i

if.then3.i:                                       ; preds = %for.body.i
  %__t.sroa.0.0.copyload.i = load ptr, ptr %storemerge8.i, align 4, !tbaa !201
  %__t.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %__first.pn7.i, i32 20
  %__t.sroa.5.0.copyload.i = load i32, ptr %__t.sroa.5.0..sroa_idx.i, align 4, !tbaa !184
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i, %if.then3.i
  %__k.0.i = phi ptr [ %__first.pn7.i, %if.then3.i ], [ %incdec.ptr7.i, %land.rhs.i ]
  %__j.0.i = phi ptr [ %storemerge8.i, %if.then3.i ], [ %__k.0.i, %land.rhs.i ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__j.0.i, ptr noundef nonnull align 4 dereferenceable(12) %__k.0.i, i32 12, i1 false), !tbaa.struct !362
  %cmp6.not.i = icmp eq ptr %__k.0.i, %__first.addr.0.ph
  br i1 %cmp6.not.i, label %do.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %__k.0.i, i32 -12
  %7 = getelementptr i8, ptr %__k.0.i, i32 -8
  %incdec.ptr7.val.i = load ptr, ptr %7, align 4, !tbaa !358
  %cmp.i21.i = icmp ult ptr %storemerge.val.i, %incdec.ptr7.val.i
  br i1 %cmp.i21.i, label %do.body.i, label %do.end.i, !llvm.loop !363

do.end.i:                                         ; preds = %land.rhs.i, %do.body.i
  %__k.0.lcssa.i = phi ptr [ %__first.addr.0.ph, %do.body.i ], [ %__k.0.i, %land.rhs.i ]
  store ptr %__t.sroa.0.0.copyload.i, ptr %__k.0.lcssa.i, align 4, !tbaa !201
  %__t.sroa.4.0.__k.0..sroa_idx.i = getelementptr inbounds i8, ptr %__k.0.lcssa.i, i32 4
  store ptr %storemerge.val.i, ptr %__t.sroa.4.0.__k.0..sroa_idx.i, align 4, !tbaa !201
  %__t.sroa.5.0.__k.0..sroa_idx.i = getelementptr inbounds i8, ptr %__k.0.lcssa.i, i32 8
  store i32 %__t.sroa.5.0.copyload.i, ptr %__t.sroa.5.0.__k.0..sroa_idx.i, align 4, !tbaa !184
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %for.body.i
  %storemerge.i = getelementptr inbounds i8, ptr %storemerge8.i, i32 12
  %cmp1.not.i = icmp eq ptr %storemerge.i, %__last.addr.0
  br i1 %cmp1.not.i, label %cleanup78, label %for.body.i, !llvm.loop !364

if.else:                                          ; preds = %if.then13
  br i1 %or.cond.i, label %cleanup78, label %for.body.i138

for.body.i138:                                    ; preds = %if.else, %if.end8.i
  %storemerge8.i139 = phi ptr [ %storemerge.i144, %if.end8.i ], [ %add.ptr26, %if.else ]
  %__first.pn7.i140 = phi ptr [ %storemerge8.i139, %if.end8.i ], [ %__first.addr.0.ph, %if.else ]
  %8 = getelementptr i8, ptr %__first.pn7.i140, i32 16
  %storemerge.val.i141 = load ptr, ptr %8, align 4, !tbaa !201
  %9 = getelementptr i8, ptr %__first.pn7.i140, i32 4
  %__first.pn.val.i142 = load ptr, ptr %9, align 4, !tbaa !358
  %cmp.i.i143 = icmp ult ptr %storemerge.val.i141, %__first.pn.val.i142
  br i1 %cmp.i.i143, label %if.then4.i, label %if.end8.i

if.then4.i:                                       ; preds = %for.body.i138
  %__t.sroa.0.0.copyload.i145 = load ptr, ptr %storemerge8.i139, align 4, !tbaa !201
  %__t.sroa.5.0..sroa_idx.i146 = getelementptr inbounds i8, ptr %__first.pn7.i140, i32 20
  %__t.sroa.5.0.copyload.i147 = load i32, ptr %__t.sroa.5.0..sroa_idx.i146, align 4, !tbaa !184
  br label %do.body.i148

do.body.i148:                                     ; preds = %do.body.i148, %if.then4.i
  %__k.0.i149 = phi ptr [ %__first.pn7.i140, %if.then4.i ], [ %incdec.ptr.i, %do.body.i148 ]
  %__j.0.i150 = phi ptr [ %storemerge8.i139, %if.then4.i ], [ %__k.0.i149, %do.body.i148 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__j.0.i150, ptr noundef nonnull align 4 dereferenceable(12) %__k.0.i149, i32 12, i1 false), !tbaa.struct !362
  %incdec.ptr.i = getelementptr inbounds i8, ptr %__k.0.i149, i32 -12
  %10 = getelementptr i8, ptr %__k.0.i149, i32 -8
  %incdec.ptr.val.i = load ptr, ptr %10, align 4, !tbaa !358
  %cmp.i17.i = icmp ult ptr %storemerge.val.i141, %incdec.ptr.val.i
  br i1 %cmp.i17.i, label %do.body.i148, label %do.end.i151, !llvm.loop !365

do.end.i151:                                      ; preds = %do.body.i148
  store ptr %__t.sroa.0.0.copyload.i145, ptr %__k.0.i149, align 4, !tbaa !201
  %__t.sroa.4.0.__k.0..sroa_idx.i152 = getelementptr inbounds i8, ptr %__k.0.i149, i32 4
  store ptr %storemerge.val.i141, ptr %__t.sroa.4.0.__k.0..sroa_idx.i152, align 4, !tbaa !201
  %__t.sroa.5.0.__k.0..sroa_idx.i153 = getelementptr inbounds i8, ptr %__k.0.i149, i32 8
  store i32 %__t.sroa.5.0.copyload.i147, ptr %__t.sroa.5.0.__k.0..sroa_idx.i153, align 4, !tbaa !184
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i151, %for.body.i138
  %storemerge.i144 = getelementptr inbounds i8, ptr %storemerge8.i139, i32 12
  %cmp2.not.i = icmp eq ptr %storemerge.i144, %__last.addr.0
  br i1 %cmp2.not.i, label %cleanup78, label %for.body.i138, !llvm.loop !366

if.end16:                                         ; preds = %sw.epilog
  %cmp17 = icmp eq i32 %__depth.addr.0, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %cmp.i154 = icmp eq ptr %__first.addr.0.ph, %__last.addr.0
  br i1 %cmp.i154, label %cleanup78, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then18
  %sub.i.i.i = add nsw i32 %sub.ptr.div, -2
  %div8.i.i.i = lshr i32 %sub.i.i.i, 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %"_ZNSt3__111__sift_downB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit82.i.i", %if.then.i.i.i
  %__start.01.i.i.i = phi i32 [ %div8.i.i.i, %if.then.i.i.i ], [ %dec.i.i.i, %"_ZNSt3__111__sift_downB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit82.i.i" ]
  %add.ptr.i.i.i = getelementptr inbounds %struct.MemoryCopy, ptr %__first.addr.0.ph, i32 %__start.01.i.i.i
  %cmp1.i36.i.i = icmp slt i32 %div8.i.i.i, %__start.01.i.i.i
  br i1 %cmp1.i36.i.i, label %"_ZNSt3__111__sift_downB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit82.i.i", label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %mul.i.i.i = shl nsw i32 %__start.01.i.i.i, 1
  %add.i.i.i = or disjoint i32 %mul.i.i.i, 1
  %add.ptr.i37.i.i = getelementptr inbounds %struct.MemoryCopy, ptr %__first.addr.0.ph, i32 %add.i.i.i
  %add2.i.i.i = add nsw i32 %mul.i.i.i, 2
  %cmp3.i38.i.i = icmp slt i32 %add2.i.i.i, %sub.ptr.div
  br i1 %cmp3.i38.i.i, label %land.lhs.true.i75.i.i, label %if.end6.i39.i.i

land.lhs.true.i75.i.i:                            ; preds = %if.end.i.i.i
  %11 = getelementptr i8, ptr %add.ptr.i37.i.i, i32 4
  %add.ptr.val.i76.i.i = load ptr, ptr %11, align 4, !tbaa !358
  %12 = getelementptr i8, ptr %add.ptr.i37.i.i, i32 16
  %add.ptr4.val.i77.i.i = load ptr, ptr %12, align 4, !tbaa !358
  %cmp.i.i78.i.i = icmp ult ptr %add.ptr.val.i76.i.i, %add.ptr4.val.i77.i.i
  %spec.select.idx.i79.i.i = select i1 %cmp.i.i78.i.i, i32 12, i32 0
  %spec.select.i80.i.i = getelementptr inbounds i8, ptr %add.ptr.i37.i.i, i32 %spec.select.idx.i79.i.i
  %spec.select13.i81.i.i = select i1 %cmp.i.i78.i.i, i32 %add2.i.i.i, i32 %add.i.i.i
  br label %if.end6.i39.i.i

if.end6.i39.i.i:                                  ; preds = %land.lhs.true.i75.i.i, %if.end.i.i.i
  %__child_i.0.i40.i.i = phi ptr [ %add.ptr.i37.i.i, %if.end.i.i.i ], [ %spec.select.i80.i.i, %land.lhs.true.i75.i.i ]
  %__child.0.i41.i.i = phi i32 [ %add.i.i.i, %if.end.i.i.i ], [ %spec.select13.i81.i.i, %land.lhs.true.i75.i.i ]
  %13 = getelementptr i8, ptr %__child_i.0.i40.i.i, i32 4
  %.val50.i42.i.i = load ptr, ptr %13, align 4, !tbaa !358
  %14 = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %.val51.i43.i.i = load ptr, ptr %14, align 4, !tbaa !201
  %cmp.i52.i44.i.i = icmp ult ptr %.val50.i42.i.i, %.val51.i43.i.i
  br i1 %cmp.i52.i44.i.i, label %"_ZNSt3__111__sift_downB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit82.i.i", label %if.end9.i45.i.i

if.end9.i45.i.i:                                  ; preds = %if.end6.i39.i.i
  %__top.sroa.0.0.copyload.i46.i.i = load ptr, ptr %add.ptr.i.i.i, align 4, !tbaa !201
  %__top.sroa.5.0..sroa_idx.i47.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 8
  %__top.sroa.5.0.copyload.i48.i.i = load i32, ptr %__top.sroa.5.0..sroa_idx.i47.i.i, align 4, !tbaa !184
  br label %do.body.i49.i.i

do.body.i49.i.i:                                  ; preds = %do.cond.i60.i.i, %if.end9.i45.i.i
  %__child_i.1.i50.i.i = phi ptr [ %__child_i.0.i40.i.i, %if.end9.i45.i.i ], [ %__child_i.2.i61.i.i, %do.cond.i60.i.i ]
  %__start.addr.0.i51.i.i = phi ptr [ %add.ptr.i.i.i, %if.end9.i45.i.i ], [ %__child_i.1.i50.i.i, %do.cond.i60.i.i ]
  %__child.1.i52.i.i = phi i32 [ %__child.0.i41.i.i, %if.end9.i45.i.i ], [ %__child.2.i62.i.i, %do.cond.i60.i.i ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__start.addr.0.i51.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__child_i.1.i50.i.i, i32 12, i1 false), !tbaa.struct !362
  %cmp14.i53.i.i = icmp slt i32 %div8.i.i.i, %__child.1.i52.i.i
  br i1 %cmp14.i53.i.i, label %do.end.i65.i.i, label %if.end16.i54.i.i

if.end16.i54.i.i:                                 ; preds = %do.body.i49.i.i
  %mul17.i55.i.i = shl nsw i32 %__child.1.i52.i.i, 1
  %add18.i56.i.i = or disjoint i32 %mul17.i55.i.i, 1
  %add.ptr19.i57.i.i = getelementptr inbounds %struct.MemoryCopy, ptr %__first.addr.0.ph, i32 %add18.i56.i.i
  %add20.i58.i.i = add nsw i32 %mul17.i55.i.i, 2
  %cmp21.i59.i.i = icmp slt i32 %add20.i58.i.i, %sub.ptr.div
  br i1 %cmp21.i59.i.i, label %land.lhs.true22.i68.i.i, label %do.cond.i60.i.i

land.lhs.true22.i68.i.i:                          ; preds = %if.end16.i54.i.i
  %15 = getelementptr i8, ptr %add.ptr19.i57.i.i, i32 4
  %add.ptr19.val.i69.i.i = load ptr, ptr %15, align 4, !tbaa !358
  %16 = getelementptr i8, ptr %add.ptr19.i57.i.i, i32 16
  %add.ptr23.val.i70.i.i = load ptr, ptr %16, align 4, !tbaa !358
  %cmp.i53.i71.i.i = icmp ult ptr %add.ptr19.val.i69.i.i, %add.ptr23.val.i70.i.i
  %spec.select14.idx.i72.i.i = select i1 %cmp.i53.i71.i.i, i32 12, i32 0
  %spec.select14.i73.i.i = getelementptr inbounds i8, ptr %add.ptr19.i57.i.i, i32 %spec.select14.idx.i72.i.i
  %spec.select15.i74.i.i = select i1 %cmp.i53.i71.i.i, i32 %add20.i58.i.i, i32 %add18.i56.i.i
  br label %do.cond.i60.i.i

do.cond.i60.i.i:                                  ; preds = %land.lhs.true22.i68.i.i, %if.end16.i54.i.i
  %__child_i.2.i61.i.i = phi ptr [ %add.ptr19.i57.i.i, %if.end16.i54.i.i ], [ %spec.select14.i73.i.i, %land.lhs.true22.i68.i.i ]
  %__child.2.i62.i.i = phi i32 [ %add18.i56.i.i, %if.end16.i54.i.i ], [ %spec.select15.i74.i.i, %land.lhs.true22.i68.i.i ]
  %17 = getelementptr i8, ptr %__child_i.2.i61.i.i, i32 4
  %.val.i63.i.i = load ptr, ptr %17, align 4, !tbaa !358
  %cmp.i54.i64.i.i = icmp ult ptr %.val.i63.i.i, %.val51.i43.i.i
  br i1 %cmp.i54.i64.i.i, label %do.end.i65.i.i, label %do.body.i49.i.i, !llvm.loop !367

do.end.i65.i.i:                                   ; preds = %do.cond.i60.i.i, %do.body.i49.i.i
  store ptr %__top.sroa.0.0.copyload.i46.i.i, ptr %__child_i.1.i50.i.i, align 4, !tbaa !201
  %__top.sroa.4.0..sroa_idx2.i66.i.i = getelementptr inbounds i8, ptr %__child_i.1.i50.i.i, i32 4
  store ptr %.val51.i43.i.i, ptr %__top.sroa.4.0..sroa_idx2.i66.i.i, align 4, !tbaa !201
  %__top.sroa.5.0..sroa_idx4.i67.i.i = getelementptr inbounds i8, ptr %__child_i.1.i50.i.i, i32 8
  store i32 %__top.sroa.5.0.copyload.i48.i.i, ptr %__top.sroa.5.0..sroa_idx4.i67.i.i, align 4, !tbaa !184
  br label %"_ZNSt3__111__sift_downB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit82.i.i"

"_ZNSt3__111__sift_downB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit82.i.i": ; preds = %do.end.i65.i.i, %if.end6.i39.i.i, %for.body.i.i.i
  %dec.i.i.i = add nsw i32 %__start.01.i.i.i, -1
  %cmp1.not.i.i.i = icmp eq i32 %__start.01.i.i.i, 0
  br i1 %cmp1.not.i.i.i, label %for.body.preheader.i.i.i, label %for.body.i.i.i, !llvm.loop !368

for.body.preheader.i.i.i:                         ; preds = %"_ZNSt3__111__sift_downB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit82.i.i"
  %sub.ptr.div4.i.i.i = udiv exact i32 %sub.ptr.sub, 12
  br label %for.body.i25.i.i

for.body.i25.i.i:                                 ; preds = %"_ZNSt3__110__pop_heapB8ne190000INS_17_ClassicAlgPolicyEZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i", %for.body.preheader.i.i.i
  %__n.03.i.i.i = phi i32 [ %dec.i26.i.i, %"_ZNSt3__110__pop_heapB8ne190000INS_17_ClassicAlgPolicyEZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i" ], [ %sub.ptr.div4.i.i.i, %for.body.preheader.i.i.i ]
  %__last.addr.02.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %"_ZNSt3__110__pop_heapB8ne190000INS_17_ClassicAlgPolicyEZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i" ], [ %__last.addr.0, %for.body.preheader.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr %__top.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__top.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, i32 12, i1 false), !tbaa.struct !362
  %sub.i.i.i.i.i = add nsw i32 %__n.03.i.i.i, -2
  %div15.i.i.i.i.i = lshr i32 %sub.i.i.i.i.i, 1
  br label %while.cond.i.i.i.i.i

while.cond.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i, %for.body.i25.i.i
  %__child_i.0.i.i.i.i.i = phi ptr [ %__first.addr.0.ph, %for.body.i25.i.i ], [ %__child_i.1.i.i.i.i.i, %if.end.i.i.i.i.i ]
  %__child.0.i.i.i.i.i = phi i32 [ 0, %for.body.i25.i.i ], [ %__child.1.i.i.i.i.i, %if.end.i.i.i.i.i ]
  %18 = getelementptr %struct.MemoryCopy, ptr %__child_i.0.i.i.i.i.i, i32 %__child.0.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %18, i32 12
  %mul.i.i.i.i.i = shl nsw i32 %__child.0.i.i.i.i.i, 1
  %add1.i.i.i.i.i = or disjoint i32 %mul.i.i.i.i.i, 1
  %add2.i.i.i.i.i = add nsw i32 %mul.i.i.i.i.i, 2
  %cmp.i.i.i.i.i = icmp slt i32 %add2.i.i.i.i.i, %__n.03.i.i.i
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %while.cond.i.i.i.i.i
  %19 = getelementptr i8, ptr %18, i32 16
  %add.ptr.val.i.i.i.i.i = load ptr, ptr %19, align 4, !tbaa !358
  %20 = getelementptr i8, ptr %18, i32 28
  %add.ptr3.val.i.i.i.i.i = load ptr, ptr %20, align 4, !tbaa !358
  %cmp.i.i.i.i.i.i = icmp ult ptr %add.ptr.val.i.i.i.i.i, %add.ptr3.val.i.i.i.i.i
  %incdec.ptr.i.i.i.i.i = getelementptr i8, ptr %18, i32 24
  %spec.select.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i, ptr %incdec.ptr.i.i.i.i.i, ptr %add.ptr.i.i.i.i.i
  %spec.select3.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i, i32 %add2.i.i.i.i.i, i32 %add1.i.i.i.i.i
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i, %while.cond.i.i.i.i.i
  %__child_i.1.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %while.cond.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %land.lhs.true.i.i.i.i.i ]
  %__child.1.i.i.i.i.i = phi i32 [ %add1.i.i.i.i.i, %while.cond.i.i.i.i.i ], [ %spec.select3.i.i.i.i.i, %land.lhs.true.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__child_i.0.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__child_i.1.i.i.i.i.i, i32 12, i1 false), !tbaa.struct !362
  %cmp5.i.i.i.i.i = icmp sgt i32 %__child.1.i.i.i.i.i, %div15.i.i.i.i.i
  br i1 %cmp5.i.i.i.i.i, label %"_ZNSt3__117__floyd_sift_downB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EET1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE.exit.i.i.i.i", label %while.cond.i.i.i.i.i, !llvm.loop !369

"_ZNSt3__117__floyd_sift_downB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EET1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE.exit.i.i.i.i": ; preds = %if.end.i.i.i.i.i
  %incdec.ptr.i.i.i.i = getelementptr inbounds i8, ptr %__last.addr.02.i.i.i, i32 -12
  %cmp2.i.i.i.i = icmp eq ptr %__child_i.1.i.i.i.i.i, %incdec.ptr.i.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then3.i.i.i.i, label %if.else.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %"_ZNSt3__117__floyd_sift_downB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EET1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__child_i.1.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__top.i.i.i.i, i32 12, i1 false), !tbaa.struct !362
  br label %"_ZNSt3__110__pop_heapB8ne190000INS_17_ClassicAlgPolicyEZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i"

if.else.i.i.i.i:                                  ; preds = %"_ZNSt3__117__floyd_sift_downB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EET1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE.exit.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__child_i.1.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %incdec.ptr.i.i.i.i, i32 12, i1 false), !tbaa.struct !362
  %incdec.ptr5.i.i.i.i = getelementptr inbounds i8, ptr %__child_i.1.i.i.i.i.i, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %incdec.ptr.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__top.i.i.i.i, i32 12, i1 false), !tbaa.struct !362
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %incdec.ptr5.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast
  %cmp.i14.i.i.i.i = icmp sgt i32 %sub.ptr.sub.i.i.i.i, 12
  br i1 %cmp.i14.i.i.i.i, label %if.then.i.i.i.i.i, label %"_ZNSt3__110__pop_heapB8ne190000INS_17_ClassicAlgPolicyEZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i"

if.then.i.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  %sub.ptr.div.i.i.i.i = udiv exact i32 %sub.ptr.sub.i.i.i.i, 12
  %sub.i15.i.i.i.i = add nsw i32 %sub.ptr.div.i.i.i.i, -2
  %div19.i.i.i.i.i = lshr i32 %sub.i15.i.i.i.i, 1
  %add.ptr.i16.i.i.i.i = getelementptr inbounds %struct.MemoryCopy, ptr %__first.addr.0.ph, i32 %div19.i.i.i.i.i
  %21 = getelementptr i8, ptr %add.ptr.i16.i.i.i.i, i32 4
  %add.ptr.val.i17.i.i.i.i = load ptr, ptr %21, align 4, !tbaa !358
  %22 = getelementptr i8, ptr %__child_i.1.i.i.i.i.i, i32 4
  %incdec.ptr.val.i.i.i.i.i = load ptr, ptr %22, align 4, !tbaa !201
  %cmp.i.i18.i.i.i.i = icmp ult ptr %add.ptr.val.i17.i.i.i.i, %incdec.ptr.val.i.i.i.i.i
  br i1 %cmp.i.i18.i.i.i.i, label %if.then1.i.i.i.i.i, label %"_ZNSt3__110__pop_heapB8ne190000INS_17_ClassicAlgPolicyEZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i"

if.then1.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  %__t.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %__child_i.1.i.i.i.i.i, align 4, !tbaa !201
  %__t.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %__child_i.1.i.i.i.i.i, i32 8
  %__t.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %__t.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !184
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %if.end.i20.i.i.i.i, %if.then1.i.i.i.i.i
  %__ptr.0.i.i.i.i.i = phi ptr [ %add.ptr.i16.i.i.i.i, %if.then1.i.i.i.i.i ], [ %add.ptr8.i.i.i.i.i, %if.end.i20.i.i.i.i ]
  %__last.addr.0.i.i.i.i.i = phi ptr [ %__child_i.1.i.i.i.i.i, %if.then1.i.i.i.i.i ], [ %__ptr.0.i.i.i.i.i, %if.end.i20.i.i.i.i ]
  %__len.addr.0.i.i.i.i.i = phi i32 [ %div19.i.i.i.i.i, %if.then1.i.i.i.i.i ], [ %div720.i.i.i.i.i, %if.end.i20.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__last.addr.0.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__ptr.0.i.i.i.i.i, i32 12, i1 false), !tbaa.struct !362
  %cmp4.i.i.i.i.i = icmp eq i32 %__len.addr.0.i.i.i.i.i, 0
  br i1 %cmp4.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end.i20.i.i.i.i

if.end.i20.i.i.i.i:                               ; preds = %do.body.i.i.i.i.i
  %sub6.i.i.i.i.i = add nsw i32 %__len.addr.0.i.i.i.i.i, -1
  %div720.i.i.i.i.i = lshr i32 %sub6.i.i.i.i.i, 1
  %add.ptr8.i.i.i.i.i = getelementptr inbounds %struct.MemoryCopy, ptr %__first.addr.0.ph, i32 %div720.i.i.i.i.i
  %23 = getelementptr i8, ptr %add.ptr8.i.i.i.i.i, i32 4
  %add.ptr8.val.i.i.i.i.i = load ptr, ptr %23, align 4, !tbaa !358
  %cmp.i21.i.i.i.i.i = icmp ult ptr %add.ptr8.val.i.i.i.i.i, %incdec.ptr.val.i.i.i.i.i
  br i1 %cmp.i21.i.i.i.i.i, label %do.body.i.i.i.i.i, label %do.end.i.i.i.i.i, !llvm.loop !370

do.end.i.i.i.i.i:                                 ; preds = %if.end.i20.i.i.i.i, %do.body.i.i.i.i.i
  store ptr %__t.sroa.0.0.copyload.i.i.i.i.i, ptr %__ptr.0.i.i.i.i.i, align 4, !tbaa !201
  %__t.sroa.4.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds i8, ptr %__ptr.0.i.i.i.i.i, i32 4
  store ptr %incdec.ptr.val.i.i.i.i.i, ptr %__t.sroa.4.0..sroa_idx2.i.i.i.i.i, align 4, !tbaa !201
  %__t.sroa.5.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds i8, ptr %__ptr.0.i.i.i.i.i, i32 8
  store i32 %__t.sroa.5.0.copyload.i.i.i.i.i, ptr %__t.sroa.5.0..sroa_idx4.i.i.i.i.i, align 4, !tbaa !184
  br label %"_ZNSt3__110__pop_heapB8ne190000INS_17_ClassicAlgPolicyEZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8ne190000INS_17_ClassicAlgPolicyEZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i": ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i, %if.else.i.i.i.i, %if.then3.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr %__top.i.i.i.i)
  %dec.i26.i.i = add nsw i32 %__n.03.i.i.i, -1
  %cmp.i27.i.i = icmp sgt i32 %__n.03.i.i.i, 2
  br i1 %cmp.i27.i.i, label %for.body.i25.i.i, label %cleanup78, !llvm.loop !371

if.end20:                                         ; preds = %if.end16
  %dec = add nsw i32 %__depth.addr.0, -1
  %div132 = lshr i32 %sub.ptr.div, 1
  %cmp21 = icmp ugt i32 %sub.ptr.sub, 1536
  %add.ptr23 = getelementptr inbounds %struct.MemoryCopy, ptr %__first.addr.0.ph, i32 %div132
  %add.ptr24 = getelementptr inbounds i8, ptr %__last.addr.0, i32 -12
  %24 = getelementptr i8, ptr %__last.addr.0, i32 -8
  %.val21.i = load ptr, ptr %24, align 4, !tbaa !358
  br i1 %cmp21, label %if.then22, label %if.else41

if.then22:                                        ; preds = %if.end20
  %25 = getelementptr i8, ptr %add.ptr23, i32 4
  %__y.val.i = load ptr, ptr %25, align 4, !tbaa !358
  %__x.val.i = load ptr, ptr %0, align 4, !tbaa !358
  %cmp.i.i155 = icmp ult ptr %__y.val.i, %__x.val.i
  %cmp.i30.i = icmp ult ptr %.val21.i, %__y.val.i
  br i1 %cmp.i.i155, label %if.end6.i, label %if.then.i

if.then.i:                                        ; preds = %if.then22
  br i1 %cmp.i30.i, label %if.end.i, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit"

if.end.i:                                         ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i.i)
  %.val23.i = load ptr, ptr %25, align 4, !tbaa !358
  %.val24.i = load ptr, ptr %0, align 4, !tbaa !358
  %cmp.i28.i = icmp ult ptr %.val23.i, %.val24.i
  br i1 %cmp.i28.i, label %if.then4.i157, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit"

if.then4.i157:                                    ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i29.i)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29.i, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i29.i)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit"

if.end6.i:                                        ; preds = %if.then22
  br i1 %cmp.i30.i, label %if.then8.i, label %if.end9.i158

if.then8.i:                                       ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i31.i)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31.i, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i31.i)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit"

if.end9.i158:                                     ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i32.i)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32.i, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i32.i)
  %.val.i = load ptr, ptr %24, align 4, !tbaa !358
  %.val20.i = load ptr, ptr %25, align 4, !tbaa !358
  %cmp.i33.i = icmp ult ptr %.val.i, %.val20.i
  br i1 %cmp.i33.i, label %if.then11.i, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit"

if.then11.i:                                      ; preds = %if.end9.i158
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i34.i)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34.i, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i34.i)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit"

"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit": ; preds = %if.then.i, %if.end.i, %if.then4.i157, %if.then8.i, %if.end9.i158, %if.then11.i
  %sub = add nsw i32 %div132, -1
  %add.ptr27 = getelementptr inbounds %struct.MemoryCopy, ptr %__first.addr.0.ph, i32 %sub
  %add.ptr28 = getelementptr inbounds i8, ptr %__last.addr.0, i32 -24
  %26 = getelementptr i8, ptr %add.ptr27, i32 4
  %__y.val.i164 = load ptr, ptr %26, align 4, !tbaa !358
  %__x.val.i165 = load ptr, ptr %1, align 4, !tbaa !358
  %cmp.i.i166 = icmp ult ptr %__y.val.i164, %__x.val.i165
  %27 = getelementptr i8, ptr %__last.addr.0, i32 -20
  %.val21.i167 = load ptr, ptr %27, align 4, !tbaa !358
  %cmp.i30.i168 = icmp ult ptr %.val21.i167, %__y.val.i164
  br i1 %cmp.i.i166, label %if.end6.i176, label %if.then.i169

if.then.i169:                                     ; preds = %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit"
  br i1 %cmp.i30.i168, label %if.end.i171, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit183"

if.end.i171:                                      ; preds = %if.then.i169
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i.i163)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i163, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr28, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr28, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i163, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i.i163)
  %.val23.i172 = load ptr, ptr %26, align 4, !tbaa !358
  %.val24.i173 = load ptr, ptr %1, align 4, !tbaa !358
  %cmp.i28.i174 = icmp ult ptr %.val23.i172, %.val24.i173
  br i1 %cmp.i28.i174, label %if.then4.i175, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit183"

if.then4.i175:                                    ; preds = %if.end.i171
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i29.i162)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29.i162, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr26, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr26, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29.i162, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i29.i162)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit183"

if.end6.i176:                                     ; preds = %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit"
  br i1 %cmp.i30.i168, label %if.then8.i182, label %if.end9.i177

if.then8.i182:                                    ; preds = %if.end6.i176
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i31.i161)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31.i161, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr26, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr26, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr28, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr28, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31.i161, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i31.i161)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit183"

if.end9.i177:                                     ; preds = %if.end6.i176
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i32.i160)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32.i160, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr26, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr26, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32.i160, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i32.i160)
  %.val.i178 = load ptr, ptr %27, align 4, !tbaa !358
  %.val20.i179 = load ptr, ptr %26, align 4, !tbaa !358
  %cmp.i33.i180 = icmp ult ptr %.val.i178, %.val20.i179
  br i1 %cmp.i33.i180, label %if.then11.i181, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit183"

if.then11.i181:                                   ; preds = %if.end9.i177
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i34.i159)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34.i159, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr28, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr28, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34.i159, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i34.i159)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit183"

"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit183": ; preds = %if.then.i169, %if.end.i171, %if.then4.i175, %if.then8.i182, %if.end9.i177, %if.then11.i181
  %add = add nuw nsw i32 %div132, 1
  %add.ptr31 = getelementptr inbounds %struct.MemoryCopy, ptr %__first.addr.0.ph, i32 %add
  %add.ptr32 = getelementptr inbounds i8, ptr %__last.addr.0, i32 -36
  %28 = getelementptr i8, ptr %add.ptr31, i32 4
  %__y.val.i189 = load ptr, ptr %28, align 4, !tbaa !358
  %__x.val.i190 = load ptr, ptr %2, align 4, !tbaa !358
  %cmp.i.i191 = icmp ult ptr %__y.val.i189, %__x.val.i190
  %29 = getelementptr i8, ptr %__last.addr.0, i32 -32
  %.val21.i192 = load ptr, ptr %29, align 4, !tbaa !358
  %cmp.i30.i193 = icmp ult ptr %.val21.i192, %__y.val.i189
  br i1 %cmp.i.i191, label %if.end6.i201, label %if.then.i194

if.then.i194:                                     ; preds = %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit183"
  br i1 %cmp.i30.i193, label %if.end.i196, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit208"

if.end.i196:                                      ; preds = %if.then.i194
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i.i188)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i188, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr32, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr32, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i188, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i.i188)
  %.val23.i197 = load ptr, ptr %28, align 4, !tbaa !358
  %.val24.i198 = load ptr, ptr %2, align 4, !tbaa !358
  %cmp.i28.i199 = icmp ult ptr %.val23.i197, %.val24.i198
  br i1 %cmp.i28.i199, label %if.then4.i200, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit208"

if.then4.i200:                                    ; preds = %if.end.i196
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i29.i187)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29.i187, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr30, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr30, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29.i187, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i29.i187)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit208"

if.end6.i201:                                     ; preds = %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit183"
  br i1 %cmp.i30.i193, label %if.then8.i207, label %if.end9.i202

if.then8.i207:                                    ; preds = %if.end6.i201
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i31.i186)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31.i186, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr30, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr30, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr32, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr32, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31.i186, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i31.i186)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit208"

if.end9.i202:                                     ; preds = %if.end6.i201
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i32.i185)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32.i185, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr30, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr30, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32.i185, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i32.i185)
  %.val.i203 = load ptr, ptr %29, align 4, !tbaa !358
  %.val20.i204 = load ptr, ptr %28, align 4, !tbaa !358
  %cmp.i33.i205 = icmp ult ptr %.val.i203, %.val20.i204
  br i1 %cmp.i33.i205, label %if.then11.i206, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit208"

if.then11.i206:                                   ; preds = %if.end9.i202
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i34.i184)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34.i184, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr32, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr32, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34.i184, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i34.i184)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit208"

"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit208": ; preds = %if.then.i194, %if.end.i196, %if.then4.i200, %if.then8.i207, %if.end9.i202, %if.then11.i206
  %__y.val.i214 = load ptr, ptr %25, align 4, !tbaa !358
  %__x.val.i215 = load ptr, ptr %26, align 4, !tbaa !358
  %cmp.i.i216 = icmp ult ptr %__y.val.i214, %__x.val.i215
  %.val21.i217 = load ptr, ptr %28, align 4, !tbaa !358
  %cmp.i30.i218 = icmp ult ptr %.val21.i217, %__y.val.i214
  br i1 %cmp.i.i216, label %if.end6.i226, label %if.then.i219

if.then.i219:                                     ; preds = %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit208"
  br i1 %cmp.i30.i218, label %if.end.i221, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit233"

if.end.i221:                                      ; preds = %if.then.i219
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i.i213)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i213, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i213, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i.i213)
  %.val23.i222 = load ptr, ptr %25, align 4, !tbaa !358
  %.val24.i223 = load ptr, ptr %26, align 4, !tbaa !358
  %cmp.i28.i224 = icmp ult ptr %.val23.i222, %.val24.i223
  br i1 %cmp.i28.i224, label %if.then4.i225, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit233"

if.then4.i225:                                    ; preds = %if.end.i221
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i29.i212)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29.i212, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29.i212, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i29.i212)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit233"

if.end6.i226:                                     ; preds = %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit208"
  br i1 %cmp.i30.i218, label %if.then8.i232, label %if.end9.i227

if.then8.i232:                                    ; preds = %if.end6.i226
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i31.i211)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31.i211, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31.i211, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i31.i211)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit233"

if.end9.i227:                                     ; preds = %if.end6.i226
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i32.i210)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32.i210, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32.i210, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i32.i210)
  %.val.i228 = load ptr, ptr %28, align 4, !tbaa !358
  %.val20.i229 = load ptr, ptr %25, align 4, !tbaa !358
  %cmp.i33.i230 = icmp ult ptr %.val.i228, %.val20.i229
  br i1 %cmp.i33.i230, label %if.then11.i231, label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit233"

if.then11.i231:                                   ; preds = %if.end9.i227
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i34.i209)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34.i209, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr31, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34.i209, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i34.i209)
  br label %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit233"

"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit233": ; preds = %if.then.i219, %if.end.i221, %if.then4.i225, %if.then8.i232, %if.end9.i227, %if.then11.i231
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i234)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i234, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i234, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i234)
  br label %if.end45

if.else41:                                        ; preds = %if.end20
  %__y.val.i240 = load ptr, ptr %0, align 4, !tbaa !201
  %30 = getelementptr i8, ptr %add.ptr23, i32 4
  %__x.val.i241 = load ptr, ptr %30, align 4, !tbaa !358
  %cmp.i.i242 = icmp ult ptr %__y.val.i240, %__x.val.i241
  %cmp.i30.i244 = icmp ult ptr %.val21.i, %__y.val.i240
  br i1 %cmp.i.i242, label %if.end6.i252, label %if.then.i245

if.then.i245:                                     ; preds = %if.else41
  br i1 %cmp.i30.i244, label %if.end.i247, label %if.end45

if.end.i247:                                      ; preds = %if.then.i245
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i.i239)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i239, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i239, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i.i239)
  %.val23.i248 = load ptr, ptr %0, align 4, !tbaa !201
  %.val24.i249 = load ptr, ptr %30, align 4, !tbaa !358
  %cmp.i28.i250 = icmp ult ptr %.val23.i248, %.val24.i249
  br i1 %cmp.i28.i250, label %if.then4.i251, label %if.end45

if.then4.i251:                                    ; preds = %if.end.i247
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i29.i238)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29.i238, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29.i238, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i29.i238)
  br label %if.end45

if.end6.i252:                                     ; preds = %if.else41
  br i1 %cmp.i30.i244, label %if.then8.i258, label %if.end9.i253

if.then8.i258:                                    ; preds = %if.end6.i252
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i31.i237)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31.i237, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31.i237, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i31.i237)
  br label %if.end45

if.end9.i253:                                     ; preds = %if.end6.i252
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i32.i236)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32.i236, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr23, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32.i236, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i32.i236)
  %.val.i254 = load ptr, ptr %24, align 4, !tbaa !358
  %.val20.i255 = load ptr, ptr %0, align 4, !tbaa !201
  %cmp.i33.i256 = icmp ult ptr %.val.i254, %.val20.i255
  br i1 %cmp.i33.i256, label %if.then11.i257, label %if.end45

if.then11.i257:                                   ; preds = %if.end9.i253
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i34.i235)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34.i235, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %add.ptr24, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34.i235, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i34.i235)
  br label %if.end45

if.end45:                                         ; preds = %if.then11.i257, %if.end9.i253, %if.then8.i258, %if.then4.i251, %if.end.i247, %if.then.i245, %"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_.exit233"
  br i1 %__leftmost.addr.0.off0.ph.ph, label %if.end45.if.end51_crit_edge, label %land.lhs.true

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  %__pivot.sroa.4.0.copyload.i272.pre = load ptr, ptr %0, align 4, !tbaa !201
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end45
  %add.ptr47.val = load ptr, ptr %3, align 4, !tbaa !358
  %.val = load ptr, ptr %0, align 4, !tbaa !201
  %cmp.i260 = icmp ult ptr %add.ptr47.val, %.val
  br i1 %cmp.i260, label %if.end51, label %if.then49

if.then49:                                        ; preds = %land.lhs.true
  %__pivot.sroa.0.0.copyload.i = load ptr, ptr %__first.addr.0.ph, align 4, !tbaa !201
  %__pivot.sroa.10.0.copyload.i = load i32, ptr %__pivot.sroa.9.0.__first.sroa_idx.i, align 4, !tbaa !184
  %add.ptr.val.i = load ptr, ptr %24, align 4, !tbaa !358
  %cmp.i.i262 = icmp ult ptr %.val, %add.ptr.val.i
  br i1 %cmp.i.i262, label %do.body.i266, label %while.cond.i

do.body.i266:                                     ; preds = %if.then49, %do.body.i266
  %__first.addr.0.i = phi ptr [ %incdec.ptr.i267, %do.body.i266 ], [ %__first.addr.0.ph, %if.then49 ]
  %incdec.ptr.i267 = getelementptr inbounds i8, ptr %__first.addr.0.i, i32 12
  %31 = getelementptr i8, ptr %__first.addr.0.i, i32 16
  %incdec.ptr.val.i268 = load ptr, ptr %31, align 4, !tbaa !358
  %cmp.i45.i = icmp ult ptr %.val, %incdec.ptr.val.i268
  br i1 %cmp.i45.i, label %if.end.i264, label %do.body.i266, !llvm.loop !372

while.cond.i:                                     ; preds = %if.then49, %land.rhs.i265
  %__first.addr.1.i = phi ptr [ %incdec.ptr3.i, %land.rhs.i265 ], [ %__first.addr.0.ph, %if.then49 ]
  %incdec.ptr3.i = getelementptr inbounds i8, ptr %__first.addr.1.i, i32 12
  %cmp.i263 = icmp ult ptr %incdec.ptr3.i, %__last.addr.0
  br i1 %cmp.i263, label %land.rhs.i265, label %if.end.i264

land.rhs.i265:                                    ; preds = %while.cond.i
  %32 = getelementptr i8, ptr %__first.addr.1.i, i32 16
  %incdec.ptr3.val.i = load ptr, ptr %32, align 4, !tbaa !358
  %cmp.i46.i = icmp ult ptr %.val, %incdec.ptr3.val.i
  br i1 %cmp.i46.i, label %if.end.i264, label %while.cond.i, !llvm.loop !373

if.end.i264:                                      ; preds = %land.rhs.i265, %while.cond.i, %do.body.i266
  %__first.addr.2.i = phi ptr [ %incdec.ptr.i267, %do.body.i266 ], [ %incdec.ptr3.i, %while.cond.i ], [ %incdec.ptr3.i, %land.rhs.i265 ]
  %cmp6.i = icmp ult ptr %__first.addr.2.i, %__last.addr.0
  br i1 %cmp6.i, label %do.body8.i, label %if.end13.i

do.body8.i:                                       ; preds = %if.end.i264, %do.body8.i
  %__last.addr.0.i = phi ptr [ %incdec.ptr9.i, %do.body8.i ], [ %__last.addr.0, %if.end.i264 ]
  %incdec.ptr9.i = getelementptr inbounds i8, ptr %__last.addr.0.i, i32 -12
  %33 = getelementptr i8, ptr %__last.addr.0.i, i32 -8
  %incdec.ptr9.val.i = load ptr, ptr %33, align 4, !tbaa !358
  %cmp.i47.i = icmp ult ptr %.val, %incdec.ptr9.val.i
  br i1 %cmp.i47.i, label %do.body8.i, label %if.end13.i, !llvm.loop !374

if.end13.i:                                       ; preds = %do.body8.i, %if.end.i264
  %__last.addr.1.i = phi ptr [ %__last.addr.0, %if.end.i264 ], [ %incdec.ptr9.i, %do.body8.i ]
  %cmp1518.i = icmp ult ptr %__first.addr.2.i, %__last.addr.1.i
  br i1 %cmp1518.i, label %while.body16.i, label %while.end28.i

while.body16.i:                                   ; preds = %if.end13.i, %do.end27.i
  %__first.addr.320.i = phi ptr [ %incdec.ptr18.i, %do.end27.i ], [ %__first.addr.2.i, %if.end13.i ]
  %__last.addr.219.i = phi ptr [ %incdec.ptr24.i, %do.end27.i ], [ %__last.addr.1.i, %if.end13.i ]
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i.i261)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i261, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.320.i, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.320.i, ptr noundef nonnull align 4 dereferenceable(12) %__last.addr.219.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__last.addr.219.i, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i261, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i.i261)
  br label %do.body17.i

do.body17.i:                                      ; preds = %do.body17.i, %while.body16.i
  %__first.addr.4.i = phi ptr [ %__first.addr.320.i, %while.body16.i ], [ %incdec.ptr18.i, %do.body17.i ]
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %__first.addr.4.i, i32 12
  %34 = getelementptr i8, ptr %__first.addr.4.i, i32 16
  %incdec.ptr18.val.i = load ptr, ptr %34, align 4, !tbaa !358
  %cmp.i48.i = icmp ult ptr %.val, %incdec.ptr18.val.i
  br i1 %cmp.i48.i, label %do.body23.i, label %do.body17.i, !llvm.loop !375

do.body23.i:                                      ; preds = %do.body17.i, %do.body23.i
  %__last.addr.3.i = phi ptr [ %incdec.ptr24.i, %do.body23.i ], [ %__last.addr.219.i, %do.body17.i ]
  %incdec.ptr24.i = getelementptr inbounds i8, ptr %__last.addr.3.i, i32 -12
  %35 = getelementptr i8, ptr %__last.addr.3.i, i32 -8
  %incdec.ptr24.val.i = load ptr, ptr %35, align 4, !tbaa !358
  %cmp.i49.i = icmp ult ptr %.val, %incdec.ptr24.val.i
  br i1 %cmp.i49.i, label %do.body23.i, label %do.end27.i, !llvm.loop !376

do.end27.i:                                       ; preds = %do.body23.i
  %cmp15.i = icmp ult ptr %incdec.ptr18.i, %incdec.ptr24.i
  br i1 %cmp15.i, label %while.body16.i, label %while.end28.i, !llvm.loop !377

while.end28.i:                                    ; preds = %do.end27.i, %if.end13.i
  %__first.addr.3.lcssa.i = phi ptr [ %__first.addr.2.i, %if.end13.i ], [ %incdec.ptr18.i, %do.end27.i ]
  %add.ptr29.i = getelementptr inbounds i8, ptr %__first.addr.3.lcssa.i, i32 -12
  %cmp30.not.i = icmp eq ptr %add.ptr29.i, %__first.addr.0.ph
  br i1 %cmp30.not.i, label %"_ZNSt3__131__partition_with_equals_on_leftB8ne190000INS_17_ClassicAlgPolicyEP10MemoryCopyRZNS2_13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0EET0_SA_SA_T1_.exit", label %if.then31.i

if.then31.i:                                      ; preds = %while.end28.i
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr29.i, i32 12, i1 false), !tbaa.struct !362
  br label %"_ZNSt3__131__partition_with_equals_on_leftB8ne190000INS_17_ClassicAlgPolicyEP10MemoryCopyRZNS2_13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0EET0_SA_SA_T1_.exit"

"_ZNSt3__131__partition_with_equals_on_leftB8ne190000INS_17_ClassicAlgPolicyEP10MemoryCopyRZNS2_13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0EET0_SA_SA_T1_.exit": ; preds = %while.end28.i, %if.then31.i
  store ptr %__pivot.sroa.0.0.copyload.i, ptr %add.ptr29.i, align 4, !tbaa !201
  %__pivot.sroa.4.0.__pivot_pos.0..sroa_idx.i = getelementptr inbounds i8, ptr %__first.addr.3.lcssa.i, i32 -8
  store ptr %.val, ptr %__pivot.sroa.4.0.__pivot_pos.0..sroa_idx.i, align 4, !tbaa !201
  %__pivot.sroa.10.0.__pivot_pos.0..sroa_idx.i = getelementptr inbounds i8, ptr %__first.addr.3.lcssa.i, i32 -4
  store i32 %__pivot.sroa.10.0.copyload.i, ptr %__pivot.sroa.10.0.__pivot_pos.0..sroa_idx.i, align 4, !tbaa !184
  br label %while.cond.outer.outer.backedge

while.cond.outer.outer.backedge:                  ; preds = %"_ZNSt3__131__partition_with_equals_on_leftB8ne190000INS_17_ClassicAlgPolicyEP10MemoryCopyRZNS2_13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0EET0_SA_SA_T1_.exit", %if.end70
  %__first.addr.0.ph.ph.be = phi ptr [ %__first.addr.1.lcssa.i, %if.end70 ], [ %__first.addr.3.lcssa.i, %"_ZNSt3__131__partition_with_equals_on_leftB8ne190000INS_17_ClassicAlgPolicyEP10MemoryCopyRZNS2_13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0EET0_SA_SA_T1_.exit" ]
  br label %while.cond.outer.outer, !llvm.loop !378

if.end51:                                         ; preds = %if.end45.if.end51_crit_edge, %land.lhs.true
  %__pivot.sroa.4.0.copyload.i272 = phi ptr [ %__pivot.sroa.4.0.copyload.i272.pre, %if.end45.if.end51_crit_edge ], [ %.val, %land.lhs.true ]
  %__pivot.sroa.0.0.copyload.i270 = load ptr, ptr %__first.addr.0.ph, align 4, !tbaa !201
  %__pivot.sroa.9.0.copyload.i = load i32, ptr %__pivot.sroa.9.0.__first.sroa_idx.i, align 4, !tbaa !184
  br label %do.body.i273

do.body.i273:                                     ; preds = %do.body.i273, %if.end51
  %__first.addr.0.i274 = phi ptr [ %__first.addr.0.ph, %if.end51 ], [ %incdec.ptr.i275, %do.body.i273 ]
  %incdec.ptr.i275 = getelementptr inbounds i8, ptr %__first.addr.0.i274, i32 12
  %36 = getelementptr i8, ptr %__first.addr.0.i274, i32 16
  %incdec.ptr.val.i276 = load ptr, ptr %36, align 4, !tbaa !358
  %cmp.i.i277 = icmp ult ptr %incdec.ptr.val.i276, %__pivot.sroa.4.0.copyload.i272
  br i1 %cmp.i.i277, label %do.body.i273, label %do.end.i278, !llvm.loop !379

do.end.i278:                                      ; preds = %do.body.i273
  %cmp.i279 = icmp eq ptr %__first.addr.0.i274, %__first.addr.0.ph
  br i1 %cmp.i279, label %while.cond.i287, label %do.body5.i

while.cond.i287:                                  ; preds = %do.end.i278, %land.rhs.i289
  %__last.addr.0.i288 = phi ptr [ %incdec.ptr3.i290, %land.rhs.i289 ], [ %__last.addr.0, %do.end.i278 ]
  %cmp2.i = icmp ult ptr %incdec.ptr.i275, %__last.addr.0.i288
  br i1 %cmp2.i, label %land.rhs.i289, label %if.end.i282

land.rhs.i289:                                    ; preds = %while.cond.i287
  %incdec.ptr3.i290 = getelementptr inbounds i8, ptr %__last.addr.0.i288, i32 -12
  %37 = getelementptr i8, ptr %__last.addr.0.i288, i32 -8
  %incdec.ptr3.val.i291 = load ptr, ptr %37, align 4, !tbaa !358
  %cmp.i44.i = icmp ult ptr %incdec.ptr3.val.i291, %__pivot.sroa.4.0.copyload.i272
  br i1 %cmp.i44.i, label %if.end.i282, label %while.cond.i287, !llvm.loop !380

do.body5.i:                                       ; preds = %do.end.i278, %do.body5.i
  %__last.addr.1.i280 = phi ptr [ %incdec.ptr6.i, %do.body5.i ], [ %__last.addr.0, %do.end.i278 ]
  %incdec.ptr6.i = getelementptr inbounds i8, ptr %__last.addr.1.i280, i32 -12
  %38 = getelementptr i8, ptr %__last.addr.1.i280, i32 -8
  %incdec.ptr6.val.i = load ptr, ptr %38, align 4, !tbaa !358
  %cmp.i45.i281 = icmp ult ptr %incdec.ptr6.val.i, %__pivot.sroa.4.0.copyload.i272
  br i1 %cmp.i45.i281, label %if.end.i282, label %do.body5.i, !llvm.loop !381

if.end.i282:                                      ; preds = %do.body5.i, %land.rhs.i289, %while.cond.i287
  %__last.addr.2.i = phi ptr [ %incdec.ptr3.i290, %land.rhs.i289 ], [ %__last.addr.0.i288, %while.cond.i287 ], [ %incdec.ptr6.i, %do.body5.i ]
  %cmp1318.i = icmp ult ptr %incdec.ptr.i275, %__last.addr.2.i
  br i1 %cmp1318.i, label %while.body14.i, label %while.end26.i

while.body14.i:                                   ; preds = %if.end.i282, %do.end25.i
  %__first.addr.120.i = phi ptr [ %incdec.ptr16.i, %do.end25.i ], [ %incdec.ptr.i275, %if.end.i282 ]
  %__last.addr.319.i = phi ptr [ %incdec.ptr21.i, %do.end25.i ], [ %__last.addr.2.i, %if.end.i282 ]
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i.i269)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i269, ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.120.i, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.120.i, ptr noundef nonnull align 4 dereferenceable(12) %__last.addr.319.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__last.addr.319.i, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i.i269, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i.i269)
  br label %do.body15.i

do.body15.i:                                      ; preds = %do.body15.i, %while.body14.i
  %__first.addr.2.i284 = phi ptr [ %__first.addr.120.i, %while.body14.i ], [ %incdec.ptr16.i, %do.body15.i ]
  %incdec.ptr16.i = getelementptr inbounds i8, ptr %__first.addr.2.i284, i32 12
  %39 = getelementptr i8, ptr %__first.addr.2.i284, i32 16
  %incdec.ptr16.val.i = load ptr, ptr %39, align 4, !tbaa !358
  %cmp.i46.i285 = icmp ult ptr %incdec.ptr16.val.i, %__pivot.sroa.4.0.copyload.i272
  br i1 %cmp.i46.i285, label %do.body15.i, label %do.body20.i, !llvm.loop !382

do.body20.i:                                      ; preds = %do.body15.i, %do.body20.i
  %__last.addr.4.i = phi ptr [ %incdec.ptr21.i, %do.body20.i ], [ %__last.addr.319.i, %do.body15.i ]
  %incdec.ptr21.i = getelementptr inbounds i8, ptr %__last.addr.4.i, i32 -12
  %40 = getelementptr i8, ptr %__last.addr.4.i, i32 -8
  %incdec.ptr21.val.i = load ptr, ptr %40, align 4, !tbaa !358
  %cmp.i47.i286 = icmp ult ptr %incdec.ptr21.val.i, %__pivot.sroa.4.0.copyload.i272
  br i1 %cmp.i47.i286, label %do.end25.i, label %do.body20.i, !llvm.loop !383

do.end25.i:                                       ; preds = %do.body20.i
  %cmp13.i = icmp ult ptr %incdec.ptr16.i, %incdec.ptr21.i
  br i1 %cmp13.i, label %while.body14.i, label %while.end26.i, !llvm.loop !384

while.end26.i:                                    ; preds = %do.end25.i, %if.end.i282
  %__first.addr.1.lcssa.i = phi ptr [ %incdec.ptr.i275, %if.end.i282 ], [ %incdec.ptr16.i, %do.end25.i ]
  %add.ptr27.i = getelementptr inbounds i8, ptr %__first.addr.1.lcssa.i, i32 -12
  %cmp28.not.i = icmp eq ptr %add.ptr27.i, %__first.addr.0.ph
  br i1 %cmp28.not.i, label %"_ZNSt3__132__partition_with_equals_on_rightB8ne190000INS_17_ClassicAlgPolicyEP10MemoryCopyRZNS2_13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0EENS_4pairIT0_bEESB_SB_T1_.exit", label %if.then29.i

if.then29.i:                                      ; preds = %while.end26.i
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first.addr.0.ph, ptr noundef nonnull align 4 dereferenceable(12) %add.ptr27.i, i32 12, i1 false), !tbaa.struct !362
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8ne190000INS_17_ClassicAlgPolicyEP10MemoryCopyRZNS2_13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0EENS_4pairIT0_bEESB_SB_T1_.exit"

"_ZNSt3__132__partition_with_equals_on_rightB8ne190000INS_17_ClassicAlgPolicyEP10MemoryCopyRZNS2_13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0EENS_4pairIT0_bEESB_SB_T1_.exit": ; preds = %while.end26.i, %if.then29.i
  store ptr %__pivot.sroa.0.0.copyload.i270, ptr %add.ptr27.i, align 4, !tbaa !201
  %__pivot.sroa.4.0.__pivot_pos.0..sroa_idx.i283 = getelementptr inbounds i8, ptr %__first.addr.1.lcssa.i, i32 -8
  store ptr %__pivot.sroa.4.0.copyload.i272, ptr %__pivot.sroa.4.0.__pivot_pos.0..sroa_idx.i283, align 4, !tbaa !201
  %__pivot.sroa.9.0.__pivot_pos.0..sroa_idx.i = getelementptr inbounds i8, ptr %__first.addr.1.lcssa.i, i32 -4
  store i32 %__pivot.sroa.9.0.copyload.i, ptr %__pivot.sroa.9.0.__pivot_pos.0..sroa_idx.i, align 4, !tbaa !184
  br i1 %cmp1318.i, label %if.end70, label %if.then55

if.then55:                                        ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8ne190000INS_17_ClassicAlgPolicyEP10MemoryCopyRZNS2_13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0EENS_4pairIT0_bEESB_SB_T1_.exit"
  %call56 = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEbT1_SA_T0_"(ptr noundef %__first.addr.0.ph, ptr noundef nonnull %add.ptr27.i)
  %call59 = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEbT1_SA_T0_"(ptr noundef nonnull %__first.addr.1.lcssa.i, ptr noundef %__last.addr.0)
  br i1 %call59, label %if.then60, label %if.else64

if.then60:                                        ; preds = %if.then55
  br i1 %call56, label %cleanup78, label %while.cond, !llvm.loop !378

if.else64:                                        ; preds = %if.then55
  br i1 %call56, label %while.cond.outer, label %if.end70, !llvm.loop !378

if.end70:                                         ; preds = %if.else64, %"_ZNSt3__132__partition_with_equals_on_rightB8ne190000INS_17_ClassicAlgPolicyEP10MemoryCopyRZNS2_13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0EENS_4pairIT0_bEESB_SB_T1_.exit"
  tail call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_Lb0EEEvT1_SA_T0_NS_15iterator_traitsISA_E15difference_typeEb"(ptr noundef %__first.addr.0.ph, ptr noundef nonnull %add.ptr27.i, i32 noundef %dec, i1 noundef zeroext %__leftmost.addr.0.off0.ph.ph)
  br label %while.cond.outer.outer.backedge

cleanup78:                                        ; preds = %if.then60, %while.cond, %while.cond, %"_ZNSt3__110__pop_heapB8ne190000INS_17_ClassicAlgPolicyEZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i", %if.end8.i, %if.end9.i, %if.then18, %if.else, %if.then14, %sw.bb1, %if.then, %sw.bb2, %sw.bb4, %sw.bb8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define internal fastcc void @"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_"(ptr noundef captures(none) %__x, ptr noundef captures(none) %__y, ptr noundef captures(none) %__z) unnamed_addr #26 {
entry:
  %__t.i.i.i34 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i32 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i31 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i29 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i = alloca %struct.MemoryCopy, align 4
  %0 = getelementptr i8, ptr %__y, i32 4
  %__y.val = load ptr, ptr %0, align 4, !tbaa !358
  %1 = getelementptr i8, ptr %__x, i32 4
  %__x.val = load ptr, ptr %1, align 4, !tbaa !358
  %cmp.i = icmp ult ptr %__y.val, %__x.val
  %2 = getelementptr i8, ptr %__z, i32 4
  %.val21 = load ptr, ptr %2, align 4, !tbaa !358
  %cmp.i30 = icmp ult ptr %.val21, %__y.val
  br i1 %cmp.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i30, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__y, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__y, ptr noundef nonnull align 4 dereferenceable(12) %__z, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__z, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i)
  %.val23 = load ptr, ptr %0, align 4, !tbaa !358
  %.val24 = load ptr, ptr %1, align 4, !tbaa !358
  %cmp.i28 = icmp ult ptr %.val23, %.val24
  br i1 %cmp.i28, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i29)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29, ptr noundef nonnull align 4 dereferenceable(12) %__x, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x, ptr noundef nonnull align 4 dereferenceable(12) %__y, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__y, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i29, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i29)
  br label %cleanup

if.end6:                                          ; preds = %entry
  br i1 %cmp.i30, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i31)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31, ptr noundef nonnull align 4 dereferenceable(12) %__x, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x, ptr noundef nonnull align 4 dereferenceable(12) %__z, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__z, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i31, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i31)
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i32)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32, ptr noundef nonnull align 4 dereferenceable(12) %__x, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x, ptr noundef nonnull align 4 dereferenceable(12) %__y, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__y, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i32, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i32)
  %.val = load ptr, ptr %2, align 4, !tbaa !358
  %.val20 = load ptr, ptr %0, align 4, !tbaa !358
  %cmp.i33 = icmp ult ptr %.val, %.val20
  br i1 %cmp.i33, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i34)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34, ptr noundef nonnull align 4 dereferenceable(12) %__y, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__y, ptr noundef nonnull align 4 dereferenceable(12) %__z, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__z, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i34, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i34)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then11, %if.end, %if.then4, %if.then, %if.then8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define internal fastcc void @"_ZNSt3__17__sort4B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_SA_SA_SA_T0_"(ptr noundef captures(none) %__x1, ptr noundef captures(none) %__x2, ptr noundef captures(none) %__x3, ptr noundef captures(none) %__x4) unnamed_addr #26 {
entry:
  %__t.i.i.i19 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i17 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i = alloca %struct.MemoryCopy, align 4
  tail call fastcc void @"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_"(ptr noundef %__x1, ptr noundef %__x2, ptr noundef %__x3)
  %0 = getelementptr i8, ptr %__x4, i32 4
  %.val14 = load ptr, ptr %0, align 4, !tbaa !358
  %1 = getelementptr i8, ptr %__x3, i32 4
  %.val15 = load ptr, ptr %1, align 4, !tbaa !358
  %cmp.i = icmp ult ptr %.val14, %.val15
  br i1 %cmp.i, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__x3, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x3, ptr noundef nonnull align 4 dereferenceable(12) %__x4, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x4, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i)
  %.val12 = load ptr, ptr %1, align 4, !tbaa !358
  %2 = getelementptr i8, ptr %__x2, i32 4
  %.val13 = load ptr, ptr %2, align 4, !tbaa !358
  %cmp.i16 = icmp ult ptr %.val12, %.val13
  br i1 %cmp.i16, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i17)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i17, ptr noundef nonnull align 4 dereferenceable(12) %__x2, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x2, ptr noundef nonnull align 4 dereferenceable(12) %__x3, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x3, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i17, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i17)
  %.val = load ptr, ptr %2, align 4, !tbaa !358
  %3 = getelementptr i8, ptr %__x1, i32 4
  %.val11 = load ptr, ptr %3, align 4, !tbaa !358
  %cmp.i18 = icmp ult ptr %.val, %.val11
  br i1 %cmp.i18, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i19)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i19, ptr noundef nonnull align 4 dereferenceable(12) %__x1, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x1, ptr noundef nonnull align 4 dereferenceable(12) %__x2, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x2, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i19, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i19)
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then5, %if.then3, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define internal fastcc void @"_ZNSt3__17__sort5B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_SA_SA_SA_SA_T0_"(ptr noundef captures(none) %__x1, ptr noundef captures(none) %__x2, ptr noundef captures(none) %__x3, ptr noundef captures(none) %__x4, ptr noundef captures(none) %__x5) unnamed_addr #26 {
entry:
  %__t.i.i.i26 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i24 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i22 = alloca %struct.MemoryCopy, align 4
  %__t.i.i.i = alloca %struct.MemoryCopy, align 4
  tail call fastcc void @"_ZNSt3__17__sort4B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_SA_SA_SA_T0_"(ptr noundef %__x1, ptr noundef %__x2, ptr noundef %__x3, ptr noundef %__x4)
  %0 = getelementptr i8, ptr %__x5, i32 4
  %.val19 = load ptr, ptr %0, align 4, !tbaa !358
  %1 = getelementptr i8, ptr %__x4, i32 4
  %.val20 = load ptr, ptr %1, align 4, !tbaa !358
  %cmp.i = icmp ult ptr %.val19, %.val20
  br i1 %cmp.i, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__x4, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x4, ptr noundef nonnull align 4 dereferenceable(12) %__x5, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x5, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i)
  %.val17 = load ptr, ptr %1, align 4, !tbaa !358
  %2 = getelementptr i8, ptr %__x3, i32 4
  %.val18 = load ptr, ptr %2, align 4, !tbaa !358
  %cmp.i21 = icmp ult ptr %.val17, %.val18
  br i1 %cmp.i21, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i22)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i22, ptr noundef nonnull align 4 dereferenceable(12) %__x3, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x3, ptr noundef nonnull align 4 dereferenceable(12) %__x4, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x4, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i22, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i22)
  %.val15 = load ptr, ptr %2, align 4, !tbaa !358
  %3 = getelementptr i8, ptr %__x2, i32 4
  %.val16 = load ptr, ptr %3, align 4, !tbaa !358
  %cmp.i23 = icmp ult ptr %.val15, %.val16
  br i1 %cmp.i23, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.then2
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i24)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i24, ptr noundef nonnull align 4 dereferenceable(12) %__x2, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x2, ptr noundef nonnull align 4 dereferenceable(12) %__x3, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x3, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i24, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i24)
  %.val = load ptr, ptr %3, align 4, !tbaa !358
  %4 = getelementptr i8, ptr %__x1, i32 4
  %.val14 = load ptr, ptr %4, align 4, !tbaa !358
  %cmp.i25 = icmp ult ptr %.val, %.val14
  br i1 %cmp.i25, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then4
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i26)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i26, ptr noundef nonnull align 4 dereferenceable(12) %__x1, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x1, ptr noundef nonnull align 4 dereferenceable(12) %__x2, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__x2, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i26, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i26)
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then4, %if.then6, %if.then2, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define internal fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEbT1_SA_T0_"(ptr noundef %__first, ptr noundef %__last) unnamed_addr #27 {
entry:
  %__t.i.i.i = alloca %struct.MemoryCopy, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  switch i32 %sub.ptr.div, label %sw.epilog [
    i32 0, label %return
    i32 1, label %return
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb4
    i32 5, label %sw.bb8
  ]

sw.bb1:                                           ; preds = %entry
  %0 = getelementptr i8, ptr %__last, i32 -8
  %incdec.ptr.val = load ptr, ptr %0, align 4, !tbaa !358
  %1 = getelementptr i8, ptr %__first, i32 4
  %.val = load ptr, ptr %1, align 4, !tbaa !358
  %cmp.i = icmp ult ptr %incdec.ptr.val, %.val
  br i1 %cmp.i, label %if.then, label %return

if.then:                                          ; preds = %sw.bb1
  %incdec.ptr = getelementptr inbounds i8, ptr %__last, i32 -12
  call void @llvm.lifetime.start.p0(ptr %__t.i.i.i)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %__first, i32 12, i1 false), !tbaa.struct !362
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__first, ptr noundef nonnull align 4 dereferenceable(12) %incdec.ptr, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %incdec.ptr, ptr noundef nonnull align 4 dereferenceable(12) %__t.i.i.i, i32 12, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr %__t.i.i.i)
  br label %return

sw.bb2:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %__first, i32 12
  %incdec.ptr3 = getelementptr inbounds i8, ptr %__last, i32 -12
  tail call fastcc void @"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_"(ptr noundef %__first, ptr noundef nonnull %add.ptr, ptr noundef nonnull %incdec.ptr3)
  br label %return

sw.bb4:                                           ; preds = %entry
  %add.ptr5 = getelementptr inbounds i8, ptr %__first, i32 12
  %add.ptr6 = getelementptr inbounds i8, ptr %__first, i32 24
  %incdec.ptr7 = getelementptr inbounds i8, ptr %__last, i32 -12
  tail call fastcc void @"_ZNSt3__17__sort4B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_SA_SA_SA_T0_"(ptr noundef %__first, ptr noundef nonnull %add.ptr5, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %incdec.ptr7)
  br label %return

sw.bb8:                                           ; preds = %entry
  %add.ptr9 = getelementptr inbounds i8, ptr %__first, i32 12
  %add.ptr10 = getelementptr inbounds i8, ptr %__first, i32 24
  %add.ptr11 = getelementptr inbounds i8, ptr %__first, i32 36
  %incdec.ptr12 = getelementptr inbounds i8, ptr %__last, i32 -12
  tail call fastcc void @"_ZNSt3__17__sort5B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_SA_SA_SA_SA_T0_"(ptr noundef %__first, ptr noundef nonnull %add.ptr9, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11, ptr noundef nonnull %incdec.ptr12)
  br label %return

sw.epilog:                                        ; preds = %entry
  %add.ptr13 = getelementptr inbounds i8, ptr %__first, i32 24
  %add.ptr14 = getelementptr inbounds i8, ptr %__first, i32 12
  tail call fastcc void @"_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_"(ptr noundef %__first, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr13)
  %add.ptr15 = getelementptr inbounds i8, ptr %__first, i32 36
  %cmp.not11 = icmp eq ptr %add.ptr15, %__last
  br i1 %cmp.not11, label %return, label %for.body

for.body:                                         ; preds = %sw.epilog, %if.end29
  %__count.014 = phi i32 [ %__count.1, %if.end29 ], [ 0, %sw.epilog ]
  %__j.013 = phi ptr [ %storemerge12, %if.end29 ], [ %add.ptr13, %sw.epilog ]
  %storemerge12 = phi ptr [ %incdec.ptr30, %if.end29 ], [ %add.ptr15, %sw.epilog ]
  %2 = getelementptr i8, ptr %storemerge12, i32 4
  %storemerge.val = load ptr, ptr %2, align 4, !tbaa !201
  %3 = getelementptr i8, ptr %__j.013, i32 4
  %__j.0.val = load ptr, ptr %3, align 4, !tbaa !358
  %cmp.i57 = icmp ult ptr %storemerge.val, %__j.0.val
  br i1 %cmp.i57, label %if.then17, label %if.end29

if.then17:                                        ; preds = %for.body
  %__t.sroa.0.0.copyload = load ptr, ptr %storemerge12, align 4, !tbaa !201
  %__t.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %storemerge12, i32 8
  %__t.sroa.6.0.copyload = load i32, ptr %__t.sroa.6.0..sroa_idx, align 4, !tbaa !184
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.then17
  %__k.0 = phi ptr [ %__j.013, %if.then17 ], [ %incdec.ptr21, %land.rhs ]
  %__j.1 = phi ptr [ %storemerge12, %if.then17 ], [ %__k.0, %land.rhs ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %__j.1, ptr noundef nonnull align 4 dereferenceable(12) %__k.0, i32 12, i1 false), !tbaa.struct !362
  %cmp20.not = icmp eq ptr %__k.0, %__first
  br i1 %cmp20.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %incdec.ptr21 = getelementptr inbounds i8, ptr %__k.0, i32 -12
  %4 = getelementptr i8, ptr %__k.0, i32 -8
  %incdec.ptr21.val = load ptr, ptr %4, align 4, !tbaa !358
  %cmp.i58 = icmp ult ptr %storemerge.val, %incdec.ptr21.val
  br i1 %cmp.i58, label %do.body, label %do.end, !llvm.loop !385

do.end:                                           ; preds = %do.body, %land.rhs
  %__k.0.lcssa = phi ptr [ %__first, %do.body ], [ %__k.0, %land.rhs ]
  store ptr %__t.sroa.0.0.copyload, ptr %__k.0.lcssa, align 4, !tbaa !201
  %__t.sroa.5.0.__k.0..sroa_idx = getelementptr inbounds i8, ptr %__k.0.lcssa, i32 4
  store ptr %storemerge.val, ptr %__t.sroa.5.0.__k.0..sroa_idx, align 4, !tbaa !201
  %__t.sroa.6.0.__k.0..sroa_idx = getelementptr inbounds i8, ptr %__k.0.lcssa, i32 8
  store i32 %__t.sroa.6.0.copyload, ptr %__t.sroa.6.0.__k.0..sroa_idx, align 4, !tbaa !184
  %inc = add i32 %__count.014, 1
  %cmp23 = icmp eq i32 %inc, 8
  br i1 %cmp23, label %cleanup31, label %if.end29

if.end29:                                         ; preds = %do.end, %for.body
  %__count.1 = phi i32 [ %__count.014, %for.body ], [ %inc, %do.end ]
  %incdec.ptr30 = getelementptr inbounds i8, ptr %storemerge12, i32 12
  %cmp.not = icmp eq ptr %incdec.ptr30, %__last
  br i1 %cmp.not, label %return, label %for.body, !llvm.loop !386

cleanup31:                                        ; preds = %do.end
  %incdec.ptr25 = getelementptr inbounds i8, ptr %storemerge12, i32 12
  %cmp26 = icmp eq ptr %incdec.ptr25, %__last
  br label %return

return:                                           ; preds = %if.end29, %sw.epilog, %cleanup31, %sw.bb1, %if.then, %entry, %entry, %sw.bb8, %sw.bb4, %sw.bb2
  %retval.5 = phi i1 [ true, %sw.bb8 ], [ true, %sw.bb4 ], [ true, %sw.bb2 ], [ true, %entry ], [ true, %entry ], [ true, %if.then ], [ true, %sw.bb1 ], [ %cmp26, %cleanup31 ], [ true, %sw.epilog ], [ true, %if.end29 ]
  ret i1 %retval.5
}

; Function Attrs: mustprogress
define hidden void @_Z30hexagonBufferCopyAcrossRegionsRK9BufferSetS1_jbb(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %dest, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %src, i32 noundef %bytesToCopy, i1 noundef zeroext %srcIsHexbuff, i1 noundef zeroext %destIsHexbuff) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
entry:
  %microCopies = alloca %"class.std::__1::vector.30", align 4
  %macroCopies = alloca %"class.std::__1::vector.30", align 4
  %agg.tmp = alloca %"class.std::__1::vector.30", align 4
  call void @llvm.lifetime.start.p0(ptr %microCopies)
  call void @_ZN9BufferSet12MemoryCopiesERKS_S1_j(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.30") align 4 %microCopies, ptr noundef nonnull align 4 dereferenceable(12) %dest, ptr noundef nonnull align 4 dereferenceable(12) %src, i32 noundef %bytesToCopy)
  call void @llvm.lifetime.start.p0(ptr %macroCopies)
  %__end_.i = getelementptr inbounds i8, ptr %agg.tmp, i32 4
  %__end_cap_.i = getelementptr inbounds i8, ptr %agg.tmp, i32 8
  %0 = load ptr, ptr %microCopies, align 4, !tbaa !349
  store ptr %0, ptr %agg.tmp, align 4, !tbaa !349
  %__end_4.i = getelementptr inbounds i8, ptr %microCopies, i32 4
  %1 = load ptr, ptr %__end_4.i, align 4, !tbaa !353
  store ptr %1, ptr %__end_.i, align 4, !tbaa !353
  %__end_cap_.i17.i = getelementptr inbounds i8, ptr %microCopies, i32 8
  %2 = load ptr, ptr %__end_cap_.i17.i, align 4, !tbaa !201
  store ptr %2, ptr %__end_cap_.i, align 4, !tbaa !201
  store ptr null, ptr %__end_cap_.i17.i, align 4, !tbaa !201
  store ptr null, ptr %__end_4.i, align 4, !tbaa !353
  store ptr null, ptr %microCopies, align 4, !tbaa !349
  invoke void @_ZN10MemoryCopy13MergeAdjacentENSt3__16vectorIS_NS0_9allocatorIS_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.30") align 4 %macroCopies, ptr noundef nonnull %agg.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %cmp.not.i.i = icmp eq ptr %0, null
  br i1 %cmp.not.i.i, label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @_ZdlPvj(ptr noundef nonnull %0, i32 noundef %sub.ptr.sub.i.i.i) #29
  br label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit

_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  %3 = load ptr, ptr %macroCopies, align 4, !tbaa !349
  %__end_.i33 = getelementptr inbounds i8, ptr %macroCopies, i32 4
  %4 = load ptr, ptr %__end_.i33, align 4, !tbaa !353
  %cmp.i.i.not77 = icmp eq ptr %3, %4
  br i1 %cmp.i.i.not77, label %for.cond.cleanup, label %for.body

for.cond.cleanup.loopexit:                        ; preds = %if.end20
  %.pre = load ptr, ptr %macroCopies, align 4, !tbaa !349
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit
  %5 = phi ptr [ %.pre, %for.cond.cleanup.loopexit ], [ %3, %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit ]
  %cmp.not.i.i35 = icmp eq ptr %5, null
  br i1 %cmp.not.i.i35, label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit42, label %if.then.i.i36

if.then.i.i36:                                    ; preds = %for.cond.cleanup
  store ptr %5, ptr %__end_.i33, align 4, !tbaa !353
  %__end_cap_.i.i.i.i38 = getelementptr inbounds i8, ptr %macroCopies, i32 8
  %6 = load ptr, ptr %__end_cap_.i.i.i.i38, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i.i.i39 = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i.i40 = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i.i41 = sub i32 %sub.ptr.lhs.cast.i.i.i39, %sub.ptr.rhs.cast.i.i.i40
  call void @_ZdlPvj(ptr noundef nonnull %5, i32 noundef %sub.ptr.sub.i.i.i41) #29
  br label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit42

_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit42: ; preds = %for.cond.cleanup, %if.then.i.i36
  call void @llvm.lifetime.end.p0(ptr %macroCopies)
  %7 = load ptr, ptr %microCopies, align 4, !tbaa !349
  %cmp.not.i.i43 = icmp eq ptr %7, null
  br i1 %cmp.not.i.i43, label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit50, label %if.then.i.i44

if.then.i.i44:                                    ; preds = %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit42
  store ptr %7, ptr %__end_4.i, align 4, !tbaa !353
  %8 = load ptr, ptr %__end_cap_.i17.i, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i.i.i47 = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i.i48 = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i.i49 = sub i32 %sub.ptr.lhs.cast.i.i.i47, %sub.ptr.rhs.cast.i.i.i48
  call void @_ZdlPvj(ptr noundef nonnull %7, i32 noundef %sub.ptr.sub.i.i.i49) #29
  br label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit50

_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit50: ; preds = %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit42, %if.then.i.i44
  call void @llvm.lifetime.end.p0(ptr %microCopies)
  ret void

lpad:                                             ; preds = %entry
  %9 = landingpad { ptr, i32 }
          cleanup
  %cmp.not.i.i51 = icmp eq ptr %0, null
  br i1 %cmp.not.i.i51, label %ehcleanup, label %ehcleanup.sink.split

for.body:                                         ; preds = %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit, %if.end20
  %__begin1.sroa.0.078 = phi ptr [ %incdec.ptr.i, %if.end20 ], [ %3, %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit ]
  br i1 %srcIsHexbuff, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %src7 = getelementptr inbounds i8, ptr %__begin1.sroa.0.078, i32 4
  %10 = load ptr, ptr %src7, align 4, !tbaa !358
  %11 = ptrtoint ptr %10 to i32
  %numBytes = getelementptr inbounds i8, ptr %__begin1.sroa.0.078, i32 8
  %12 = load i32, ptr %numBytes, align 4, !tbaa !360
  %call10 = invoke i32 @qurt_mem_cache_clean(i32 noundef %11, i32 noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 1)
          to label %if.end unwind label %lpad8

lpad8:                                            ; preds = %if.then15, %if.then
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = load ptr, ptr %macroCopies, align 4, !tbaa !349
  %cmp.not.i.i59 = icmp eq ptr %14, null
  br i1 %cmp.not.i.i59, label %ehcleanup, label %if.then.i.i60

if.then.i.i60:                                    ; preds = %lpad8
  store ptr %14, ptr %__end_.i33, align 4, !tbaa !353
  %__end_cap_.i.i.i.i62 = getelementptr inbounds i8, ptr %macroCopies, i32 8
  %15 = load ptr, ptr %__end_cap_.i.i.i.i62, align 4, !tbaa !201
  br label %ehcleanup.sink.split

if.end:                                           ; preds = %if.then, %for.body
  %16 = load ptr, ptr %__begin1.sroa.0.078, align 4, !tbaa !361
  %src12 = getelementptr inbounds i8, ptr %__begin1.sroa.0.078, i32 4
  %17 = load ptr, ptr %src12, align 4, !tbaa !358
  %numBytes13 = getelementptr inbounds i8, ptr %__begin1.sroa.0.078, i32 8
  %18 = load i32, ptr %numBytes13, align 4, !tbaa !360
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %17, i32 %18, i1 false)
  br i1 %destIsHexbuff, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end
  %19 = load ptr, ptr %__begin1.sroa.0.078, align 4, !tbaa !361
  %20 = ptrtoint ptr %19 to i32
  %21 = load i32, ptr %numBytes13, align 4, !tbaa !360
  %call19 = invoke i32 @qurt_mem_cache_clean(i32 noundef %20, i32 noundef %21, i8 noundef zeroext 0, i8 noundef zeroext 1)
          to label %if.end20 unwind label %lpad8

if.end20:                                         ; preds = %if.then15, %if.end
  %incdec.ptr.i = getelementptr inbounds i8, ptr %__begin1.sroa.0.078, i32 12
  %cmp.i.i.not = icmp eq ptr %incdec.ptr.i, %4
  br i1 %cmp.i.i.not, label %for.cond.cleanup.loopexit, label %for.body

ehcleanup.sink.split:                             ; preds = %lpad, %if.then.i.i60
  %.sink80 = phi ptr [ %15, %if.then.i.i60 ], [ %2, %lpad ]
  %.sink79 = phi ptr [ %14, %if.then.i.i60 ], [ %0, %lpad ]
  %.pn.ph = phi { ptr, i32 } [ %13, %if.then.i.i60 ], [ %9, %lpad ]
  %sub.ptr.lhs.cast.i.i.i63 = ptrtoint ptr %.sink80 to i32
  %sub.ptr.rhs.cast.i.i.i64 = ptrtoint ptr %.sink79 to i32
  %sub.ptr.sub.i.i.i65 = sub i32 %sub.ptr.lhs.cast.i.i.i63, %sub.ptr.rhs.cast.i.i.i64
  call void @_ZdlPvj(ptr noundef nonnull %.sink79, i32 noundef %sub.ptr.sub.i.i.i65) #29
  br label %ehcleanup

ehcleanup:                                        ; preds = %ehcleanup.sink.split, %lpad8, %lpad
  %.pn = phi { ptr, i32 } [ %9, %lpad ], [ %13, %lpad8 ], [ %.pn.ph, %ehcleanup.sink.split ]
  call void @llvm.lifetime.end.p0(ptr %macroCopies)
  %22 = load ptr, ptr %microCopies, align 4, !tbaa !349
  %cmp.not.i.i67 = icmp eq ptr %22, null
  br i1 %cmp.not.i.i67, label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit74, label %if.then.i.i68

if.then.i.i68:                                    ; preds = %ehcleanup
  store ptr %22, ptr %__end_4.i, align 4, !tbaa !353
  %23 = load ptr, ptr %__end_cap_.i17.i, align 4, !tbaa !201
  %sub.ptr.lhs.cast.i.i.i71 = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i.i72 = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i.i73 = sub i32 %sub.ptr.lhs.cast.i.i.i71, %sub.ptr.rhs.cast.i.i.i72
  call void @_ZdlPvj(ptr noundef nonnull %22, i32 noundef %sub.ptr.sub.i.i.i73) #29
  br label %_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit74

_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev.exit74: ; preds = %ehcleanup, %if.then.i.i68
  call void @llvm.lifetime.end.p0(ptr %microCopies)
  resume { ptr, i32 } %.pn
}

declare i32 @qurt_mem_cache_clean(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress
define hidden void @_ZNK13HexagonBuffer6CopyToEPvj(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %this, ptr noundef %data, i32 noundef %nbytes) local_unnamed_addr #6 align 2 {
entry:
  %data.addr = alloca ptr, align 4
  %src = alloca %struct.BufferSet, align 4
  %dest = alloca %struct.BufferSet, align 4
  store ptr %data, ptr %data.addr, align 4, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr %src)
  %0 = load ptr, ptr %this, align 4, !tbaa !334
  %__end_.i = getelementptr inbounds i8, ptr %this, i32 4
  %1 = load ptr, ptr %__end_.i, align 4, !tbaa !329
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  %nbytesPerAllocation_ = getelementptr inbounds i8, ptr %this, i32 28
  %2 = load i32, ptr %nbytesPerAllocation_, align 4, !tbaa !317
  store ptr %0, ptr %src, align 4, !tbaa !356
  %numRegions3.i = getelementptr inbounds i8, ptr %src, i32 4
  store i32 %sub.ptr.div.i, ptr %numRegions3.i, align 4, !tbaa !346
  %regionSizeBytes4.i = getelementptr inbounds i8, ptr %src, i32 8
  store i32 %2, ptr %regionSizeBytes4.i, align 4, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr %dest)
  store ptr %data.addr, ptr %dest, align 4, !tbaa !356
  %numRegions3.i5 = getelementptr inbounds i8, ptr %dest, i32 4
  store i32 1, ptr %numRegions3.i5, align 4, !tbaa !346
  %regionSizeBytes4.i6 = getelementptr inbounds i8, ptr %dest, i32 8
  store i32 %nbytes, ptr %regionSizeBytes4.i6, align 4, !tbaa !348
  call void @_Z30hexagonBufferCopyAcrossRegionsRK9BufferSetS1_jbb(ptr noundef nonnull align 4 dereferenceable(12) %dest, ptr noundef nonnull align 4 dereferenceable(12) %src, i32 noundef %nbytes, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr %dest)
  call void @llvm.lifetime.end.p0(ptr %src)
  ret void
}

; Function Attrs: mustprogress
define hidden void @_ZN13HexagonBuffer8CopyFromEPvj(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %this, ptr noundef %data, i32 noundef %nbytes) local_unnamed_addr #6 align 2 {
entry:
  %data.addr = alloca ptr, align 4
  %src = alloca %struct.BufferSet, align 4
  %dest = alloca %struct.BufferSet, align 4
  store ptr %data, ptr %data.addr, align 4, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr %src)
  store ptr %data.addr, ptr %src, align 4, !tbaa !356
  %numRegions3.i = getelementptr inbounds i8, ptr %src, i32 4
  store i32 1, ptr %numRegions3.i, align 4, !tbaa !346
  %regionSizeBytes4.i = getelementptr inbounds i8, ptr %src, i32 8
  store i32 %nbytes, ptr %regionSizeBytes4.i, align 4, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr %dest)
  %0 = load ptr, ptr %this, align 4, !tbaa !334
  %__end_.i = getelementptr inbounds i8, ptr %this, i32 4
  %1 = load ptr, ptr %__end_.i, align 4, !tbaa !329
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  %nbytesPerAllocation_ = getelementptr inbounds i8, ptr %this, i32 28
  %2 = load i32, ptr %nbytesPerAllocation_, align 4, !tbaa !317
  store ptr %0, ptr %dest, align 4, !tbaa !356
  %numRegions3.i5 = getelementptr inbounds i8, ptr %dest, i32 4
  store i32 %sub.ptr.div.i, ptr %numRegions3.i5, align 4, !tbaa !346
  %regionSizeBytes4.i6 = getelementptr inbounds i8, ptr %dest, i32 8
  store i32 %2, ptr %regionSizeBytes4.i6, align 4, !tbaa !348
  call void @_Z30hexagonBufferCopyAcrossRegionsRK9BufferSetS1_jbb(ptr noundef nonnull align 4 dereferenceable(12) %dest, ptr noundef nonnull align 4 dereferenceable(12) %src, i32 noundef %nbytes, i1 noundef zeroext false, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr %dest)
  call void @llvm.lifetime.end.p0(ptr %src)
  ret void
}

; Function Attrs: mustprogress
define hidden void @_ZN13HexagonBuffer8CopyFromERKS_j(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %this, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(36) %other, i32 noundef %nbytes) local_unnamed_addr #6 align 2 {
entry:
  %src = alloca %struct.BufferSet, align 4
  %dest = alloca %struct.BufferSet, align 4
  call void @llvm.lifetime.start.p0(ptr %src)
  %0 = load ptr, ptr %other, align 4, !tbaa !334
  %__end_.i = getelementptr inbounds i8, ptr %other, i32 4
  %1 = load ptr, ptr %__end_.i, align 4, !tbaa !329
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  %nbytesPerAllocation_ = getelementptr inbounds i8, ptr %other, i32 28
  %2 = load i32, ptr %nbytesPerAllocation_, align 4, !tbaa !317
  store ptr %0, ptr %src, align 4, !tbaa !356
  %numRegions3.i = getelementptr inbounds i8, ptr %src, i32 4
  store i32 %sub.ptr.div.i, ptr %numRegions3.i, align 4, !tbaa !346
  %regionSizeBytes4.i = getelementptr inbounds i8, ptr %src, i32 8
  store i32 %2, ptr %regionSizeBytes4.i, align 4, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr %dest)
  %3 = load ptr, ptr %this, align 4, !tbaa !334
  %__end_.i11 = getelementptr inbounds i8, ptr %this, i32 4
  %4 = load ptr, ptr %__end_.i11, align 4, !tbaa !329
  %sub.ptr.lhs.cast.i12 = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i13 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i14 = sub i32 %sub.ptr.lhs.cast.i12, %sub.ptr.rhs.cast.i13
  %sub.ptr.div.i15 = ashr exact i32 %sub.ptr.sub.i14, 2
  %nbytesPerAllocation_8 = getelementptr inbounds i8, ptr %this, i32 28
  %5 = load i32, ptr %nbytesPerAllocation_8, align 4, !tbaa !317
  store ptr %3, ptr %dest, align 4, !tbaa !356
  %numRegions3.i16 = getelementptr inbounds i8, ptr %dest, i32 4
  store i32 %sub.ptr.div.i15, ptr %numRegions3.i16, align 4, !tbaa !346
  %regionSizeBytes4.i17 = getelementptr inbounds i8, ptr %dest, i32 8
  store i32 %5, ptr %regionSizeBytes4.i17, align 4, !tbaa !348
  call void @_Z30hexagonBufferCopyAcrossRegionsRK9BufferSetS1_jbb(ptr noundef nonnull align 4 dereferenceable(12) %dest, ptr noundef nonnull align 4 dereferenceable(12) %src, i32 noundef %nbytes, i1 noundef zeroext true, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr %dest)
  call void @llvm.lifetime.end.p0(ptr %src)
  ret void
}

attributes #0 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "target-features"="+hvxv75,+hvx-length128b" }
attributes #1 = { "target-features"="+hvxv75,+hvx-length128b" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint mustprogress "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #11 = { inlinehint mustprogress nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #12 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #13 = { mustprogress noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #14 = { inlinehint mustprogress noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #15 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #19 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #25 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv75" "target-features"="+hvx-length128b,+hvx-qfloat,+hvxv75,+v75,-long-calls,-small-data" }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!35}
!llvm.linker.options = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = distinct !{i32 5, !"CG MDInfo", !5}
!5 = distinct !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !6, !7, !9, !10, !14, !15, !16, !17, !12, !13, !23, !19, !24, !25, !6, !7, !26, !6, !7, !27, !9, !28, !29, !14, !15, !16, !17, !30, !31, !32, !33, !34}
!6 = !{!"F", !"no_filename_available", !"", !"", i1 false, !""}
!7 = !{!"C", !"_ZNSt3__18ios_base4InitD1Ev", !"(void)", !"()", i1 true, !""}
!8 = !{!"C", !"_ZN8VtcmPoolC2Ev", !"(void)", !"()", i1 true, !""}
!9 = !{!"C", !"__gxx_personality_v0", !"(i32)", !"(...)", i1 true, !""}
!10 = !{!"C", !"HAP_debug_v2", !"(void)", !"(i32, ptr, i32, ptr, ...)", i1 true, !""}
!11 = !{!"C", !"_ZN8VtcmPoolD2Ev", !"(void)", !"()", i1 true, !""}
!12 = !{!"C", !"compute_resource_attr_init_v2", !"(i32)", !"(ptr, i32, i32)", i1 true, !""}
!13 = !{!"C", !"compute_resource_attr_init", !"(i32)", !"(ptr)", i1 true, !""}
!14 = !{!"C", !"_ZNSt12length_errorD1Ev", !"(void)", !"()", i1 true, !""}
!15 = !{!"C", !"_ZNSt12length_errorD0Ev", !"(void)", !"()", i1 true, !""}
!16 = !{!"C", !"_ZNKSt11logic_error4whatEv", !"(ptr)", !"()", i1 true, !""}
!17 = !{!"C", !"_ZNSt20bad_array_new_lengthD1Ev", !"(void)", !"()", i1 true, !""}
!18 = !{!"C", !"compute_resource_attr_set_vtcm_param_v2", !"(i32)", !"(ptr, i32, i32, i32)", i1 true, !""}
!19 = !{!"C", !"compute_resource_acquire", !"(i32)", !"(ptr, i32)", i1 true, !""}
!20 = !{!"C", !"compute_resource_attr_get_vtcm_ptr_v2", !"(i32)", !"(ptr, ptr, ptr)", i1 true, !""}
!21 = !{!"C", !"compute_resource_release", !"(i32)", !"(i32)", i1 true, !""}
!22 = !{!"C", !"_GLOBAL__sub_I_VTCMPool.cpp", !"(void)", !"()", i1 true, !""}
!23 = !{!"C", !"compute_resource_attr_set_hmx_param", !"(i32)", !"(ptr, i8)", i1 true, !""}
!24 = !{!"C", !"compute_resource_hmx_lock", !"(i32)", !"(i32)", i1 true, !""}
!25 = !{!"C", !"_GLOBAL__sub_I_HexagonAPI.cpp", !"(void)", !"()", i1 true, !""}
!26 = !{!"C", !"_GLOBAL__sub_I_HexagonCAPI.cpp", !"(void)", !"()", i1 true, !""}
!27 = !{!"C", !"_ZN13HexagonBufferC2Ejjb", !"(void)", !"(i32, i32, i1)", i1 true, !""}
!28 = !{!"C", !"_ZN13HexagonBufferC2Ejjjb", !"(void)", !"(i32, i32, i32, i1)", i1 true, !""}
!29 = !{!"C", !"_ZN13HexagonBufferD2Ev", !"(void)", !"()", i1 true, !""}
!30 = !{!"C", !"_ZN13DDRAllocationD2Ev", !"(void)", !"()", i1 true, !""}
!31 = !{!"C", !"_ZN13DDRAllocationD0Ev", !"(void)", !"()", i1 true, !""}
!32 = !{!"C", !"_ZN14VTCMAllocationD2Ev", !"(void)", !"()", i1 true, !""}
!33 = !{!"C", !"_ZN14VTCMAllocationD0Ev", !"(void)", !"()", i1 true, !""}
!34 = !{!"C", !"_GLOBAL__sub_I_HexagonBuffer.cpp", !"(void)", !"()", i1 true, !""}
!35 = !{!"QuIC LLVM Hexagon Clang version 19.0.07"}
!36 = !{!"$_ZN8VtcmPoolC2Ev", !".text"}
!37 = !{!"$_ZL13_HAP_debug_v2iPKciS0_z", !".text"}
!38 = !{!"$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev", !".text._ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne190000Ev"}
!39 = !{!"$_Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE", !".text._Z11CheckFailedPKcS0_iRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE"}
!40 = !{!"$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev", !".text._ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev"}
!41 = !{!"$_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEED2B8ne190000Ev", !".text._ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEED2B8ne190000Ev"}
!42 = !{!"$_ZN8VtcmPoolD2Ev", !".text"}
!43 = !{!"$__clang_call_terminate", !".text.__clang_call_terminate"}
!44 = !{!"$_ZN8VtcmPool8AllocateEj", !".text"}
!45 = !{!"$_ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE7emplaceIJS3_EEENS_11__wrap_iterIPS3_EENS8_IPKS3_EEDpOT_", !".text._ZNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE7emplaceIJS3_EEENS_11__wrap_iterIPS3_EENS8_IPKS3_EEDpOT_"}
!46 = !{!"$_ZN8VtcmPool4FreeEPvj", !".text"}
!47 = !{!"$_ZNSt3__14endlB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_", !".text._ZNSt3__14endlB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_"}
!48 = !{!"$_ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j", !".text._ZNSt3__124__put_character_sequenceB8ne190000IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_j"}
!49 = !{!"$_ZNSt3__116__pad_and_outputB8ne190000IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_", !".text._ZNSt3__116__pad_and_outputB8ne190000IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_"}
!50 = !{!"$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000Ejc", !".text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000Ejc"}
!51 = !{!"$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190000Ev", !".text._ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190000Ev"}
!52 = !{!"$_ZNSt3__120__throw_length_errorB8ne190000EPKc", !".text._ZNSt3__120__throw_length_errorB8ne190000EPKc"}
!53 = !{!"$_ZNSt12length_errorC2B8ne190000EPKc", !".text._ZNSt12length_errorC2B8ne190000EPKc"}
!54 = !{!"$_ZSt28__throw_bad_array_new_lengthB8ne190000v", !".text._ZSt28__throw_bad_array_new_lengthB8ne190000v"}
!55 = !{!"$_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEED2Ev", !".text._ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEED2Ev"}
!56 = !{!"$_ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE20__throw_length_errorB8ne190000Ev", !".text._ZNKSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEE20__throw_length_errorB8ne190000Ev"}
!57 = !{!"$_ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE12emplace_backIJS3_EEEvDpOT_", !".text._ZNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEE12emplace_backIJS3_EEEvDpOT_"}
!58 = !{!"$_GLOBAL__sub_I_VTCMPool.cpp", !".text"}
!59 = !{!"$_ZL9_Ios_init", !".bss"}
!60 = !{!"$.str", !".rodata.str1.1"}
!61 = !{!"$.str.1", !".rodata.str1.1"}
!62 = !{!"$.str.2", !".rodata.str1.1"}
!63 = !{!"$.str.3", !".rodata.str1.1"}
!64 = !{!"$.str.4", !".rodata.str1.1"}
!65 = !{!"$.str.5", !".rodata.str1.1"}
!66 = !{!"$.str.6", !".rodata.str1.1"}
!67 = !{!"$.str.7", !".rodata.str1.1"}
!68 = !{!"$.str.8", !".rodata.str1.1"}
!69 = !{!"$.str.9", !".rodata.str1.1"}
!70 = !{!"$.str.10", !".rodata.str1.1"}
!71 = !{!"$.str.11", !".rodata.str1.1"}
!72 = !{!"$.str.12", !".rodata.str1.1"}
!73 = !{!"$.str.13", !".rodata.str1.1"}
!74 = !{!"$.str.14", !".rodata.str1.1"}
!75 = !{!"$.str.15", !".rodata.str1.1"}
!76 = !{!"$.str.16", !".rodata.str1.1"}
!77 = !{!"$.str.17", !".rodata.str1.1"}
!78 = !{!"$.str.18", !".rodata.str1.1"}
!79 = !{!"$.str.19", !".rodata.str1.1"}
!80 = !{!"$.str.20", !".rodata.str1.1"}
!81 = !{!"$.str.21", !".rodata.str1.1"}
!82 = !{!"$.str.22", !".rodata.str1.1"}
!83 = !{!"$.str.23", !".rodata.str1.1"}
!84 = !{!"$.str.24", !".rodata.str1.1"}
!85 = !{!"$.str.25", !".rodata.str1.1"}
!86 = !{!"$.str.26", !".rodata.str1.1"}
!87 = !{!"$.str.27", !".rodata.str1.1"}
!88 = !{!"$.str.28", !".rodata.str1.1"}
!89 = !{!"$.str.29", !".rodata.str1.1"}
!90 = !{!"$.str.30", !".rodata.str1.1"}
!91 = !{!"$.str.31", !".rodata.str1.1"}
!92 = !{!"$.str.32", !".rodata.str1.1"}
!93 = !{!"$.str.33", !".rodata.str1.1"}
!94 = !{!"$.str.34", !".rodata.str1.1"}
!95 = !{!"$.str.35", !".rodata.str1.1"}
!96 = !{!"$.str.36", !".rodata.str1.1"}
!97 = !{!"$.str.37", !".rodata.str1.1"}
!98 = !{!"$_ZN8VtcmPoolC1Ev", !".text"}
!99 = !{!"$_ZN8VtcmPoolD1Ev", !".text"}
!100 = !{!"$_ZN10HexagonAPI6GlobalEv", !".text"}
!101 = !{!"$_ZN10HexagonAPIC2Ev", !".text._ZN10HexagonAPIC2Ev"}
!102 = !{!"$_ZN10HexagonAPI5AllocEjyb", !".text"}
!103 = !{!"$_ZN13BufferManager21AllocateHexagonBufferIJRjjRbEEEPvDpOT_", !".text._ZN13BufferManager21AllocateHexagonBufferIJRjjRbEEEPvDpOT_"}
!104 = !{!"$_ZN10HexagonAPI26initialize_and_acquire_hmxEv", !".text"}
!105 = !{!"$_ZN10HexagonAPI5AllocEjjyb", !".text"}
!106 = !{!"$_ZN13BufferManager21AllocateHexagonBufferIJRjS1_jRbEEEPvDpOT_", !".text._ZN13BufferManager21AllocateHexagonBufferIJRjS1_jRbEEEPvDpOT_"}
!107 = !{!"$_ZN10HexagonAPI4FreeEPv", !".text"}
!108 = !{!"$_ZN13BufferManager17FreeHexagonBufferEPv", !".text._ZN13BufferManager17FreeHexagonBufferEPv"}
!109 = !{!"$_ZN10HexagonAPI4CopyEPvS0_j", !".text"}
!110 = !{!"$_ZN13BufferManager4CopyEPvS0_j", !".text._ZN13BufferManager4CopyEPvS0_j"}
!111 = !{!"$_ZN10HexagonAPI16AcquireResourcesEv", !".text._ZN10HexagonAPI16AcquireResourcesEv"}
!112 = !{!"$_ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEED2B8ne190000Ev", !".text._ZNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEED2B8ne190000Ev"}
!113 = !{!"$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000ILi0EEEPKc", !".text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190000ILi0EEEPKc"}
!114 = !{!"$_ZNKSt3__114default_deleteI13BufferManagerEclB8ne190000EPS1_", !".text._ZNKSt3__114default_deleteI13BufferManagerEclB8ne190000EPS1_"}
!115 = !{!"$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_S2_EEEE", !".text._ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_S2_EEEE"}
!116 = !{!"$_ZNSt3__14pairIKPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEED2Ev", !".text._ZNSt3__14pairIKPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEED2Ev"}
!117 = !{!"$_ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev", !".text._ZNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEED2B8ne190000Ev"}
!118 = !{!"$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE4findIS2_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEERKT_", !".text._ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE4findIS2_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEERKT_"}
!119 = !{!"$_ZNKSt3__121__murmur2_or_cityhashIjLj32EEclB8ne190000EPKvj", !".text._ZNKSt3__121__murmur2_or_cityhashIjLj32EEclB8ne190000EPKvj"}
!120 = !{!"$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE6removeENS_21__hash_const_iteratorIPNS_11__hash_nodeIS8_S2_EEEE", !".text._ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE6removeENS_21__hash_const_iteratorIPNS_11__hash_nodeIS8_S2_EEEE"}
!121 = !{!"$_ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS6_EEEEEES4_EEEEEclB8ne190000EPSB_", !".text._ZNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS6_EEEEEES4_EEEEEclB8ne190000EPSB_"}
!122 = !{!"$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE25__emplace_unique_key_argsIS2_JNS_4pairIKS2_S7_EEEEENSL_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEEbEERKT_DpOT0_", !".text._ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE25__emplace_unique_key_argsIS2_JNS_4pairIKS2_S7_EEEEENSL_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_S2_EEEEbEERKT_DpOT0_"}
!123 = !{!"$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE8__rehashILb1EEEvj", !".text._ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE8__rehashILb1EEEvj"}
!124 = !{!"$_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE11__do_rehashILb1EEEvj", !".text._ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE11__do_rehashILb1EEEvj"}
!125 = !{!"$_GLOBAL__sub_I_HexagonAPI.cpp", !".text"}
!126 = !{!"$_ZZN10HexagonAPI6GlobalEvE4inst", !".bss"}
!127 = !{!"$_ZGVZN10HexagonAPI6GlobalEvE4inst", !".bss._ZGVZN10HexagonAPI6GlobalEvE4inst"}
!128 = !{!"$hexagon_runtime_alloc_1d", !".text"}
!129 = !{!"$hexagon_runtime_alloc_2d", !".text"}
!130 = !{!"$hexagon_runtime_free_1d", !".text"}
!131 = !{!"$hexagon_runtime_free_2d", !".text"}
!132 = !{!"$hexagon_runtime_copy", !".text"}
!133 = !{!"$_GLOBAL__sub_I_HexagonCAPI.cpp", !".text"}
!134 = !{!"$_Z9AllocatorILN13HexagonBuffer12StorageScopeE0EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj", !".text"}
!135 = !{!"$_Z9AllocatorILN13HexagonBuffer12StorageScopeE1EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj", !".text"}
!136 = !{!"$_ZN13HexagonBufferC2Ejjb", !".text"}
!137 = !{!"$_ZN13HexagonBuffer15SetStorageScopeEb", !".text"}
!138 = !{!"$_ZNK13HexagonBuffer15GetStorageScopeEv", !".text"}
!139 = !{!"$_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE9push_backB8ne190000EOS5_", !".text._ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE9push_backB8ne190000EOS5_"}
!140 = !{!"$_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne190000Ev", !".text._ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne190000Ev"}
!141 = !{!"$_ZN13HexagonBufferC2Ejjjb", !".text"}
!142 = !{!"$_ZN13HexagonBufferD2Ev", !".text"}
!143 = !{!"$_ZN13HexagonBuffer10GetPointerEv", !".text"}
!144 = !{!"$_ZN9BufferSet12MemoryCopiesERKS_S1_j", !".text"}
!145 = !{!"$_ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev", !".text._ZNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEED2B8ne190000Ev"}
!146 = !{!"$_ZN10MemoryCopy13MergeAdjacentENSt3__16vectorIS_NS0_9allocatorIS_EEEE", !".text"}
!147 = !{!"$_Z30hexagonBufferCopyAcrossRegionsRK9BufferSetS1_jbb", !".text"}
!148 = !{!"$_ZNK13HexagonBuffer6CopyToEPvj", !".text"}
!149 = !{!"$_ZN13HexagonBuffer8CopyFromEPvj", !".text"}
!150 = !{!"$_ZN13HexagonBuffer8CopyFromERKS_j", !".text"}
!151 = !{!"$_ZN13DDRAllocationC2Ejj", !".text._ZN13DDRAllocationC2Ejj"}
!152 = !{!"$_ZN13DDRAllocationD2Ev", !".text._ZN13DDRAllocationD2Ev"}
!153 = !{!"$_ZN13DDRAllocationD0Ev", !".text._ZN13DDRAllocationD0Ev"}
!154 = !{!"$_ZN14VTCMAllocationC2Ejj", !".text._ZN14VTCMAllocationC2Ejj"}
!155 = !{!"$_ZN10HexagonAPI11getVtcmPoolEv", !".text._ZN10HexagonAPI11getVtcmPoolEv"}
!156 = !{!"$_ZN14VTCMAllocationD2Ev", !".text._ZN14VTCMAllocationD2Ev"}
!157 = !{!"$_ZN14VTCMAllocationD0Ev", !".text._ZN14VTCMAllocationD0Ev"}
!158 = !{!"$_ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE16__destroy_vectorclB8ne190000Ev", !".text._ZNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE16__destroy_vectorclB8ne190000Ev"}
!159 = !{!"$_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev", !".text._ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev"}
!160 = !{!"$_ZNKSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE20__throw_length_errorB8ne190000Ev", !".text._ZNKSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE20__throw_length_errorB8ne190000Ev"}
!161 = !{!"$_ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev", !".text._ZNKSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEE20__throw_length_errorB8ne190000Ev"}
!162 = !{!"$_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_Lb0EEEvT1_SA_T0_NS_15iterator_traitsISA_E15difference_typeEb", !".text"}
!163 = !{!"$_ZNSt3__17__sort3B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEjT1_SA_SA_T0_", !".text"}
!164 = !{!"$_ZNSt3__127__insertion_sort_incompleteB8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEbT1_SA_T0_", !".text"}
!165 = !{!"$_ZNSt3__17__sort4B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_SA_SA_SA_T0_", !".text"}
!166 = !{!"$_ZNSt3__17__sort5B8ne190000INS_17_ClassicAlgPolicyERZN10MemoryCopy13MergeAdjacentENS_6vectorIS2_NS_9allocatorIS2_EEEEE3$_0PS2_EEvT1_SA_SA_SA_SA_T0_", !".text"}
!167 = !{!"$_GLOBAL__sub_I_HexagonBuffer.cpp", !".text"}
!168 = !{!"$_ZTV13DDRAllocation", !".data.rel.ro._ZTV13DDRAllocation"}
!169 = !{!"$_ZTS13DDRAllocation", !".rodata._ZTS13DDRAllocation"}
!170 = !{!"$_ZTS10Allocation", !".rodata._ZTS10Allocation"}
!171 = !{!"$_ZTI10Allocation", !".data.rel.ro._ZTI10Allocation"}
!172 = !{!"$_ZTI13DDRAllocation", !".data.rel.ro._ZTI13DDRAllocation"}
!173 = !{!"$_ZTV14VTCMAllocation", !".data.rel.ro._ZTV14VTCMAllocation"}
!174 = !{!"$_ZTS14VTCMAllocation", !".rodata._ZTS14VTCMAllocation"}
!175 = !{!"$_ZTI14VTCMAllocation", !".data.rel.ro._ZTI14VTCMAllocation"}
!176 = !{!"$_ZN13HexagonBufferC1Ejjb", !".text"}
!177 = !{!"$_ZN13HexagonBufferC1Ejjjb", !".text"}
!178 = !{!"$_ZN13HexagonBufferD1Ev", !".text"}
!179 = !{!180, !181, i64 4}
!180 = !{!"_ZTS23compute_res_vtcm_page_t", !181, i64 0, !181, i64 4, !182, i64 8}
!181 = !{!"int", !182, i64 0}
!182 = !{!"omnipotent char", !183, i64 0}
!183 = !{!"Simple C++ TBAA"}
!184 = !{!181, !181, i64 0}
!185 = !{!186, !181, i64 0}
!186 = !{!"_ZTS27compute_res_vtcm_page_def_t", !181, i64 0, !181, i64 4}
!187 = distinct !{!187, !188}
!188 = !{!"llvm.loop.mustprogress"}
!189 = !{!182, !182, i64 0}
!190 = !{!191, !191, i64 0}
!191 = !{!"vtable pointer", !183, i64 0}
!192 = !{!193, !181, i64 0}
!193 = !{!"_ZTS8VtcmPool", !181, i64 0, !181, i64 4, !194, i64 8, !181, i64 12, !195, i64 16, !195, i64 28}
!194 = !{!"any pointer", !182, i64 0}
!195 = !{!"_ZTSNSt3__16vectorINS_4pairIPcjEENS_9allocatorIS3_EEEE", !194, i64 0, !194, i64 4, !196, i64 8}
!196 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairIPcjEENS_9allocatorIS3_EEEE", !197, i64 0}
!197 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairIPcjEELi0ELb0EEE", !194, i64 0}
!198 = !{!193, !181, i64 12}
!199 = !{!193, !194, i64 8}
!200 = !{!195, !194, i64 4}
!201 = !{!194, !194, i64 0}
!202 = !{!203, !194, i64 28}
!203 = !{!"_ZTSNSt3__18ios_baseE", !181, i64 4, !181, i64 8, !181, i64 12, !181, i64 16, !181, i64 20, !194, i64 24, !194, i64 28, !194, i64 32, !194, i64 36, !181, i64 40, !181, i64 44, !194, i64 48, !181, i64 52, !181, i64 56, !194, i64 60, !181, i64 64, !181, i64 68}
!204 = !{!205, !194, i64 72}
!205 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !203, i64 0, !194, i64 72, !206, i64 76}
!206 = !{!"_ZTSNSt3__118_SentinelValueFillINS_11char_traitsIcEEEE", !181, i64 0}
!207 = !{!206, !181, i64 0}
!208 = !{!209, !181, i64 48}
!209 = !{!"_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !210, i64 0, !212, i64 32, !194, i64 44, !181, i64 48}
!210 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !211, i64 4, !194, i64 8, !194, i64 12, !194, i64 16, !194, i64 20, !194, i64 24, !194, i64 28}
!211 = !{!"_ZTSNSt3__16localeE", !194, i64 0}
!212 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !213, i64 0}
!213 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !214, i64 0}
!214 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !182, i64 0}
!215 = !{!216, !217, i64 0}
!216 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !217, i64 0, !194, i64 4}
!217 = !{!"bool", !182, i64 0}
!218 = !{i8 0, i8 2}
!219 = !{}
!220 = !{!203, !194, i64 24}
!221 = !{!203, !181, i64 4}
!222 = !{!203, !181, i64 16}
!223 = !{!195, !194, i64 0}
!224 = !{!203, !181, i64 12}
!225 = !{!226, !181, i64 4}
!226 = !{!"_ZTSNSt3__14pairIPcjEE", !194, i64 0, !181, i64 4}
!227 = !{!226, !194, i64 0}
!228 = distinct !{!228, !188}
!229 = distinct !{!229, !188}
!230 = distinct !{!230, !188}
!231 = !{!232, !194, i64 0}
!232 = !{!"_ZTSNSt3__114__split_bufferINS_4pairIPcjEERNS_9allocatorIS3_EEEE", !194, i64 0, !194, i64 4, !194, i64 8, !233, i64 12}
!233 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairIPcjEERNS_9allocatorIS3_EEEE", !197, i64 0, !234, i64 4}
!234 = !{!"_ZTSNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIPcjEEEELi1ELb0EEE", !194, i64 0}
!235 = !{!232, !194, i64 8}
!236 = !{!232, !194, i64 4}
!237 = distinct !{!237, !188}
!238 = distinct !{!238, !188}
!239 = distinct !{!239, !188}
!240 = !{!"branch_weights", i32 1, i32 1048575}
!241 = !{!242, !194, i64 0}
!242 = !{!"_ZTSNSt3__122__compressed_pair_elemIP13BufferManagerLi0ELb0EEE", !194, i64 0}
!243 = !{!244, !194, i64 0}
!244 = !{!"_ZTSNSt3__122__compressed_pair_elemIP8VtcmPoolLi0ELb0EEE", !194, i64 0}
!245 = !{!246, !251, i64 8}
!246 = !{!"_ZTS10HexagonAPI", !247, i64 0, !249, i64 4, !251, i64 8}
!247 = !{!"_ZTSNSt3__110unique_ptrI13BufferManagerNS_14default_deleteIS1_EEEE", !248, i64 0}
!248 = !{!"_ZTSNSt3__117__compressed_pairIP13BufferManagerNS_14default_deleteIS1_EEEE", !242, i64 0}
!249 = !{!"_ZTSNSt3__110unique_ptrI8VtcmPoolNS_14default_deleteIS1_EEEE", !250, i64 0}
!250 = !{!"_ZTSNSt3__117__compressed_pairIP8VtcmPoolNS_14default_deleteIS1_EEEE", !244, i64 0}
!251 = !{!"long", !182, i64 0}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZNSt3__111make_uniqueB8ne190000I8VtcmPoolJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: %agg.result"}
!254 = distinct !{!254, !"_ZNSt3__111make_uniqueB8ne190000I8VtcmPoolJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZNSt3__111make_uniqueB8ne190000I13BufferManagerJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: %agg.result"}
!257 = distinct !{!257, !"_ZNSt3__111make_uniqueB8ne190000I13BufferManagerJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!258 = !{!259, !260, i64 0}
!259 = !{!"_ZTSNSt3__122__compressed_pair_elemIfLi0ELb0EEE", !260, i64 0}
!260 = !{!"float", !182, i64 0}
!261 = !{!262, !194, i64 0}
!262 = !{!"_ZTSNSt3__116__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS5_EEEEEES3_EEEE", !194, i64 0}
!263 = distinct !{!263, !188}
!264 = !{!265, !266, i64 0}
!265 = !{!"_ZTS19HAP_power_request_t", !266, i64 0, !182, i64 8}
!266 = !{!"_ZTS22HAP_Power_request_type", !182, i64 0}
!267 = !{!217, !217, i64 0}
!268 = !{!269}
!269 = distinct !{!269, !270, !"_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjjRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: %agg.result"}
!270 = distinct !{!270, !"_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjjRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!271 = !{!272, !194, i64 0}
!272 = !{!"_ZTSNSt3__122__compressed_pair_elemIP13HexagonBufferLi0ELb0EEE", !194, i64 0}
!273 = !{!274, !194, i64 0}
!274 = !{!"_ZTSNSt3__14pairIKPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEE", !194, i64 0, !275, i64 4}
!275 = !{!"_ZTSNSt3__110unique_ptrI13HexagonBufferNS_14default_deleteIS1_EEEE", !276, i64 0}
!276 = !{!"_ZTSNSt3__117__compressed_pairIP13HexagonBufferNS_14default_deleteIS1_EEEE", !272, i64 0}
!277 = !{!278, !181, i64 4}
!278 = !{!"_ZTSNSt3__111__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEES2_EE", !262, i64 0, !181, i64 4, !182, i64 8}
!279 = distinct !{!279, !188}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE21__construct_node_hashINS_4pairIKS2_S7_EEJEEENS3_INS_11__hash_nodeIS8_S2_EENS_22__hash_node_destructorINSH_ISP_EEEEEEjOT_DpOT0_: %agg.result"}
!282 = distinct !{!282, !"_ZNSt3__112__hash_tableINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS4_EEEEEENS_22__unordered_map_hasherIS2_S8_NS_4hashIS2_EENS_8equal_toIS2_EELb1EEENS_21__unordered_map_equalIS2_S8_SD_SB_Lb1EEENS_9allocatorIS8_EEE21__construct_node_hashINS_4pairIKS2_S7_EEJEEENS3_INS_11__hash_nodeIS8_S2_EENS_22__hash_node_destructorINSH_ISP_EEEEEEjOT_DpOT0_"}
!283 = !{!284, !217, i64 4}
!284 = !{!"_ZTSNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS6_EEEEEES4_EEEEEE", !194, i64 0, !217, i64 4}
!285 = !{!260, !260, i64 0}
!286 = distinct !{!286, !188}
!287 = distinct !{!287, !188}
!288 = distinct !{!288, !188}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjS2_jRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: %agg.result"}
!291 = distinct !{!291, !"_ZNSt3__111make_uniqueB8ne190000I13HexagonBufferJRjS2_jRbEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!292 = distinct !{!292, !188}
!293 = distinct !{!293, !188}
!294 = !{!295, !194, i64 0}
!295 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_11__hash_nodeINS_17__hash_value_typeIPvNS_10unique_ptrI13HexagonBufferNS_14default_deleteIS5_EEEEEES3_EELi0ELb0EEE", !194, i64 0}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZNSt3__111make_uniqueB8ne190000I13DDRAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: %agg.result"}
!298 = distinct !{!298, !"_ZNSt3__111make_uniqueB8ne190000I13DDRAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!299 = !{!300, !194, i64 0}
!300 = !{!"_ZTSNSt3__122__compressed_pair_elemIP10AllocationLi0ELb0EEE", !194, i64 0}
!301 = !{!302, !194, i64 4}
!302 = !{!"_ZTS10Allocation", !194, i64 4, !181, i64 8, !181, i64 12}
!303 = !{!302, !181, i64 8}
!304 = !{!302, !181, i64 12}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZNSt3__111make_uniqueB8ne190000I14VTCMAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: %agg.result"}
!307 = distinct !{!307, !"_ZNSt3__111make_uniqueB8ne190000I14VTCMAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!308 = !{!309, !181, i64 24}
!309 = !{!"_ZTS13HexagonBuffer", !310, i64 0, !313, i64 12, !181, i64 24, !181, i64 28, !316, i64 32}
!310 = !{!"_ZTSNSt3__16vectorIPvNS_9allocatorIS1_EEEE", !194, i64 0, !194, i64 4, !311, i64 8}
!311 = !{!"_ZTSNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEE", !312, i64 0}
!312 = !{!"_ZTSNSt3__122__compressed_pair_elemIPPvLi0ELb0EEE", !194, i64 0}
!313 = !{!"_ZTSNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEEE", !194, i64 0, !194, i64 4, !314, i64 8}
!314 = !{!"_ZTSNSt3__117__compressed_pairIPNS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEEE", !315, i64 0}
!315 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEELi0ELb0EEE", !194, i64 0}
!316 = !{!"_ZTSN13HexagonBuffer12StorageScopeE", !182, i64 0}
!317 = !{!309, !181, i64 28}
!318 = !{!309, !316, i64 32}
!319 = !{!320, !322}
!320 = distinct !{!320, !321, !"_ZNSt3__111make_uniqueB8ne190000I13DDRAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: %agg.result"}
!321 = distinct !{!321, !"_ZNSt3__111make_uniqueB8ne190000I13DDRAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!322 = distinct !{!322, !323, !"_Z9AllocatorILN13HexagonBuffer12StorageScopeE0EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj: %agg.result"}
!323 = distinct !{!323, !"_Z9AllocatorILN13HexagonBuffer12StorageScopeE0EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj"}
!324 = !{!325, !327}
!325 = distinct !{!325, !326, !"_ZNSt3__111make_uniqueB8ne190000I14VTCMAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: %agg.result"}
!326 = distinct !{!326, !"_ZNSt3__111make_uniqueB8ne190000I14VTCMAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!327 = distinct !{!327, !328, !"_Z9AllocatorILN13HexagonBuffer12StorageScopeE1EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj: %agg.result"}
!328 = distinct !{!328, !"_Z9AllocatorILN13HexagonBuffer12StorageScopeE1EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj"}
!329 = !{!310, !194, i64 4}
!330 = !{!313, !194, i64 4}
!331 = !{!313, !194, i64 0}
!332 = !{!333, !194, i64 0}
!333 = !{!"_ZTSNSt3__16vectorINS_10unique_ptrI10AllocationNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE16__destroy_vectorE", !194, i64 0}
!334 = !{!310, !194, i64 0}
!335 = !{!336, !338}
!336 = distinct !{!336, !337, !"_ZNSt3__111make_uniqueB8ne190000I13DDRAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: %agg.result"}
!337 = distinct !{!337, !"_ZNSt3__111make_uniqueB8ne190000I13DDRAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!338 = distinct !{!338, !339, !"_Z9AllocatorILN13HexagonBuffer12StorageScopeE0EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj: %agg.result"}
!339 = distinct !{!339, !"_Z9AllocatorILN13HexagonBuffer12StorageScopeE0EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj"}
!340 = !{!341, !343}
!341 = distinct !{!341, !342, !"_ZNSt3__111make_uniqueB8ne190000I14VTCMAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: %agg.result"}
!342 = distinct !{!342, !"_ZNSt3__111make_uniqueB8ne190000I14VTCMAllocationJRjS2_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!343 = distinct !{!343, !344, !"_Z9AllocatorILN13HexagonBuffer12StorageScopeE1EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj: %agg.result"}
!344 = distinct !{!344, !"_Z9AllocatorILN13HexagonBuffer12StorageScopeE1EENSt3__110unique_ptrI10AllocationNS2_14default_deleteIS4_EEEEjj"}
!345 = distinct !{!345, !188}
!346 = !{!347, !181, i64 4}
!347 = !{!"_ZTS9BufferSet", !194, i64 0, !181, i64 4, !181, i64 8}
!348 = !{!347, !181, i64 8}
!349 = !{!350, !194, i64 0}
!350 = !{!"_ZTSNSt3__16vectorI10MemoryCopyNS_9allocatorIS1_EEEE", !194, i64 0, !194, i64 4, !351, i64 8}
!351 = !{!"_ZTSNSt3__117__compressed_pairIP10MemoryCopyNS_9allocatorIS1_EEEE", !352, i64 0}
!352 = !{!"_ZTSNSt3__122__compressed_pair_elemIP10MemoryCopyLi0ELb0EEE", !194, i64 0}
!353 = !{!350, !194, i64 4}
!354 = !{!352, !194, i64 0}
!355 = distinct !{!355, !188}
!356 = !{!347, !194, i64 0}
!357 = distinct !{!357, !188}
!358 = !{!359, !194, i64 4}
!359 = !{!"_ZTS10MemoryCopy", !194, i64 0, !194, i64 4, !181, i64 8}
!360 = !{!359, !181, i64 8}
!361 = !{!359, !194, i64 0}
!362 = !{i64 0, i64 4, !201, i64 4, i64 4, !201, i64 8, i64 4, !184}
!363 = distinct !{!363, !188}
!364 = distinct !{!364, !188}
!365 = distinct !{!365, !188}
!366 = distinct !{!366, !188}
!367 = distinct !{!367, !188}
!368 = distinct !{!368, !188}
!369 = distinct !{!369, !188}
!370 = distinct !{!370, !188}
!371 = distinct !{!371, !188}
!372 = distinct !{!372, !188}
!373 = distinct !{!373, !188}
!374 = distinct !{!374, !188}
!375 = distinct !{!375, !188}
!376 = distinct !{!376, !188}
!377 = distinct !{!377, !188}
!378 = distinct !{!378, !188}
!379 = distinct !{!379, !188}
!380 = distinct !{!380, !188}
!381 = distinct !{!381, !188}
!382 = distinct !{!382, !188}
!383 = distinct !{!383, !188}
!384 = distinct !{!384, !188}
!385 = distinct !{!385, !188}
!386 = distinct !{!386, !188}
