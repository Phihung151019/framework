.class public final Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;
.super Ljava/lang/Object;
.source "EndpointMonitorConst.java"


# static fields
.field public static final ERROR_ALREADY_DONE:I = -0x4

.field public static final ERROR_BY_SYSTEM:I = -0x5

.field public static final ERROR_INVALID_ARGUMENT:I = -0x2

.field public static final ERROR_LIMIT_EXCEEDED:I = -0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_OPERATION_NOT_PERMITTED:I = -0x1

.field public static final ERROR_SERVICE_NOT_FOUND:I = -0x6

.field public static final EXTRAS_PACKAGE_NAME:I = 0x2

.field public static final EXTRAS_PROCESS_NAME:I = 0x1

.field public static final EXTRAS_SECURITY_CONTEXT:I = 0x4

.field public static final FLAG_TRACING_FS:I = 0x1

.field public static final FLAG_TRACING_FW:I = 0x80

.field public static final FLAG_TRACING_NETWORK_EVENT_ABNORMAL_PKT:I = 0x10000

.field public static final FLAG_TRACING_NETWORK_EVENT_BYPASS_VPN:I = 0x40000

.field public static final FLAG_TRACING_NETWORK_EVENT_INSECURE_PORT:I = 0x8000

.field public static final FLAG_TRACING_NETWORK_EVENT_LOCAL_PKT:I = 0x20000

.field public static final FLAG_TRACING_NETWORK_EVENT_SOCK_LISTENER:I = 0x80000

.field public static final FLAG_TRACING_PKT:I = 0x40

.field public static final FLAG_TRACING_PROC:I = 0x800

.field public static final FLAG_TRACING_PROCESS_CREATION:I = 0x1000

.field public static final FLAG_TRACING_PROCESS_PERMISSIONS_MODIFICATION:I = 0x4000

.field public static final FLAG_TRACING_PROCESS_TERMINATION:I = 0x2000

.field public static final FLAG_TRACING_SC_CHMOD:I = 0x100

.field public static final FLAG_TRACING_SC_CHOWN:I = 0x200

.field public static final FLAG_TRACING_SC_CLOSE:I = 0x4

.field public static final FLAG_TRACING_SC_EXECVE:I = 0x10

.field public static final FLAG_TRACING_SC_MEMFD_CREATE:I = 0x400

.field public static final FLAG_TRACING_SC_MOUNT:I = 0x8

.field public static final FLAG_TRACING_SC_OPEN:I = 0x2

.field public static final FLAG_TRACING_SK:I = 0x20

.field public static final GENERIC_SYSCALL_NR_CLOSE:I = 0x39

.field public static final GENERIC_SYSCALL_NR_EXECVE:I = 0xdd

.field public static final GENERIC_SYSCALL_NR_FCHMOD:I = 0x34

.field public static final GENERIC_SYSCALL_NR_FCHMODAT:I = 0x35

.field public static final GENERIC_SYSCALL_NR_FCHOWN:I = 0x37

.field public static final GENERIC_SYSCALL_NR_FCHOWNAT:I = 0x36

.field public static final GENERIC_SYSCALL_NR_MEMFD_CREATE:I = 0x117

.field public static final GENERIC_SYSCALL_NR_MOUNT:I = 0x28

.field public static final GENERIC_SYSCALL_NR_OPEN:I = 0x38

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_GENERALIZED:I = 0x2

.field public static final MODE_RAW:I = 0x3

.field public static final MODE_SIMPLIFIED:I = 0x1

.field public static final MON_TYPE_APP_PROCESS:I = 0x7

.field public static final MON_TYPE_DOMAIN_ACCESS:I = 0x6

.field public static final MON_TYPE_FILE_ACCESS:I = 0x2

.field public static final MON_TYPE_NETWORK_EVENTS:I = 0xd

.field public static final MON_TYPE_NETWORK_EVENT_ABNORMAL_PKT:I = 0xf

.field public static final MON_TYPE_NETWORK_EVENT_BYPASS_VPN:I = 0x11

.field public static final MON_TYPE_NETWORK_EVENT_INSECURE_PORT:I = 0xe

.field public static final MON_TYPE_NETWORK_EVENT_LOCAL_NW_PKT:I = 0x10

.field public static final MON_TYPE_NETWORK_EVENT_SOCK_LISTENER:I = 0x12

