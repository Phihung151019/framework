.class public final Lcom/android/devicediagnostics/commands/CommandsKt;
.super Ljava/lang/Object;
.source "Commands.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u001a\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0006\u0010\u0005\u001a\u00020\u0003\u001a\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n\u001a\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001\u001a\u000e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0001\u001a\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n\u001a\u000e\u0010\u000f\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n\u001a\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n\u001a\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0012\u001a\u00020\u00012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001\u001a\u0006\u0010\u0014\u001a\u00020\u0003\u001a\u0006\u0010\u0015\u001a\u00020\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "STATE_PROP",
        "",
        "isDebuggable",
        "",
        "isTradeInModeEnabled",
        "isBootCompleted",
        "ensureTradeInModeAllowed",
        "",
        "doMain",
        "args",
        "Lcom/android/devicediagnostics/commands/Tokenizer;",
        "callingPackage",
        "startActivity",
        "activity",
        "doTesting",
        "doEvaluate",
        "doGetStatus",
        "queryStringContentProvider",
        "uriString",
        "selection",
        "isTradeInModeReady",
        "doWaitUntilReady",
        "packages__apps__DeviceDiagnostics__tradeinmode__android_common__tradeinmode"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final STATE_PROP:Ljava/lang/String; = "persist.adb.tradeinmode"


