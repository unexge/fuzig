//
// Generated with `zig translate-c -DFUSE_USE_VERSION=35 -lc /usr/include/fuse3/fuse.h  > lib/libfuse.zig`
//
pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const struct_fuse_opt = extern struct {
    templ: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
    value: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_fuse_args = extern struct {
    argc: c_int = @import("std").mem.zeroes(c_int),
    argv: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    allocated: c_int = @import("std").mem.zeroes(c_int),
};
pub const fuse_opt_proc_t = ?*const fn (?*anyopaque, [*c]const u8, c_int, [*c]struct_fuse_args) callconv(.C) c_int;
pub extern fn fuse_opt_parse(args: [*c]struct_fuse_args, data: ?*anyopaque, opts: [*c]const struct_fuse_opt, proc: fuse_opt_proc_t) c_int;
pub extern fn fuse_opt_add_opt(opts: [*c][*c]u8, opt: [*c]const u8) c_int;
pub extern fn fuse_opt_add_opt_escaped(opts: [*c][*c]u8, opt: [*c]const u8) c_int;
pub extern fn fuse_opt_add_arg(args: [*c]struct_fuse_args, arg: [*c]const u8) c_int;
pub extern fn fuse_opt_insert_arg(args: [*c]struct_fuse_args, pos: c_int, arg: [*c]const u8) c_int;
pub extern fn fuse_opt_free_args(args: [*c]struct_fuse_args) void;
pub extern fn fuse_opt_match(opts: [*c]const struct_fuse_opt, opt: [*c]const u8) c_int;
pub const struct___va_list_tag_1 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const __builtin_va_list = [1]struct___va_list_tag_1;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __builtin_va_list;
pub const FUSE_LOG_EMERG: c_int = 0;
pub const FUSE_LOG_ALERT: c_int = 1;
pub const FUSE_LOG_CRIT: c_int = 2;
pub const FUSE_LOG_ERR: c_int = 3;
pub const FUSE_LOG_WARNING: c_int = 4;
pub const FUSE_LOG_NOTICE: c_int = 5;
pub const FUSE_LOG_INFO: c_int = 6;
pub const FUSE_LOG_DEBUG: c_int = 7;
pub const enum_fuse_log_level = c_uint;
pub const fuse_log_func_t = ?*const fn (enum_fuse_log_level, [*c]const u8, [*c]struct___va_list_tag_1) callconv(.C) void;
pub extern fn fuse_set_log_func(func: fuse_log_func_t) void;
pub extern fn fuse_log(level: enum_fuse_log_level, fmt: [*c]const u8, ...) void;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __qaddr_t = [*c]__quad_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const int_least8_t = i8;
pub const int_least16_t = c_short;
pub const int_least32_t = c_int;
pub const int_least64_t = c_long;
pub const uint_least8_t = u8;
pub const uint_least16_t = c_ushort;
pub const uint_least32_t = c_uint;
pub const uint_least64_t = c_ulong;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const off_t = __off_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const u_int64_t = c_ulong;
pub const register_t = c_long;
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub extern fn gnu_dev_major(__dev: __dev_t) c_uint;
pub extern fn gnu_dev_minor(__dev: __dev_t) c_uint;
pub extern fn gnu_dev_makedev(__major: c_uint, __minor: c_uint) __dev_t;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = @import("std").mem.zeroes(c_uint),
    __writers: c_uint = @import("std").mem.zeroes(c_uint),
    __wrphase_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __writers_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __pad3: c_uint = @import("std").mem.zeroes(c_uint),
    __pad4: c_uint = @import("std").mem.zeroes(c_uint),
    __cur_writer: c_int = @import("std").mem.zeroes(c_int),
    __shared: c_int = @import("std").mem.zeroes(c_int),
    __rwelision: i8 = @import("std").mem.zeroes(i8),
    __pad1: [7]u8 = @import("std").mem.zeroes([7]u8),
    __pad2: c_ulong = @import("std").mem.zeroes(c_ulong),
    __flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_short = @import("std").mem.zeroes(c_short),
    __elision: c_short = @import("std").mem.zeroes(c_short),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
const struct_unnamed_3 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
const union_unnamed_2 = extern union {
    __wseq: c_ulonglong,
    __wseq32: struct_unnamed_3,
};
const struct_unnamed_5 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
const union_unnamed_4 = extern union {
    __g1_start: c_ulonglong,
    __g1_start32: struct_unnamed_5,
};
pub const struct___pthread_cond_s = extern struct {
    unnamed_0: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
    unnamed_1: union_unnamed_4 = @import("std").mem.zeroes(union_unnamed_4),
    __g_refs: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
}; // /usr/local/include/fuse3/fuse_common.h:60:15: warning: struct demoted to opaque type - has bitfield
pub const struct_fuse_file_info = opaque {};
pub const struct_fuse_loop_config_v1 = opaque {};
pub const struct_fuse_loop_config = extern struct {
    clone_fd: c_int = @import("std").mem.zeroes(c_int),
    max_idle_threads: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct_fuse_conn_info = extern struct {
    proto_major: c_uint = @import("std").mem.zeroes(c_uint),
    proto_minor: c_uint = @import("std").mem.zeroes(c_uint),
    max_write: c_uint = @import("std").mem.zeroes(c_uint),
    max_read: c_uint = @import("std").mem.zeroes(c_uint),
    max_readahead: c_uint = @import("std").mem.zeroes(c_uint),
    capable: c_uint = @import("std").mem.zeroes(c_uint),
    want: c_uint = @import("std").mem.zeroes(c_uint),
    max_background: c_uint = @import("std").mem.zeroes(c_uint),
    congestion_threshold: c_uint = @import("std").mem.zeroes(c_uint),
    time_gran: c_uint = @import("std").mem.zeroes(c_uint),
    reserved: [22]c_uint = @import("std").mem.zeroes([22]c_uint),
};
pub const struct_fuse_session = opaque {};
pub const struct_fuse_pollhandle = opaque {};
pub const struct_fuse_conn_info_opts = opaque {};
pub extern fn fuse_parse_conn_info_opts(args: [*c]struct_fuse_args) ?*struct_fuse_conn_info_opts;
pub extern fn fuse_apply_conn_info_opts(opts: ?*struct_fuse_conn_info_opts, conn: [*c]struct_fuse_conn_info) void;
pub extern fn fuse_daemonize(foreground: c_int) c_int;
pub extern fn fuse_version() c_int;
pub extern fn fuse_pkgversion() [*c]const u8;
pub extern fn fuse_pollhandle_destroy(ph: ?*struct_fuse_pollhandle) void;
pub const FUSE_BUF_IS_FD: c_int = 2;
pub const FUSE_BUF_FD_SEEK: c_int = 4;
pub const FUSE_BUF_FD_RETRY: c_int = 8;
pub const enum_fuse_buf_flags = c_uint;
pub const FUSE_BUF_NO_SPLICE: c_int = 2;
pub const FUSE_BUF_FORCE_SPLICE: c_int = 4;
pub const FUSE_BUF_SPLICE_MOVE: c_int = 8;
pub const FUSE_BUF_SPLICE_NONBLOCK: c_int = 16;
pub const enum_fuse_buf_copy_flags = c_uint;
pub const struct_fuse_buf = extern struct {
    size: usize = @import("std").mem.zeroes(usize),
    flags: enum_fuse_buf_flags = @import("std").mem.zeroes(enum_fuse_buf_flags),
    mem: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    fd: c_int = @import("std").mem.zeroes(c_int),
    pos: off_t = @import("std").mem.zeroes(off_t),
};
pub const struct_fuse_bufvec = extern struct {
    count: usize = @import("std").mem.zeroes(usize),
    idx: usize = @import("std").mem.zeroes(usize),
    off: usize = @import("std").mem.zeroes(usize),
    buf: [1]struct_fuse_buf = @import("std").mem.zeroes([1]struct_fuse_buf),
};
pub extern fn fuse_buf_size(bufv: [*c]const struct_fuse_bufvec) usize;
pub extern fn fuse_buf_copy(dst: [*c]struct_fuse_bufvec, src: [*c]struct_fuse_bufvec, flags: enum_fuse_buf_copy_flags) isize;
pub extern fn fuse_set_signal_handlers(se: ?*struct_fuse_session) c_int;
pub extern fn fuse_remove_signal_handlers(se: ?*struct_fuse_session) void;
pub extern fn fuse_loop_cfg_create() [*c]struct_fuse_loop_config;
pub extern fn fuse_loop_cfg_destroy(config: [*c]struct_fuse_loop_config) void;
pub extern fn fuse_loop_cfg_set_idle_threads(config: [*c]struct_fuse_loop_config, value: c_uint) void;
pub extern fn fuse_loop_cfg_set_max_threads(config: [*c]struct_fuse_loop_config, value: c_uint) void;
pub extern fn fuse_loop_cfg_set_clone_fd(config: [*c]struct_fuse_loop_config, value: c_uint) void;
pub extern fn fuse_loop_cfg_convert(config: [*c]struct_fuse_loop_config, v1_conf: ?*struct_fuse_loop_config_v1) void; // /usr/local/include/fuse3/fuse_common.h:941:13: warning: struct demoted to opaque type - has bitfield
pub const struct__fuse_off_t_must_be_64bit_dummy_struct = opaque {};
pub const struct_flock = extern struct {
    l_type: c_short = @import("std").mem.zeroes(c_short),
    l_whence: c_short = @import("std").mem.zeroes(c_short),
    l_start: __off_t = @import("std").mem.zeroes(__off_t),
    l_len: __off_t = @import("std").mem.zeroes(__off_t),
    l_pid: __pid_t = @import("std").mem.zeroes(__pid_t),
};
pub const struct_stat = extern struct {
    st_dev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_ino: __ino_t = @import("std").mem.zeroes(__ino_t),
    st_nlink: __nlink_t = @import("std").mem.zeroes(__nlink_t),
    st_mode: __mode_t = @import("std").mem.zeroes(__mode_t),
    st_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    st_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    st_rdev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_size: __off_t = @import("std").mem.zeroes(__off_t),
    st_blksize: __blksize_t = @import("std").mem.zeroes(__blksize_t),
    st_blocks: __blkcnt_t = @import("std").mem.zeroes(__blkcnt_t),
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};
pub extern fn fcntl(__fd: c_int, __cmd: c_int, ...) c_int;
pub extern fn open(__file: [*c]const u8, __oflag: c_int, ...) c_int;
pub extern fn openat(__fd: c_int, __file: [*c]const u8, __oflag: c_int, ...) c_int;
pub extern fn creat(__file: [*c]const u8, __mode: mode_t) c_int;
pub extern fn lockf(__fd: c_int, __cmd: c_int, __len: off_t) c_int;
pub extern fn posix_fadvise(__fd: c_int, __offset: off_t, __len: off_t, __advise: c_int) c_int;
pub extern fn posix_fallocate(__fd: c_int, __offset: off_t, __len: off_t) c_int;
pub const struct_tm = extern struct {
    tm_sec: c_int = @import("std").mem.zeroes(c_int),
    tm_min: c_int = @import("std").mem.zeroes(c_int),
    tm_hour: c_int = @import("std").mem.zeroes(c_int),
    tm_mday: c_int = @import("std").mem.zeroes(c_int),
    tm_mon: c_int = @import("std").mem.zeroes(c_int),
    tm_year: c_int = @import("std").mem.zeroes(c_int),
    tm_wday: c_int = @import("std").mem.zeroes(c_int),
    tm_yday: c_int = @import("std").mem.zeroes(c_int),
    tm_isdst: c_int = @import("std").mem.zeroes(c_int),
    tm_gmtoff: c_long = @import("std").mem.zeroes(c_long),
    tm_zone: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    it_value: struct_timespec = @import("std").mem.zeroes(struct_timespec),
};
pub const struct_sigevent = opaque {};
pub const struct___locale_data_6 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_6 = @import("std").mem.zeroes([13]?*struct___locale_data_6),
    __ctype_b: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    __ctype_tolower: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __ctype_toupper: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn clock() clock_t;
pub extern fn time(__timer: [*c]time_t) time_t;
pub extern fn difftime(__time1: time_t, __time0: time_t) f64;
pub extern fn mktime(__tp: [*c]struct_tm) time_t;
pub extern fn strftime(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm) usize;
pub extern fn strftime_l(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm, __loc: locale_t) usize;
pub extern fn gmtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn gmtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime(__tp: [*c]const struct_tm) [*c]u8;
pub extern fn ctime(__timer: [*c]const time_t) [*c]u8;
pub extern fn asctime_r(noalias __tp: [*c]const struct_tm, noalias __buf: [*c]u8) [*c]u8;
pub extern fn ctime_r(noalias __timer: [*c]const time_t, noalias __buf: [*c]u8) [*c]u8;
pub extern var __tzname: [2][*c]u8;
pub extern var __daylight: c_int;
pub extern var __timezone: c_long;
pub extern var tzname: [2][*c]u8;
pub extern fn tzset() void;
pub extern var daylight: c_int;
pub extern var timezone: c_long;
pub extern fn stime(__when: [*c]const time_t) c_int;
pub extern fn timegm(__tp: [*c]struct_tm) time_t;
pub extern fn timelocal(__tp: [*c]struct_tm) time_t;
pub extern fn dysize(__year: c_int) c_int;
pub extern fn nanosleep(__requested_time: [*c]const struct_timespec, __remaining: [*c]struct_timespec) c_int;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn clock_nanosleep(__clock_id: clockid_t, __flags: c_int, __req: [*c]const struct_timespec, __rem: [*c]struct_timespec) c_int;
pub extern fn clock_getcpuclockid(__pid: pid_t, __clock_id: [*c]clockid_t) c_int;
pub extern fn timer_create(__clock_id: clockid_t, noalias __evp: ?*struct_sigevent, noalias __timerid: [*c]timer_t) c_int;
pub extern fn timer_delete(__timerid: timer_t) c_int;
pub extern fn timer_settime(__timerid: timer_t, __flags: c_int, noalias __value: [*c]const struct_itimerspec, noalias __ovalue: [*c]struct_itimerspec) c_int;
pub extern fn timer_gettime(__timerid: timer_t, __value: [*c]struct_itimerspec) c_int;
pub extern fn timer_getoverrun(__timerid: timer_t) c_int;
pub extern fn timespec_get(__ts: [*c]struct_timespec, __base: c_int) c_int;
pub extern fn stat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
pub extern fn fstat(__fd: c_int, __buf: [*c]struct_stat) c_int;
pub extern fn fstatat(__fd: c_int, noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat, __flag: c_int) c_int;
pub extern fn lstat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;
pub extern fn chmod(__file: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn lchmod(__file: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn fchmod(__fd: c_int, __mode: __mode_t) c_int;
pub extern fn fchmodat(__fd: c_int, __file: [*c]const u8, __mode: __mode_t, __flag: c_int) c_int;
pub extern fn umask(__mask: __mode_t) __mode_t;
pub extern fn mkdir(__path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mkdirat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mknod(__path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
pub extern fn mknodat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t, __dev: __dev_t) c_int;
pub extern fn mkfifo(__path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn mkfifoat(__fd: c_int, __path: [*c]const u8, __mode: __mode_t) c_int;
pub extern fn utimensat(__fd: c_int, __path: [*c]const u8, __times: [*c]const struct_timespec, __flags: c_int) c_int;
pub extern fn futimens(__fd: c_int, __times: [*c]const struct_timespec) c_int;
pub extern fn __fxstat(__ver: c_int, __fildes: c_int, __stat_buf: [*c]struct_stat) c_int;
pub extern fn __xstat(__ver: c_int, __filename: [*c]const u8, __stat_buf: [*c]struct_stat) c_int;
pub extern fn __lxstat(__ver: c_int, __filename: [*c]const u8, __stat_buf: [*c]struct_stat) c_int;
pub extern fn __fxstatat(__ver: c_int, __fildes: c_int, __filename: [*c]const u8, __stat_buf: [*c]struct_stat, __flag: c_int) c_int;
pub extern fn __xmknod(__ver: c_int, __path: [*c]const u8, __mode: __mode_t, __dev: [*c]__dev_t) c_int;
pub extern fn __xmknodat(__ver: c_int, __fd: c_int, __path: [*c]const u8, __mode: __mode_t, __dev: [*c]__dev_t) c_int;
pub const struct_statvfs = extern struct {
    f_bsize: c_ulong = @import("std").mem.zeroes(c_ulong),
    f_frsize: c_ulong = @import("std").mem.zeroes(c_ulong),
    f_blocks: __fsblkcnt_t = @import("std").mem.zeroes(__fsblkcnt_t),
    f_bfree: __fsblkcnt_t = @import("std").mem.zeroes(__fsblkcnt_t),
    f_bavail: __fsblkcnt_t = @import("std").mem.zeroes(__fsblkcnt_t),
    f_files: __fsfilcnt_t = @import("std").mem.zeroes(__fsfilcnt_t),
    f_ffree: __fsfilcnt_t = @import("std").mem.zeroes(__fsfilcnt_t),
    f_favail: __fsfilcnt_t = @import("std").mem.zeroes(__fsfilcnt_t),
    f_fsid: c_ulong = @import("std").mem.zeroes(c_ulong),
    f_flag: c_ulong = @import("std").mem.zeroes(c_ulong),
    f_namemax: c_ulong = @import("std").mem.zeroes(c_ulong),
    __f_spare: [6]c_int = @import("std").mem.zeroes([6]c_int),
};
pub const ST_RDONLY: c_int = 1;
pub const ST_NOSUID: c_int = 2;
const enum_unnamed_7 = c_uint;
pub extern fn statvfs(noalias __file: [*c]const u8, noalias __buf: [*c]struct_statvfs) c_int;
pub extern fn fstatvfs(__fildes: c_int, __buf: [*c]struct_statvfs) c_int;
pub const struct_iovec = extern struct {
    iov_base: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    iov_len: usize = @import("std").mem.zeroes(usize),
};
pub extern fn readv(__fd: c_int, __iovec: [*c]const struct_iovec, __count: c_int) isize;
pub extern fn writev(__fd: c_int, __iovec: [*c]const struct_iovec, __count: c_int) isize;
pub extern fn preadv(__fd: c_int, __iovec: [*c]const struct_iovec, __count: c_int, __offset: __off_t) isize;
pub extern fn pwritev(__fd: c_int, __iovec: [*c]const struct_iovec, __count: c_int, __offset: __off_t) isize;
pub const struct_fuse = opaque {};
pub const FUSE_READDIR_PLUS: c_int = 1;
pub const enum_fuse_readdir_flags = c_uint;
pub const FUSE_FILL_DIR_PLUS: c_int = 2;
pub const enum_fuse_fill_dir_flags = c_uint;
pub const fuse_fill_dir_t = ?*const fn (?*anyopaque, [*c]const u8, [*c]const struct_stat, off_t, enum_fuse_fill_dir_flags) callconv(.C) c_int;
pub const struct_fuse_config = extern struct {
    set_gid: c_int = @import("std").mem.zeroes(c_int),
    gid: c_uint = @import("std").mem.zeroes(c_uint),
    set_uid: c_int = @import("std").mem.zeroes(c_int),
    uid: c_uint = @import("std").mem.zeroes(c_uint),
    set_mode: c_int = @import("std").mem.zeroes(c_int),
    umask: c_uint = @import("std").mem.zeroes(c_uint),
    entry_timeout: f64 = @import("std").mem.zeroes(f64),
    negative_timeout: f64 = @import("std").mem.zeroes(f64),
    attr_timeout: f64 = @import("std").mem.zeroes(f64),
    intr: c_int = @import("std").mem.zeroes(c_int),
    intr_signal: c_int = @import("std").mem.zeroes(c_int),
    remember: c_int = @import("std").mem.zeroes(c_int),
    hard_remove: c_int = @import("std").mem.zeroes(c_int),
    use_ino: c_int = @import("std").mem.zeroes(c_int),
    readdir_ino: c_int = @import("std").mem.zeroes(c_int),
    direct_io: c_int = @import("std").mem.zeroes(c_int),
    kernel_cache: c_int = @import("std").mem.zeroes(c_int),
    auto_cache: c_int = @import("std").mem.zeroes(c_int),
    no_rofd_flush: c_int = @import("std").mem.zeroes(c_int),
    ac_attr_timeout_set: c_int = @import("std").mem.zeroes(c_int),
    ac_attr_timeout: f64 = @import("std").mem.zeroes(f64),
    nullpath_ok: c_int = @import("std").mem.zeroes(c_int),
    parallel_direct_writes: c_int = @import("std").mem.zeroes(c_int),
    show_help: c_int = @import("std").mem.zeroes(c_int),
    modules: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    debug: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_fuse_operations = extern struct {
    getattr: ?*const fn ([*c]const u8, [*c]struct_stat, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]struct_stat, ?*struct_fuse_file_info) callconv(.C) c_int),
    readlink: ?*const fn ([*c]const u8, [*c]u8, usize) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]u8, usize) callconv(.C) c_int),
    mknod: ?*const fn ([*c]const u8, mode_t, dev_t) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, mode_t, dev_t) callconv(.C) c_int),
    mkdir: ?*const fn ([*c]const u8, mode_t) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, mode_t) callconv(.C) c_int),
    unlink: ?*const fn ([*c]const u8) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.C) c_int),
    rmdir: ?*const fn ([*c]const u8) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.C) c_int),
    symlink: ?*const fn ([*c]const u8, [*c]const u8) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]const u8) callconv(.C) c_int),
    rename: ?*const fn ([*c]const u8, [*c]const u8, c_uint) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]const u8, c_uint) callconv(.C) c_int),
    link: ?*const fn ([*c]const u8, [*c]const u8) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]const u8) callconv(.C) c_int),
    chmod: ?*const fn ([*c]const u8, mode_t, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, mode_t, ?*struct_fuse_file_info) callconv(.C) c_int),
    chown: ?*const fn ([*c]const u8, uid_t, gid_t, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, uid_t, gid_t, ?*struct_fuse_file_info) callconv(.C) c_int),
    truncate: ?*const fn ([*c]const u8, off_t, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, off_t, ?*struct_fuse_file_info) callconv(.C) c_int),
    open: ?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int),
    read: ?*const fn ([*c]const u8, [*c]u8, usize, off_t, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]u8, usize, off_t, ?*struct_fuse_file_info) callconv(.C) c_int),
    write: ?*const fn ([*c]const u8, [*c]const u8, usize, off_t, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]const u8, usize, off_t, ?*struct_fuse_file_info) callconv(.C) c_int),
    statfs: ?*const fn ([*c]const u8, [*c]struct_statvfs) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]struct_statvfs) callconv(.C) c_int),
    flush: ?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int),
    release: ?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int),
    fsync: ?*const fn ([*c]const u8, c_int, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, c_int, ?*struct_fuse_file_info) callconv(.C) c_int),
    setxattr: ?*const fn ([*c]const u8, [*c]const u8, [*c]const u8, usize, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]const u8, [*c]const u8, usize, c_int) callconv(.C) c_int),
    getxattr: ?*const fn ([*c]const u8, [*c]const u8, [*c]u8, usize) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]const u8, [*c]u8, usize) callconv(.C) c_int),
    listxattr: ?*const fn ([*c]const u8, [*c]u8, usize) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]u8, usize) callconv(.C) c_int),
    removexattr: ?*const fn ([*c]const u8, [*c]const u8) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]const u8) callconv(.C) c_int),
    opendir: ?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int),
    readdir: ?*const fn ([*c]const u8, ?*anyopaque, fuse_fill_dir_t, off_t, ?*struct_fuse_file_info, enum_fuse_readdir_flags) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, ?*anyopaque, fuse_fill_dir_t, off_t, ?*struct_fuse_file_info, enum_fuse_readdir_flags) callconv(.C) c_int),
    releasedir: ?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, ?*struct_fuse_file_info) callconv(.C) c_int),
    fsyncdir: ?*const fn ([*c]const u8, c_int, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, c_int, ?*struct_fuse_file_info) callconv(.C) c_int),
    init: ?*const fn ([*c]struct_fuse_conn_info, [*c]struct_fuse_config) callconv(.C) ?*anyopaque = @import("std").mem.zeroes(?*const fn ([*c]struct_fuse_conn_info, [*c]struct_fuse_config) callconv(.C) ?*anyopaque),
    destroy: ?*const fn (?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) void),
    access: ?*const fn ([*c]const u8, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, c_int) callconv(.C) c_int),
    create: ?*const fn ([*c]const u8, mode_t, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, mode_t, ?*struct_fuse_file_info) callconv(.C) c_int),
    lock: ?*const fn ([*c]const u8, ?*struct_fuse_file_info, c_int, [*c]struct_flock) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, ?*struct_fuse_file_info, c_int, [*c]struct_flock) callconv(.C) c_int),
    utimens: ?*const fn ([*c]const u8, [*c]const struct_timespec, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]const struct_timespec, ?*struct_fuse_file_info) callconv(.C) c_int),
    bmap: ?*const fn ([*c]const u8, usize, [*c]u64) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, usize, [*c]u64) callconv(.C) c_int),
    ioctl: ?*const fn ([*c]const u8, c_uint, ?*anyopaque, ?*struct_fuse_file_info, c_uint, ?*anyopaque) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, c_uint, ?*anyopaque, ?*struct_fuse_file_info, c_uint, ?*anyopaque) callconv(.C) c_int),
    poll: ?*const fn ([*c]const u8, ?*struct_fuse_file_info, ?*struct_fuse_pollhandle, [*c]c_uint) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, ?*struct_fuse_file_info, ?*struct_fuse_pollhandle, [*c]c_uint) callconv(.C) c_int),
    write_buf: ?*const fn ([*c]const u8, [*c]struct_fuse_bufvec, off_t, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c]struct_fuse_bufvec, off_t, ?*struct_fuse_file_info) callconv(.C) c_int),
    read_buf: ?*const fn ([*c]const u8, [*c][*c]struct_fuse_bufvec, usize, off_t, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, [*c][*c]struct_fuse_bufvec, usize, off_t, ?*struct_fuse_file_info) callconv(.C) c_int),
    flock: ?*const fn ([*c]const u8, ?*struct_fuse_file_info, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, ?*struct_fuse_file_info, c_int) callconv(.C) c_int),
    fallocate: ?*const fn ([*c]const u8, c_int, off_t, off_t, ?*struct_fuse_file_info) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]const u8, c_int, off_t, off_t, ?*struct_fuse_file_info) callconv(.C) c_int),
    copy_file_range: ?*const fn ([*c]const u8, ?*struct_fuse_file_info, off_t, [*c]const u8, ?*struct_fuse_file_info, off_t, usize, c_int) callconv(.C) isize = @import("std").mem.zeroes(?*const fn ([*c]const u8, ?*struct_fuse_file_info, off_t, [*c]const u8, ?*struct_fuse_file_info, off_t, usize, c_int) callconv(.C) isize),
    lseek: ?*const fn ([*c]const u8, off_t, c_int, ?*struct_fuse_file_info) callconv(.C) off_t = @import("std").mem.zeroes(?*const fn ([*c]const u8, off_t, c_int, ?*struct_fuse_file_info) callconv(.C) off_t),
};
pub const struct_fuse_context = extern struct {
    fuse: ?*struct_fuse = @import("std").mem.zeroes(?*struct_fuse),
    uid: uid_t = @import("std").mem.zeroes(uid_t),
    gid: gid_t = @import("std").mem.zeroes(gid_t),
    pid: pid_t = @import("std").mem.zeroes(pid_t),
    private_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    umask: mode_t = @import("std").mem.zeroes(mode_t),
};
pub extern fn fuse_lib_help(args: [*c]struct_fuse_args) void;
pub extern fn fuse_new(args: [*c]struct_fuse_args, op: [*c]const struct_fuse_operations, op_size: usize, private_data: ?*anyopaque) ?*struct_fuse;
pub extern fn fuse_mount(f: ?*struct_fuse, mountpoint: [*c]const u8) c_int;
pub extern fn fuse_unmount(f: ?*struct_fuse) void;
pub extern fn fuse_destroy(f: ?*struct_fuse) void;
pub extern fn fuse_loop(f: ?*struct_fuse) c_int;
pub extern fn fuse_exit(f: ?*struct_fuse) void;
pub extern fn fuse_loop_mt_32(f: ?*struct_fuse, config: [*c]struct_fuse_loop_config) c_int;
pub extern fn fuse_get_context() [*c]struct_fuse_context;
pub extern fn fuse_getgroups(size: c_int, list: [*c]gid_t) c_int;
pub extern fn fuse_interrupted() c_int;
pub extern fn fuse_invalidate_path(f: ?*struct_fuse, path: [*c]const u8) c_int;
pub extern fn fuse_main_real(argc: c_int, argv: [*c][*c]u8, op: [*c]const struct_fuse_operations, op_size: usize, private_data: ?*anyopaque) c_int;
pub extern fn fuse_start_cleanup_thread(fuse: ?*struct_fuse) c_int;
pub extern fn fuse_stop_cleanup_thread(fuse: ?*struct_fuse) void;
pub extern fn fuse_clean_cache(fuse: ?*struct_fuse) c_int;
pub const struct_fuse_fs = opaque {};
pub extern fn fuse_fs_getattr(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]struct_stat, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_rename(fs: ?*struct_fuse_fs, oldpath: [*c]const u8, newpath: [*c]const u8, flags: c_uint) c_int;
pub extern fn fuse_fs_unlink(fs: ?*struct_fuse_fs, path: [*c]const u8) c_int;
pub extern fn fuse_fs_rmdir(fs: ?*struct_fuse_fs, path: [*c]const u8) c_int;
pub extern fn fuse_fs_symlink(fs: ?*struct_fuse_fs, linkname: [*c]const u8, path: [*c]const u8) c_int;
pub extern fn fuse_fs_link(fs: ?*struct_fuse_fs, oldpath: [*c]const u8, newpath: [*c]const u8) c_int;
pub extern fn fuse_fs_release(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_open(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_read(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]u8, size: usize, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_read_buf(fs: ?*struct_fuse_fs, path: [*c]const u8, bufp: [*c][*c]struct_fuse_bufvec, size: usize, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_write(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]const u8, size: usize, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_write_buf(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]struct_fuse_bufvec, off: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_fsync(fs: ?*struct_fuse_fs, path: [*c]const u8, datasync: c_int, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_flush(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_statfs(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]struct_statvfs) c_int;
pub extern fn fuse_fs_opendir(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_readdir(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: ?*anyopaque, filler: fuse_fill_dir_t, off: off_t, fi: ?*struct_fuse_file_info, flags: enum_fuse_readdir_flags) c_int;
pub extern fn fuse_fs_fsyncdir(fs: ?*struct_fuse_fs, path: [*c]const u8, datasync: c_int, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_releasedir(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_create(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_lock(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info, cmd: c_int, lock: [*c]struct_flock) c_int;
pub extern fn fuse_fs_flock(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info, op: c_int) c_int;
pub extern fn fuse_fs_chmod(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_chown(fs: ?*struct_fuse_fs, path: [*c]const u8, uid: uid_t, gid: gid_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_truncate(fs: ?*struct_fuse_fs, path: [*c]const u8, size: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_utimens(fs: ?*struct_fuse_fs, path: [*c]const u8, tv: [*c]const struct_timespec, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_access(fs: ?*struct_fuse_fs, path: [*c]const u8, mask: c_int) c_int;
pub extern fn fuse_fs_readlink(fs: ?*struct_fuse_fs, path: [*c]const u8, buf: [*c]u8, len: usize) c_int;
pub extern fn fuse_fs_mknod(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t, rdev: dev_t) c_int;
pub extern fn fuse_fs_mkdir(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: mode_t) c_int;
pub extern fn fuse_fs_setxattr(fs: ?*struct_fuse_fs, path: [*c]const u8, name: [*c]const u8, value: [*c]const u8, size: usize, flags: c_int) c_int;
pub extern fn fuse_fs_getxattr(fs: ?*struct_fuse_fs, path: [*c]const u8, name: [*c]const u8, value: [*c]u8, size: usize) c_int;
pub extern fn fuse_fs_listxattr(fs: ?*struct_fuse_fs, path: [*c]const u8, list: [*c]u8, size: usize) c_int;
pub extern fn fuse_fs_removexattr(fs: ?*struct_fuse_fs, path: [*c]const u8, name: [*c]const u8) c_int;
pub extern fn fuse_fs_bmap(fs: ?*struct_fuse_fs, path: [*c]const u8, blocksize: usize, idx: [*c]u64) c_int;
pub extern fn fuse_fs_ioctl(fs: ?*struct_fuse_fs, path: [*c]const u8, cmd: c_uint, arg: ?*anyopaque, fi: ?*struct_fuse_file_info, flags: c_uint, data: ?*anyopaque) c_int;
pub extern fn fuse_fs_poll(fs: ?*struct_fuse_fs, path: [*c]const u8, fi: ?*struct_fuse_file_info, ph: ?*struct_fuse_pollhandle, reventsp: [*c]c_uint) c_int;
pub extern fn fuse_fs_fallocate(fs: ?*struct_fuse_fs, path: [*c]const u8, mode: c_int, offset: off_t, length: off_t, fi: ?*struct_fuse_file_info) c_int;
pub extern fn fuse_fs_copy_file_range(fs: ?*struct_fuse_fs, path_in: [*c]const u8, fi_in: ?*struct_fuse_file_info, off_in: off_t, path_out: [*c]const u8, fi_out: ?*struct_fuse_file_info, off_out: off_t, len: usize, flags: c_int) isize;
pub extern fn fuse_fs_lseek(fs: ?*struct_fuse_fs, path: [*c]const u8, off: off_t, whence: c_int, fi: ?*struct_fuse_file_info) off_t;
pub extern fn fuse_fs_init(fs: ?*struct_fuse_fs, conn: [*c]struct_fuse_conn_info, cfg: [*c]struct_fuse_config) void;
pub extern fn fuse_fs_destroy(fs: ?*struct_fuse_fs) void;
pub extern fn fuse_notify_poll(ph: ?*struct_fuse_pollhandle) c_int;
pub extern fn fuse_fs_new(op: [*c]const struct_fuse_operations, op_size: usize, private_data: ?*anyopaque) ?*struct_fuse_fs;
pub const fuse_module_factory_t = ?*const fn ([*c]struct_fuse_args, [*c]?*struct_fuse_fs) callconv(.C) ?*struct_fuse_fs;
pub extern fn fuse_get_session(f: ?*struct_fuse) ?*struct_fuse_session;
pub extern fn fuse_open_channel(mountpoint: [*c]const u8, options: [*c]const u8) c_int;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):90:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):96:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):193:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):215:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):223:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`"); // (no file):353:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`"); // (no file):354:9
pub const FUSE_OPT_KEY = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/local/include/fuse3/fuse_opt.h:98:9
pub const FUSE_OPT_END = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/local/include/fuse3/fuse_opt.h:104:9
pub const FUSE_ARGS_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/local/include/fuse3/fuse_opt.h:123:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /usr/local/bin/lib/zig/include/stdarg.h:33:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /usr/local/bin/lib/zig/include/stdarg.h:35:9
pub const va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'"); // /usr/local/bin/lib/zig/include/stdarg.h:36:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /usr/local/bin/lib/zig/include/stdarg.h:41:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /usr/local/bin/lib/zig/include/stdarg.h:46:9
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /usr/include/features.h:175:9
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:55:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:56:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:57:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:58:11
pub const __glibc_clang_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /usr/include/sys/cdefs.h:87:10
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/sys/cdefs.h:100:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'"); // /usr/include/sys/cdefs.h:101:9
pub const __long_double_t = @compileError("unable to translate: TODO long double"); // /usr/include/sys/cdefs.h:105:9
pub const __warndecl = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/sys/cdefs.h:129:10
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:130:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/sys/cdefs.h:131:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /usr/include/sys/cdefs.h:139:10
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:170:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:177:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:179:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','"); // /usr/include/sys/cdefs.h:182:10
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`"); // /usr/include/sys/cdefs.h:204:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:215:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`"); // /usr/include/sys/cdefs.h:222:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /usr/include/sys/cdefs.h:229:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`"); // /usr/include/sys/cdefs.h:238:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`"); // /usr/include/sys/cdefs.h:239:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/sys/cdefs.h:247:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/sys/cdefs.h:257:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`"); // /usr/include/sys/cdefs.h:270:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`"); // /usr/include/sys/cdefs.h:280:10
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `__nonnull__`"); // /usr/include/sys/cdefs.h:289:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`"); // /usr/include/sys/cdefs.h:297:10
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // /usr/include/sys/cdefs.h:315:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`"); // /usr/include/sys/cdefs.h:342:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`"); // /usr/include/sys/cdefs.h:343:11
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'"); // /usr/include/sys/cdefs.h:379:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:455:10
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/include/sys/cdefs.h:469:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /usr/include/sys/cdefs.h:470:10
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /usr/include/bits/types.h:126:10
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/bits/typesizes.h:72:9
pub const __u_intN_t = @compileError("unable to translate macro: undefined identifier `_t`"); // /usr/include/sys/types.h:175:10
pub const __bswap_16 = @compileError("unable to translate macro: undefined identifier `__v`"); // /usr/include/bits/byteswap-16.h:25:11
pub const __bswap_32 = @compileError("unable to translate macro: undefined identifier `__v`"); // /usr/include/bits/byteswap.h:58:12
pub const __bswap_constant_64 = @compileError("unable to translate C expr: unexpected token '__extension__'"); // /usr/include/bits/byteswap.h:97:10
pub const __bswap_64 = @compileError("unable to translate macro: undefined identifier `__v`"); // /usr/include/bits/byteswap.h:114:11
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__d0`"); // /usr/include/bits/select.h:33:10
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /usr/include/bits/select.h:58:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /usr/include/bits/select.h:60:9
pub const __SYSMACROS_DECLARE_MAJOR = @compileError("unable to translate macro: undefined identifier `__dev`"); // /usr/include/bits/sysmacros.h:36:9
pub const __SYSMACROS_DEFINE_MAJOR = @compileError("unable to translate macro: undefined identifier `__major`"); // /usr/include/bits/sysmacros.h:39:9
pub const __SYSMACROS_DECLARE_MINOR = @compileError("unable to translate macro: undefined identifier `__dev`"); // /usr/include/bits/sysmacros.h:48:9
pub const __SYSMACROS_DEFINE_MINOR = @compileError("unable to translate macro: undefined identifier `__minor`"); // /usr/include/bits/sysmacros.h:51:9
pub const __SYSMACROS_DECLARE_MAKEDEV = @compileError("unable to translate macro: undefined identifier `__major`"); // /usr/include/bits/sysmacros.h:60:9
pub const __SYSMACROS_DEFINE_MAKEDEV = @compileError("unable to translate macro: undefined identifier `__dev`"); // /usr/include/bits/sysmacros.h:63:9
pub const __SYSMACROS_DM = @compileError("unable to translate macro: undefined identifier `In`"); // /usr/include/sys/sysmacros.h:52:9
pub const __SYSMACROS_DM1 = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /usr/include/sys/sysmacros.h:62:9
pub const __SYSMACROS_DECL_TEMPL = @compileError("unable to translate macro: undefined identifier `gnu_dev_`"); // /usr/include/sys/sysmacros.h:64:9
pub const __SYSMACROS_IMPL_TEMPL = @compileError("unable to translate macro: undefined identifier `gnu_dev_`"); // /usr/include/sys/sysmacros.h:67:9
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/pthreadtypes-arch.h:82:11
pub const __PTHREAD_SPINS_DATA = @compileError("unable to translate macro: undefined identifier `__spins`"); // /usr/include/bits/thread-shared-types.h:97:11
pub const FUSE_BUFVEC_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/local/include/fuse3/fuse_common.h:812:9
pub const st_atime = @compileError("unable to translate macro: undefined identifier `st_atim`"); // /usr/include/bits/stat.h:94:10
pub const st_mtime = @compileError("unable to translate macro: undefined identifier `st_mtim`"); // /usr/include/bits/stat.h:95:10
pub const st_ctime = @compileError("unable to translate macro: undefined identifier `st_ctim`"); // /usr/include/bits/stat.h:96:10
pub const fuse_main = @compileError("unable to translate C expr: unexpected token '*'"); // /usr/local/include/fuse3/fuse.h:913:9
pub const FUSE_REGISTER_MODULE = @compileError("unable to translate macro: undefined identifier `fuse_module_`"); // /usr/local/include/fuse3/fuse.h:1320:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 17);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 6);
pub const __clang_version__ = "17.0.6 (https://github.com/ziglang/zig-bootstrap 4c78aa1bba84dbd324e178932cd52221417f63da)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 17.0.6 (https://github.com/ziglang/zig-bootstrap 4c78aa1bba84dbd324e178932cd52221417f63da)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __AVX512CD__ = @as(c_int, 1);
pub const __AVX512DQ__ = @as(c_int, 1);
pub const __AVX512BW__ = @as(c_int, 1);
pub const __AVX512VL__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX512F__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __GLIBC_MINOR__ = @as(c_int, 26);
pub const _DEBUG = @as(c_int, 1);
pub const FUSE_USE_VERSION = @as(c_int, 35);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const FUSE_H_ = "";
pub const FUSE_COMMON_H_ = "";
pub const LIBFUSE_BUILT_WITH_VERSIONED_SYMBOLS = @as(c_int, 1);
pub const FUSE_OPT_H_ = "";
pub const FUSE_OPT_KEY_OPT = -@as(c_int, 1);
pub const FUSE_OPT_KEY_NONOPT = -@as(c_int, 2);
pub const FUSE_OPT_KEY_KEEP = -@as(c_int, 3);
pub const FUSE_OPT_KEY_DISCARD = -@as(c_int, 4);
pub const FUSE_LOG_H_ = "";
pub const __GNUC_VA_LIST = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __STDC_NO_THREADS__ = @as(c_int, 1);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __wur = "";
pub const __attribute_artificial__ = "";
pub const __fortify_function = __extern_always_inline;
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fattach = "";
pub const __stub_fchflags = "";
pub const __stub_fdetach = "";
pub const __stub_getmsg = "";
pub const __stub_gtty = "";
pub const __stub_lchmod = "";
pub const __stub_putmsg = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_sstk = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __off_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __ssize_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const __need_size_t = "";
pub const _SIZE_T = "";
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) c_ushort {
    _ = &x;
    return @import("std").zig.c_translation.cast(c_ushort, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000ff00, .hex)) << @as(c_int, 8))) | ((x & @as(c_int, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000ff00, .hex)) << @as(c_int, 8))) | ((x & @as(c_int, 0x000000ff)) << @as(c_int, 24));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO_STOS = "stosq";
pub inline fn __FD_ISSET(d: anytype, set: anytype) @TypeOf((__FDS_BITS(set)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &set;
    return (__FDS_BITS(set)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    _ = &d;
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    _ = &set;
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __SYSMACROS_DEPRECATED_INCLUSION = "";
pub const _SYS_SYSMACROS_H = @as(c_int, 1);
pub const _BITS_SYSMACROS_H = @as(c_int, 1);
pub inline fn major(dev: anytype) @TypeOf(__SYSMACROS_DM(major) ++ gnu_dev_major(dev)) {
    _ = &dev;
    return __SYSMACROS_DM(major) ++ gnu_dev_major(dev);
}
pub inline fn minor(dev: anytype) @TypeOf(__SYSMACROS_DM(minor) ++ gnu_dev_minor(dev)) {
    _ = &dev;
    return __SYSMACROS_DM(minor) ++ gnu_dev_minor(dev);
}
pub inline fn makedev(maj: anytype, min: anytype) @TypeOf(__SYSMACROS_DM(makedev) ++ gnu_dev_makedev(maj, min)) {
    _ = &maj;
    _ = &min;
    return __SYSMACROS_DM(makedev) ++ gnu_dev_makedev(maj, min);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __PTHREAD_COMPAT_PADDING_MID = "";
pub const __PTHREAD_COMPAT_PADDING_END = "";
pub const __PTHREAD_MUTEX_LOCK_ELISION = @as(c_int, 1);
pub const __PTHREAD_MUTEX_NUSERS_AFTER_KIND = @as(c_int, 0);
pub const __PTHREAD_MUTEX_USE_UNION = @as(c_int, 0);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const __PTHREAD_RWLOCK_INT_FLAGS_SHARED = @as(c_int, 1);
pub const __PTHREAD_SPINS = blk: {
    _ = @as(c_int, 0);
    break :blk @as(c_int, 0);
};
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const FUSE_MAJOR_VERSION = @as(c_int, 3);
pub const FUSE_MINOR_VERSION = @as(c_int, 16);
pub inline fn FUSE_MAKE_VERSION(maj: anytype, min: anytype) @TypeOf((maj * @as(c_int, 100)) + min) {
    _ = &maj;
    _ = &min;
    return (maj * @as(c_int, 100)) + min;
}
pub const FUSE_VERSION = FUSE_MAKE_VERSION(FUSE_MAJOR_VERSION, FUSE_MINOR_VERSION);
pub const FUSE_CAP_ASYNC_READ = @as(c_int, 1) << @as(c_int, 0);
pub const FUSE_CAP_POSIX_LOCKS = @as(c_int, 1) << @as(c_int, 1);
pub const FUSE_CAP_ATOMIC_O_TRUNC = @as(c_int, 1) << @as(c_int, 3);
pub const FUSE_CAP_EXPORT_SUPPORT = @as(c_int, 1) << @as(c_int, 4);
pub const FUSE_CAP_DONT_MASK = @as(c_int, 1) << @as(c_int, 6);
pub const FUSE_CAP_SPLICE_WRITE = @as(c_int, 1) << @as(c_int, 7);
pub const FUSE_CAP_SPLICE_MOVE = @as(c_int, 1) << @as(c_int, 8);
pub const FUSE_CAP_SPLICE_READ = @as(c_int, 1) << @as(c_int, 9);
pub const FUSE_CAP_FLOCK_LOCKS = @as(c_int, 1) << @as(c_int, 10);
pub const FUSE_CAP_IOCTL_DIR = @as(c_int, 1) << @as(c_int, 11);
pub const FUSE_CAP_AUTO_INVAL_DATA = @as(c_int, 1) << @as(c_int, 12);
pub const FUSE_CAP_READDIRPLUS = @as(c_int, 1) << @as(c_int, 13);
pub const FUSE_CAP_READDIRPLUS_AUTO = @as(c_int, 1) << @as(c_int, 14);
pub const FUSE_CAP_ASYNC_DIO = @as(c_int, 1) << @as(c_int, 15);
pub const FUSE_CAP_WRITEBACK_CACHE = @as(c_int, 1) << @as(c_int, 16);
pub const FUSE_CAP_NO_OPEN_SUPPORT = @as(c_int, 1) << @as(c_int, 17);
pub const FUSE_CAP_PARALLEL_DIROPS = @as(c_int, 1) << @as(c_int, 18);
pub const FUSE_CAP_POSIX_ACL = @as(c_int, 1) << @as(c_int, 19);
pub const FUSE_CAP_HANDLE_KILLPRIV = @as(c_int, 1) << @as(c_int, 20);
pub const FUSE_CAP_CACHE_SYMLINKS = @as(c_int, 1) << @as(c_int, 23);
pub const FUSE_CAP_NO_OPENDIR_SUPPORT = @as(c_int, 1) << @as(c_int, 24);
pub const FUSE_CAP_EXPLICIT_INVAL_DATA = @as(c_int, 1) << @as(c_int, 25);
pub const FUSE_CAP_EXPIRE_ONLY = @as(c_int, 1) << @as(c_int, 26);
pub const FUSE_CAP_SETXATTR_EXT = @as(c_int, 1) << @as(c_int, 27);
pub const FUSE_IOCTL_COMPAT = @as(c_int, 1) << @as(c_int, 0);
pub const FUSE_IOCTL_UNRESTRICTED = @as(c_int, 1) << @as(c_int, 1);
pub const FUSE_IOCTL_RETRY = @as(c_int, 1) << @as(c_int, 2);
pub const FUSE_IOCTL_DIR = @as(c_int, 1) << @as(c_int, 4);
pub const FUSE_IOCTL_MAX_IOV = @as(c_int, 256);
pub const _FCNTL_H = @as(c_int, 1);
pub const __O_LARGEFILE = @as(c_int, 0);
pub const F_GETLK64 = @as(c_int, 5);
pub const F_SETLK64 = @as(c_int, 6);
pub const F_SETLKW64 = @as(c_int, 7);
pub const O_ACCMODE = @as(c_int, 0o003);
pub const O_RDONLY = @as(c_int, 0o0);
pub const O_WRONLY = @as(c_int, 0o1);
pub const O_RDWR = @as(c_int, 0o2);
pub const O_CREAT = @as(c_int, 0o100);
pub const O_EXCL = @as(c_int, 0o200);
pub const O_NOCTTY = @as(c_int, 0o400);
pub const O_TRUNC = @as(c_int, 0o1000);
pub const O_APPEND = @as(c_int, 0o2000);
pub const O_NONBLOCK = @as(c_int, 0o4000);
pub const O_NDELAY = O_NONBLOCK;
pub const O_SYNC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o4010000, .octal);
pub const O_FSYNC = O_SYNC;
pub const O_ASYNC = @as(c_int, 0o20000);
pub const __O_DIRECTORY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o200000, .octal);
pub const __O_NOFOLLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o400000, .octal);
pub const __O_CLOEXEC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o2000000, .octal);
pub const __O_DIRECT = @as(c_int, 0o40000);
pub const __O_NOATIME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o1000000, .octal);
pub const __O_PATH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o10000000, .octal);
pub const __O_DSYNC = @as(c_int, 0o10000);
pub const __O_TMPFILE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o20000000, .octal) | __O_DIRECTORY;
pub const F_GETLK = @as(c_int, 5);
pub const F_SETLK = @as(c_int, 6);
pub const F_SETLKW = @as(c_int, 7);
pub const O_DIRECTORY = __O_DIRECTORY;
pub const O_NOFOLLOW = __O_NOFOLLOW;
pub const O_CLOEXEC = __O_CLOEXEC;
pub const O_DSYNC = __O_DSYNC;
pub const O_RSYNC = O_SYNC;
pub const F_DUPFD = @as(c_int, 0);
pub const F_GETFD = @as(c_int, 1);
pub const F_SETFD = @as(c_int, 2);
pub const F_GETFL = @as(c_int, 3);
pub const F_SETFL = @as(c_int, 4);
pub const __F_SETOWN = @as(c_int, 8);
pub const __F_GETOWN = @as(c_int, 9);
pub const F_SETOWN = __F_SETOWN;
pub const F_GETOWN = __F_GETOWN;
pub const __F_SETSIG = @as(c_int, 10);
pub const __F_GETSIG = @as(c_int, 11);
pub const __F_SETOWN_EX = @as(c_int, 15);
pub const __F_GETOWN_EX = @as(c_int, 16);
pub const F_DUPFD_CLOEXEC = @as(c_int, 1030);
pub const FD_CLOEXEC = @as(c_int, 1);
pub const F_RDLCK = @as(c_int, 0);
pub const F_WRLCK = @as(c_int, 1);
pub const F_UNLCK = @as(c_int, 2);
pub const F_EXLCK = @as(c_int, 4);
pub const F_SHLCK = @as(c_int, 8);
pub const LOCK_SH = @as(c_int, 1);
pub const LOCK_EX = @as(c_int, 2);
pub const LOCK_NB = @as(c_int, 4);
pub const LOCK_UN = @as(c_int, 8);
pub const FAPPEND = O_APPEND;
pub const FFSYNC = O_FSYNC;
pub const FASYNC = O_ASYNC;
pub const FNONBLOCK = O_NONBLOCK;
pub const FNDELAY = O_NDELAY;
pub const __POSIX_FADV_DONTNEED = @as(c_int, 4);
pub const __POSIX_FADV_NOREUSE = @as(c_int, 5);
pub const POSIX_FADV_NORMAL = @as(c_int, 0);
pub const POSIX_FADV_RANDOM = @as(c_int, 1);
pub const POSIX_FADV_SEQUENTIAL = @as(c_int, 2);
pub const POSIX_FADV_WILLNEED = @as(c_int, 3);
pub const POSIX_FADV_DONTNEED = __POSIX_FADV_DONTNEED;
pub const POSIX_FADV_NOREUSE = __POSIX_FADV_NOREUSE;
pub inline fn __OPEN_NEEDS_MODE(oflag: anytype) @TypeOf(((oflag & O_CREAT) != @as(c_int, 0)) or ((oflag & __O_TMPFILE) == __O_TMPFILE)) {
    _ = &oflag;
    return ((oflag & O_CREAT) != @as(c_int, 0)) or ((oflag & __O_TMPFILE) == __O_TMPFILE);
}
pub const _BITS_STAT_H = @as(c_int, 1);
pub const _STAT_VER_KERNEL = @as(c_int, 0);
pub const _STAT_VER_LINUX = @as(c_int, 1);
pub const _MKNOD_VER_LINUX = @as(c_int, 0);
pub const _STAT_VER = _STAT_VER_LINUX;
pub const _STATBUF_ST_BLKSIZE = "";
pub const _STATBUF_ST_RDEV = "";
pub const _STATBUF_ST_NSEC = "";
pub const __S_IFMT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o170000, .octal);
pub const __S_IFDIR = @as(c_int, 0o040000);
pub const __S_IFCHR = @as(c_int, 0o020000);
pub const __S_IFBLK = @as(c_int, 0o060000);
pub const __S_IFREG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o100000, .octal);
pub const __S_IFIFO = @as(c_int, 0o010000);
pub const __S_IFLNK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o120000, .octal);
pub const __S_IFSOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o140000, .octal);
pub inline fn __S_TYPEISMQ(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSEM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSHM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub const __S_ISUID = @as(c_int, 0o4000);
pub const __S_ISGID = @as(c_int, 0o2000);
pub const __S_ISVTX = @as(c_int, 0o1000);
pub const __S_IREAD = @as(c_int, 0o400);
pub const __S_IWRITE = @as(c_int, 0o200);
pub const __S_IEXEC = @as(c_int, 0o100);
pub const UTIME_NOW = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 1);
pub const UTIME_OMIT = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 2);
pub const S_IFMT = __S_IFMT;
pub const S_IFDIR = __S_IFDIR;
pub const S_IFCHR = __S_IFCHR;
pub const S_IFBLK = __S_IFBLK;
pub const S_IFREG = __S_IFREG;
pub const S_IFIFO = __S_IFIFO;
pub const S_IFLNK = __S_IFLNK;
pub const S_IFSOCK = __S_IFSOCK;
pub const S_ISUID = __S_ISUID;
pub const S_ISGID = __S_ISGID;
pub const S_ISVTX = __S_ISVTX;
pub const S_IRUSR = __S_IREAD;
pub const S_IWUSR = __S_IWRITE;
pub const S_IXUSR = __S_IEXEC;
pub const S_IRWXU = (__S_IREAD | __S_IWRITE) | __S_IEXEC;
pub const S_IRGRP = S_IRUSR >> @as(c_int, 3);
pub const S_IWGRP = S_IWUSR >> @as(c_int, 3);
pub const S_IXGRP = S_IXUSR >> @as(c_int, 3);
pub const S_IRWXG = S_IRWXU >> @as(c_int, 3);
pub const S_IROTH = S_IRGRP >> @as(c_int, 3);
pub const S_IWOTH = S_IWGRP >> @as(c_int, 3);
pub const S_IXOTH = S_IXGRP >> @as(c_int, 3);
pub const S_IRWXO = S_IRWXG >> @as(c_int, 3);
pub const R_OK = @as(c_int, 4);
pub const W_OK = @as(c_int, 2);
pub const X_OK = @as(c_int, 1);
pub const F_OK = @as(c_int, 0);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const AT_FDCWD = -@as(c_int, 100);
pub const AT_SYMLINK_NOFOLLOW = @as(c_int, 0x100);
pub const AT_REMOVEDIR = @as(c_int, 0x200);
pub const AT_SYMLINK_FOLLOW = @as(c_int, 0x400);
pub const AT_EACCESS = @as(c_int, 0x200);
pub const F_ULOCK = @as(c_int, 0);
pub const F_LOCK = @as(c_int, 1);
pub const F_TLOCK = @as(c_int, 2);
pub const F_TEST = @as(c_int, 3);
pub const _TIME_H = @as(c_int, 1);
pub const __need_NULL = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _BITS_TIME_H = @as(c_int, 1);
pub const CLOCKS_PER_SEC = @import("std").zig.c_translation.cast(__clock_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal));
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_PROCESS_CPUTIME_ID = @as(c_int, 2);
pub const CLOCK_THREAD_CPUTIME_ID = @as(c_int, 3);
pub const CLOCK_MONOTONIC_RAW = @as(c_int, 4);
pub const CLOCK_REALTIME_COARSE = @as(c_int, 5);
pub const CLOCK_MONOTONIC_COARSE = @as(c_int, 6);
pub const CLOCK_BOOTTIME = @as(c_int, 7);
pub const CLOCK_REALTIME_ALARM = @as(c_int, 8);
pub const CLOCK_BOOTTIME_ALARM = @as(c_int, 9);
pub const CLOCK_TAI = @as(c_int, 11);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const __struct_tm_defined = @as(c_int, 1);
pub const __itimerspec_defined = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const TIME_UTC = @as(c_int, 1);
pub inline fn __isleap(year: anytype) @TypeOf((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)))) {
    _ = &year;
    return (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)));
}
pub const _SYS_STAT_H = @as(c_int, 1);
pub inline fn __S_ISTYPE(mode: anytype, mask: anytype) @TypeOf((mode & __S_IFMT) == mask) {
    _ = &mode;
    _ = &mask;
    return (mode & __S_IFMT) == mask;
}
pub inline fn S_ISDIR(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFDIR)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFDIR);
}
pub inline fn S_ISCHR(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFCHR)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFCHR);
}
pub inline fn S_ISBLK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFBLK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFBLK);
}
pub inline fn S_ISREG(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFREG)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFREG);
}
pub inline fn S_ISFIFO(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFIFO)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFIFO);
}
pub inline fn S_ISLNK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFLNK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFLNK);
}
pub inline fn S_ISSOCK(mode: anytype) @TypeOf(__S_ISTYPE(mode, __S_IFSOCK)) {
    _ = &mode;
    return __S_ISTYPE(mode, __S_IFSOCK);
}
pub inline fn S_TYPEISMQ(buf: anytype) @TypeOf(__S_TYPEISMQ(buf)) {
    _ = &buf;
    return __S_TYPEISMQ(buf);
}
pub inline fn S_TYPEISSEM(buf: anytype) @TypeOf(__S_TYPEISSEM(buf)) {
    _ = &buf;
    return __S_TYPEISSEM(buf);
}
pub inline fn S_TYPEISSHM(buf: anytype) @TypeOf(__S_TYPEISSHM(buf)) {
    _ = &buf;
    return __S_TYPEISSHM(buf);
}
pub const S_IREAD = S_IRUSR;
pub const S_IWRITE = S_IWUSR;
pub const S_IEXEC = S_IXUSR;
pub const ACCESSPERMS = (S_IRWXU | S_IRWXG) | S_IRWXO;
pub const ALLPERMS = ((((S_ISUID | S_ISGID) | S_ISVTX) | S_IRWXU) | S_IRWXG) | S_IRWXO;
pub const DEFFILEMODE = ((((S_IRUSR | S_IWUSR) | S_IRGRP) | S_IWGRP) | S_IROTH) | S_IWOTH;
pub const S_BLKSIZE = @as(c_int, 512);
pub const _MKNOD_VER = @as(c_int, 0);
pub const _SYS_STATVFS_H = @as(c_int, 1);
pub const _SYS_UIO_H = @as(c_int, 1);
pub const __iovec_defined = @as(c_int, 1);
pub const _BITS_UIO_LIM_H = @as(c_int, 1);
pub const __IOV_MAX = @as(c_int, 1024);
pub const UIO_MAXIOV = __IOV_MAX;
pub inline fn fuse_loop_mt(f: anytype, config: anytype) @TypeOf(fuse_loop_mt_32(f, config)) {
    _ = &f;
    _ = &config;
    return fuse_loop_mt_32(f, config);
}
pub const fuse_opt = struct_fuse_opt;
pub const fuse_args = struct_fuse_args;
pub const fuse_log_level = enum_fuse_log_level;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const fuse_file_info = struct_fuse_file_info;
pub const fuse_loop_config_v1 = struct_fuse_loop_config_v1;
pub const fuse_loop_config = struct_fuse_loop_config;
pub const fuse_conn_info = struct_fuse_conn_info;
pub const fuse_session = struct_fuse_session;
pub const fuse_pollhandle = struct_fuse_pollhandle;
pub const fuse_conn_info_opts = struct_fuse_conn_info_opts;
pub const fuse_buf_flags = enum_fuse_buf_flags;
pub const fuse_buf_copy_flags = enum_fuse_buf_copy_flags;
pub const fuse_buf = struct_fuse_buf;
pub const fuse_bufvec = struct_fuse_bufvec;
pub const _fuse_off_t_must_be_64bit_dummy_struct = struct__fuse_off_t_must_be_64bit_dummy_struct;
pub const flock = struct_flock;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const sigevent = struct_sigevent;
pub const __locale_struct = struct___locale_struct;
pub const iovec = struct_iovec;
pub const fuse = struct_fuse;
pub const fuse_readdir_flags = enum_fuse_readdir_flags;
pub const fuse_fill_dir_flags = enum_fuse_fill_dir_flags;
pub const fuse_config = struct_fuse_config;
pub const fuse_operations = struct_fuse_operations;
pub const fuse_context = struct_fuse_context;
pub const fuse_fs = struct_fuse_fs;