.field public static final MON_TYPE_PROCESS:I = 0x4

.field public static final MON_TYPE_PROCESS_CREATION:I = 0xa

.field public static final MON_TYPE_PROCESS_PERMISSIONS_MODIFICATION:I = 0xc

.field public static final MON_TYPE_PROCESS_TERMINATION:I = 0xb

.field public static final MON_TYPE_SOCK_STATE_CHANGE:I = 0x3

.field public static final MON_TYPE_SYSTEM_CALL:I = 0x1

.field public static final MON_TYPE_TLS_PACKET:I = 0x5

.field public static final OPT_TRACE_APPLICATION_ONLY:Ljava/lang/String; = "app_only"

.field public static final TRACE_CLASS_DOMAIN_ACCESS:I = 0x2

.field public static final TRACE_CLASS_FILE_ACCESS:I = 0x1

.field public static final TRACE_EVENT_APP_BINDING:I = 0x259

.field public static final TRACE_EVENT_APP_DYING:I = 0x25a

.field public static final TRACE_EVENT_F2FS_DATAREAD_END:I = 0xd3

.field public static final TRACE_EVENT_F2FS_DATAREAD_START:I = 0xd2

.field public static final TRACE_EVENT_F2FS_DATAWRITE_END:I = 0xd5

.field public static final TRACE_EVENT_F2FS_DATAWRITE_START:I = 0xd4

.field public static final TRACE_EVENT_F2FS_IGET:I = 0xc9

.field public static final TRACE_EVENT_F2FS_IGET_EXIT:I = 0xca

.field public static final TRACE_EVENT_F2FS_READDIR:I = 0xcb

.field public static final TRACE_EVENT_F2FS_READPAGE:I = 0xcc

.field public static final TRACE_EVENT_F2FS_READPAGES:I = 0xcd

.field public static final TRACE_EVENT_F2FS_UNLINK_ENTER:I = 0xce

.field public static final TRACE_EVENT_F2FS_UNLINK_EXIT:I = 0xcf

.field public static final TRACE_EVENT_F2FS_WRITEPAGE:I = 0xd0

.field public static final TRACE_EVENT_F2FS_WRITEPAGES:I = 0xd1

.field public static final TRACE_EVENT_INET_SOCK_SET_STATE:I = 0x12d

.field public static final TRACE_EVENT_PRIVILEGE_ESCALATION:I = 0x322

.field public static final TRACE_EVENT_SCHED_CLS_EGRESS:I = 0x1f6

.field public static final TRACE_EVENT_SCHED_CLS_INGRESS:I = 0x1f5

.field public static final TRACE_EVENT_SCHED_PROCESS_EXEC:I = 0x2bd

.field public static final TRACE_EVENT_SCHED_PROCESS_EXIT:I = 0x2be

.field public static final TRACE_EVENT_SCHED_PROCESS_FORK:I = 0x2bf

.field public static final TRACE_EVENT_SYS_CLOSE:I = 0x68

.field public static final TRACE_EVENT_SYS_ENTER:I = 0x65

.field public static final TRACE_EVENT_SYS_ENTER_EXECVE:I = 0x4c5

.field public static final TRACE_EVENT_SYS_ENTER_SETFSGID:I = 0x480

.field public static final TRACE_EVENT_SYS_ENTER_SETFSUID:I = 0x47f

.field public static final TRACE_EVENT_SYS_ENTER_SETGID:I = 0x478

.field public static final TRACE_EVENT_SYS_ENTER_SETREGID:I = 0x477

.field public static final TRACE_EVENT_SYS_ENTER_SETRESGID:I = 0x47d

.field public static final TRACE_EVENT_SYS_ENTER_SETRESUID:I = 0x47b

.field public static final TRACE_EVENT_SYS_ENTER_SETREUID:I = 0x479

.field public static final TRACE_EVENT_SYS_ENTER_SETUID:I = 0x47a

.field public static final TRACE_EVENT_SYS_EXECVE:I = 0x6a

.field public static final TRACE_EVENT_SYS_EXIT:I = 0x66

.field public static final TRACE_EVENT_SYS_EXIT_EXECVE:I = 0x8ad

.field public static final TRACE_EVENT_SYS_EXIT_SETFSGID:I = 0x868