# direct methods
.method public static final callingPackage()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 124
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :sswitch_0
    const-string v0, "com.android.shell"

    goto :goto_0

    .line 122
    :sswitch_1
    const-string v0, "root"

    .line 121
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final doEvaluate(Lcom/android/devicediagnostics/commands/Tokenizer;)V
    .locals 3
    .param p0, "args"    # Lcom/android/devicediagnostics/commands/Tokenizer;

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/devicediagnostics/commands/Tokenizer;->more()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "content://com.android.devicediagnostics.EvaluateContentProvider"

    .line 190
    .local v0, "uriString":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/devicediagnostics/commands/CommandsKt;->queryStringContentProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    const-string v1, "Entering evaluation mode."

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 192
    return-void

    .line 186
    .end local v0    # "uriString":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final doGetStatus(Lcom/android/devicediagnostics/commands/Tokenizer;)V
    .locals 6
    .param p0, "args"    # Lcom/android/devicediagnostics/commands/Tokenizer;

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/devicediagnostics/commands/Tokenizer;->next()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "arg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 197
    .local v1, "challenge":Ljava/lang/String;
    const-string v2, "--challenge"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Unexpected argument."

    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/android/devicediagnostics/commands/Tokenizer;->next()Ljava/lang/String;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected challenge."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_1
    if-nez v0, :cond_4

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/android/devicediagnostics/commands/Tokenizer;->more()Z

    move-result v2

    if-nez v2, :cond_3

    .line 210
    const-string v2, "content://com.android.devicediagnostics.GetStatusContentProvider"

    .line 211
    .local v2, "uriString":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/devicediagnostics/commands/CommandsKt;->queryStringContentProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "result":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 213
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "No result found."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    return-void

    .line 216
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 217
    return-void

    .line 207
    .end local v2    # "uriString":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final doMain(Lcom/android/devicediagnostics/commands/Tokenizer;)V
    .locals 4
    .param p0, "args"    # Lcom/android/devicediagnostics/commands/Tokenizer;

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/devicediagnostics/commands/Tokenizer;->next()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "cmd":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 87
    const-string v1, "wait-until-ready"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {}, Lcom/android/devicediagnostics/commands/CommandsKt;->doWaitUntilReady()V

    .line 90
    invoke-virtual {p0}, Lcom/android/devicediagnostics/commands/Tokenizer;->next()Ljava/lang/String;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    return-void

    .line 96
    :cond_0
    const-string v1, "testing"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/devicediagnostics/commands/CommandsKt;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-static {p0}, Lcom/android/devicediagnostics/commands/CommandsKt;->doTesting(Lcom/android/devicediagnostics/commands/Tokenizer;)V

    .line 98
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lcom/android/devicediagnostics/commands/CommandsKt;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    invoke-static {}, Lcom/android/devicediagnostics/commands/CommandsKt;->ensureTradeInModeAllowed()V

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "sys.powerctl"

    sparse-switch v1, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v1, "getstatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-static {p0}, Lcom/android/devicediagnostics/commands/CommandsKt;->doGetStatus(Lcom/android/devicediagnostics/commands/Tokenizer;)V

    goto :goto_0

    .line 107
    :sswitch_1
    const-string v1, "poweroff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    const-string v1, "shutdown"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :sswitch_2
    const-string v1, "evaluate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-static {p0}, Lcom/android/devicediagnostics/commands/CommandsKt;->doEvaluate(Lcom/android/devicediagnostics/commands/Tokenizer;)V

    goto :goto_0

    .line 107
    :sswitch_3
    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown command."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Device not fully booted"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected command."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x37ba085b -> :sswitch_3
        0x9a4ac99 -> :sswitch_2
        0x332cca4a -> :sswitch_1
        0x668006c8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final doTesting(Lcom/android/devicediagnostics/commands/Tokenizer;)V
    .locals 6
    .param p0, "args"    # Lcom/android/devicediagnostics/commands/Tokenizer;

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/devicediagnostics/commands/Tokenizer;->more()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    const-string v0, "content://com.android.devicediagnostics.TradeInModeTestingContentProvider"

    .line 153
    .local v0, "uriString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/devicediagnostics/commands/Tokenizer;->next()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "cmd":Ljava/lang/String;
    const-string v2, "status"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-static {v0, v1}, Lcom/android/devicediagnostics/commands/CommandsKt;->queryStringContentProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "result":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 158
    return-void

    .line 161
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 162
    .local v2, "reboot":Z
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "start"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    const-string v3, "Device will reboot in trade-in mode."

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 164
    const/4 v2, 0x1

    goto :goto_0

    .line 162
    :sswitch_1
    const-string v3, "wipe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    const-string v3, "Device will reboot to wipe userdata."

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 167
    const/4 v2, 0x1

    goto :goto_0

    .line 162
    :sswitch_2
    const-string v3, "stop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    const-string v3, "Device will restart adb."

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 174
    :goto_0
    invoke-static {v0, v1}, Lcom/android/devicediagnostics/commands/CommandsKt;->queryStringContentProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "result":Ljava/lang/String;
    const-string v4, "ok"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    if-eqz v2, :cond_1

    .line 180
    const-string v4, "sys.powerctl"

    const-string v5, "reboot"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    return-void

    .line 176
    :cond_2
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Failed to query testing content provider"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 171
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown argument."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    .end local v0    # "uriString":Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "reboot":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x360802 -> :sswitch_2
        0x37b047 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final doWaitUntilReady()V
    .locals 2

    .line 299
    nop

    :goto_0
    invoke-static {}, Lcom/android/devicediagnostics/commands/CommandsKt;->isTradeInModeReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method public static final ensureTradeInModeAllowed()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/android/devicediagnostics/commands/CommandsKt;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/devicediagnostics/commands/CommandsKt;->isTradeInModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Command not available."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method public static final isBootCompleted()Z
    .locals 2

    .line 57
    const-string v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final isDebuggable()Z
    .locals 3

    .line 49
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static final isTradeInModeEnabled()Z
    .locals 2

    .line 53
    const-string v0, "persist.adb.tradeinmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final isTradeInModeReady()Z
    .locals 9

    .line 272
    invoke-static {}, Lcom/android/devicediagnostics/commands/CommandsKt;->isBootCompleted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 273
    return v1

    .line 276
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 277
    .local v0, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_1

    .line 278
    return v1

    .line 281
    :cond_1
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 282
    .local v2, "token":Landroid/os/Binder;
    const-string v3, "content://com.android.devicediagnostics.GetStatusContentProvider"

    .line 283
    .local v3, "uriString":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 284
    .local v4, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 285
    .local v5, "holder":Landroid/app/ContentProviderHolder;
    nop

    .line 287
    :try_start_0
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Landroid/os/IBinder;

    const-string v8, "*cmd*"

    invoke-interface {v0, v6, v1, v7, v8}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;

    move-result-object v6

    .line 286
    move-object v5, v6

    .line 288
    if-eqz v5, :cond_2

    iget-object v6, v5, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v1

    .line 292
    :goto_0
    if-eqz v5, :cond_3

    iget-object v7, v5, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v7, :cond_3

    .line 293
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    check-cast v8, Landroid/os/IBinder;

    invoke-interface {v0, v7, v8, v1}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 288
    :cond_3
    return v6

    .line 292
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_4

    iget-object v7, v5, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v7, :cond_4

    .line 293
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    check-cast v8, Landroid/os/IBinder;

    invoke-interface {v0, v7, v8, v1}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    :cond_4
    throw v6

    .line 289
    :catch_0
    move-exception v6

    .line 290
    .local v6, "e":Ljava/lang/Exception;
    nop

    .line 292
    .end local v6    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_5

    iget-object v7, v5, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v7, :cond_5

    .line 293
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    check-cast v8, Landroid/os/IBinder;

    invoke-interface {v0, v7, v8, v1}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .restart local v6    # "e":Ljava/lang/Exception;
    nop

    .line 290
    :cond_5
    return v1
.end method