.field public static final TRACE_EVENT_SYS_EXIT_SETFSUID:I = 0x867

.field public static final TRACE_EVENT_SYS_EXIT_SETGID:I = 0x860

.field public static final TRACE_EVENT_SYS_EXIT_SETREGID:I = 0x85f

.field public static final TRACE_EVENT_SYS_EXIT_SETRESGID:I = 0x865

.field public static final TRACE_EVENT_SYS_EXIT_SETRESUID:I = 0x863

.field public static final TRACE_EVENT_SYS_EXIT_SETREUID:I = 0x861

.field public static final TRACE_EVENT_SYS_EXIT_SETUID:I = 0x862

.field public static final TRACE_EVENT_SYS_FCHMOD:I = 0x6b

.field public static final TRACE_EVENT_SYS_FCHMODAT:I = 0x6c

.field public static final TRACE_EVENT_SYS_FCHOWN:I = 0x6e

.field public static final TRACE_EVENT_SYS_FCHOWNAT:I = 0x6d

.field public static final TRACE_EVENT_SYS_MEMFD_CREATE:I = 0x6f

.field public static final TRACE_EVENT_SYS_MOUNT:I = 0x69

.field public static final TRACE_EVENT_SYS_OPEN:I = 0x67

.field public static final TRACE_EVENT_TASK_RENAME:I = 0x321

.field private static final TRACE_FIRST_TYPE:I = 0x1

.field private static final TRACE_LAST_TYPE:I = 0x12

.field public static final TRACE_SYSTEM_ETC:I = 0x5

.field public static final TRACE_SYSTEM_F2FS:I = 0x2

.field public static final TRACE_SYSTEM_RAW_SYSCALL:I = 0x1

.field public static final TRACE_SYSTEM_SCHED:I = 0x4

.field public static final TRACE_SYSTEM_SOCK:I = 0x3

.field public static final TRACE_TYPE_APP_PROC:I = 0x7

.field public static final TRACE_TYPE_DOMAIN:I = 0x6

.field public static final TRACE_TYPE_FS:I = 0x2

.field public static final TRACE_TYPE_NETWORK_EVENTS:I = 0xd

.field public static final TRACE_TYPE_NETWORK_EVENT_ABNORMAL_PKT:I = 0xf

.field public static final TRACE_TYPE_NETWORK_EVENT_BYPASS_VPN:I = 0x11

.field public static final TRACE_TYPE_NETWORK_EVENT_INSECURE_PORT:I = 0xe

.field public static final TRACE_TYPE_NETWORK_EVENT_LOCAL_NW_PKT:I = 0x10

.field public static final TRACE_TYPE_NETWORK_EVENT_SOCK_LISTENER:I = 0x12

.field public static final TRACE_TYPE_PHISHING:I = 0x8

.field public static final TRACE_TYPE_PKT:I = 0x5

.field public static final TRACE_TYPE_PROC:I = 0x4

.field public static final TRACE_TYPE_PROCESS_CREATION:I = 0xa

.field public static final TRACE_TYPE_PROCESS_PERMISSIONS_MODIFICATION:I = 0xc

.field public static final TRACE_TYPE_PROCESS_TERMINATION:I = 0xb

.field public static final TRACE_TYPE_SIGNALS:I = 0x9

.field public static final TRACE_TYPE_SOCK:I = 0x3