.method public static final queryStringContentProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;

    const-string v0, "uriString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 221
    .local v1, "am":Landroid/app/IActivityManager;
    if-eqz v1, :cond_c

    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 226
    .local v6, "extras":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 227
    const-string v0, "android:query-arg-sql-selection"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v8, v0

    .line 231
    .local v8, "token":Landroid/os/Binder;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 232
    .local v4, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 233
    .local v2, "holder":Landroid/app/ContentProviderHolder;
    nop

    .line 235
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    move-object v3, v8

    check-cast v3, Landroid/os/IBinder;

    const-string v5, "*cmd*"

    invoke-interface {v1, v0, v9, v3, v5}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 234
    move-object v10, v0

    .line 236
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .local v10, "holder":Landroid/app/ContentProviderHolder;
    if-eqz v10, :cond_a

    .line 240
    :try_start_1
    iget-object v2, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 241
    new-instance v3, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Lcom/android/devicediagnostics/commands/CommandsKt;->callingPackage()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-direct {v3, v0, v5, v11}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 242
    new-array v5, v9, [Ljava/lang/String;

    .line 244
    nop

    .line 245
    nop

    .line 240
    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    move-object v2, v0

    .line 247
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_2

    .line 248
    nop

    .line 265
    .end local v2    # "cursor":Landroid/database/Cursor;
    iget-object v0, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    move-object v3, v8

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v1, v0, v3, v9}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .restart local v2    # "cursor":Landroid/database/Cursor;
    nop

    .line 248
    :cond_1
    return-object v11

    .line 250
    :cond_2
    nop

    .line 251
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_4

    .line 252
    nop

    .line 262
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    .end local v2    # "cursor":Landroid/database/Cursor;
    iget-object v0, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    move-object v3, v8

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v1, v0, v3, v9}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .restart local v2    # "cursor":Landroid/database/Cursor;
    nop

    .line 252
    :cond_3
    return-object v11

    .line 254
    :cond_4
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_6

    .line 255
    nop

    .line 262
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 265
    .end local v2    # "cursor":Landroid/database/Cursor;
    iget-object v0, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_5

    .line 266
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    move-object v3, v8

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v1, v0, v3, v9}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .restart local v2    # "cursor":Landroid/database/Cursor;
    nop

    .line 255
    :cond_5
    return-object v11

    .line 257
    :cond_6
    :try_start_6
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getType(I)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    .line 258
    nop

    .line 262
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 265
    .end local v2    # "cursor":Landroid/database/Cursor;
    iget-object v0, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_7

    .line 266
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    move-object v3, v8

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v1, v0, v3, v9}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .restart local v2    # "cursor":Landroid/database/Cursor;
    nop

    .line 258
    :cond_7
    return-object v11

    .line 260
    :cond_8
    :try_start_8
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 262
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 265
    .end local v2    # "cursor":Landroid/database/Cursor;
    iget-object v3, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v3, :cond_9

    .line 266
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    move-object v5, v8

    check-cast v5, Landroid/os/IBinder;

    invoke-interface {v1, v3, v5, v9}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .restart local v2    # "cursor":Landroid/database/Cursor;
    nop

    .line 260
    :cond_9
    return-object v0

    .line 262
    :catchall_0
    move-exception v0

    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "token":Landroid/os/Binder;
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .end local p0    # "uriString":Ljava/lang/String;
    .end local p1    # "selection":Ljava/lang/String;
    throw v0

    .line 265
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "am":Landroid/app/IActivityManager;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v8    # "token":Landroid/os/Binder;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p0    # "uriString":Ljava/lang/String;
    .restart local p1    # "selection":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v2, v10

    goto :goto_0

    .line 237
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find provider: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "token":Landroid/os/Binder;
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .end local p0    # "uriString":Ljava/lang/String;
    .end local p1    # "selection":Ljava/lang/String;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 265
    .restart local v1    # "am":Landroid/app/IActivityManager;
    .local v2, "holder":Landroid/app/ContentProviderHolder;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v8    # "token":Landroid/os/Binder;
    .restart local p0    # "uriString":Ljava/lang/String;
    .restart local p1    # "selection":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :goto_0
    if-eqz v2, :cond_b

    iget-object v3, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v3, :cond_b

    .line 266
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    move-object v5, v8

    check-cast v5, Landroid/os/IBinder;

    invoke-interface {v1, v3, v5, v9}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    :cond_b
    throw v0

    .line 222
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "token":Landroid/os/Binder;
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "ActivityManager is not available."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final startActivity(Ljava/lang/String;)V
    .locals 9
    .param p0, "activity"    # Ljava/lang/String;

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 130
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 134
    const-string v1, "start"

    const-string v2, "-n"

    filled-new-array {v1, v2, p0}, [Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 135
    .local v6, "shellArgs":[Ljava/lang/String;
    invoke-interface {v0}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 137
    sget-object v3, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    .line 138
    sget-object v4, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    .line 139
    sget-object v5, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    .line 140
    nop

    .line 141
    nop

    .line 142
    new-instance v8, Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 136
    const/4 v7, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 144
    return-void

    .line 131
    .end local v6    # "shellArgs":[Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "ActivityManager is not available."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