.field public static final TRACE_TYPE_SYSCALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convScEventToScFlag(I)I
    .locals 1
    .param p0, "event"    # I

    .line 314
    packed-switch p0, :pswitch_data_0

    .line 332
    const/4 v0, 0x0

    return v0

    .line 330
    :pswitch_0
    const/16 v0, 0x400

    return v0

    .line 328
    :pswitch_1
    const/16 v0, 0x200

    return v0

    .line 325
    :pswitch_2
    const/16 v0, 0x100

    return v0

    .line 322
    :pswitch_3
    const/16 v0, 0x10

    return v0

    .line 320
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 318
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 316
    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static matchScEventToScFlags(II)Z
    .locals 1
    .param p0, "event"    # I
    .param p1, "flags"    # I

    .line 336
    invoke-static {p0}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->convScEventToScFlag(I)I

    move-result v0

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static translateClass(I)Ljava/lang/String;
    .locals 2
    .param p0, "classCode"    # I

    .line 184
    packed-switch p0, :pswitch_data_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 189
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_0
    const-string v0, "Domain Access"

    .line 190
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_1
    const-string v0, "File Access"

    .line 187
    .restart local v0    # "ret":Ljava/lang/String;
    nop

    .line 195
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static translateEvent(I)Ljava/lang/String;
    .locals 2
    .param p0, "eventCode"    # I

    .line 222
    sparse-switch p0, :sswitch_data_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 296
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_0
    const-string v0, "schedcls_egress"

    .line 297
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 293
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_1
    const-string v0, "schedcls_ingress"

    .line 294
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 290
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_2
    const-string v0, "inet_sock_set_state"

    .line 291
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 287
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_3
    const-string v0, "f2fs_datawrite_end"

    .line 288
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 284
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_4
    const-string v0, "f2fs_datawrite_start"

    .line 285
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 281
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_5
    const-string v0, "f2fs_dataread_end"

    .line 282
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 278
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_6
    const-string v0, "f2fs_dataread_start"

    .line 279
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 275
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_7
    const-string v0, "f2fs_writepages"

    .line 276
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 272
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_8
    const-string v0, "f2fs_writepage"

    .line 273
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 269
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_9
    const-string v0, "f2fs_unlink_exit"

    .line 270
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 266
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_a
    const-string v0, "f2fs_unlink_enter"

    .line 267
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 263
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_b
    const-string v0, "f2fs_readpages"

    .line 264
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 260
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_c
    const-string v0, "f2fs_readpage"

    .line 261
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 257
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_d
    const-string v0, "f2fs_readdir"

    .line 258
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 254
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_e
    const-string v0, "f2fs_iget_exit"

    .line 255
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 251
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_f
    const-string v0, "f2fs_iget"

    .line 252
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 248
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_10
    const-string v0, "raw_syscalls___memfd_create"

    .line 249
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 245
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_11
    const-string v0, "raw_syscalls___fchown"

    .line 246
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 242
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_12
    const-string v0, "raw_syscalls___fchownat"

    .line 243
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 239
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_13
    const-string v0, "raw_syscalls___fchmodat"

    .line 240
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 236
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_14
    const-string v0, "raw_syscalls___fchmod"

    .line 237
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 233
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_15
    const-string v0, "raw_syscalls___execve"

    .line 234
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_16
    const-string v0, "raw_syscalls___mount"

    .line 231
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_17
    const-string v0, "raw_syscalls___close"

    .line 228
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_18
    const-string v0, "raw_syscalls___open"

    .line 225
    .restart local v0    # "ret":Ljava/lang/String;
    nop

    .line 302
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_18
        0x68 -> :sswitch_17
        0x69 -> :sswitch_16
        0x6a -> :sswitch_15
        0x6b -> :sswitch_14
        0x6c -> :sswitch_13
        0x6d -> :sswitch_12
        0x6e -> :sswitch_11
        0x6f -> :sswitch_10
        0xc9 -> :sswitch_f
        0xca -> :sswitch_e
        0xcb -> :sswitch_d
        0xcc -> :sswitch_c
        0xcd -> :sswitch_b
        0xce -> :sswitch_a
        0xcf -> :sswitch_9
        0xd0 -> :sswitch_8
        0xd1 -> :sswitch_7
        0xd2 -> :sswitch_6
        0xd3 -> :sswitch_5
        0xd4 -> :sswitch_4
        0xd5 -> :sswitch_3
        0x12d -> :sswitch_2
        0x1f5 -> :sswitch_1
        0x1f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static translateSystem(I)Ljava/lang/String;
    .locals 2
    .param p0, "systemCode"    # I

    .line 200
    packed-switch p0, :pswitch_data_0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 211
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_0
    const-string v0, "sched"

    .line 212
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_1
    const-string v0, "sock"

    .line 209
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 205
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_2
    const-string v0, "f2fs"

    .line 206
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_3
    const-string v0, "raw_syscalls"

    .line 203
    .restart local v0    # "ret":Ljava/lang/String;
    nop

    .line 217
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static validateMode(I)Z
    .locals 2
    .param p0, "mode"    # I

    .line 310
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x3

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static validateTraceType(I)Z
    .locals 2
    .param p0, "type"    # I

    .line 306
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x12

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
