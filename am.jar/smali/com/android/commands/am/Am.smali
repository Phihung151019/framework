.class public Lcom/android/commands/am/Am;
.super Lcom/android/internal/os/BaseCommand;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/am/Am$MyShellCallback;
    }
.end annotation


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    .line 45
    invoke-direct {p0}, Lcom/android/commands/am/Am;->svcInit()V

    .line 46
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/commands/am/Am;

    invoke-direct {v0}, Lcom/android/commands/am/Am;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/am/Am;->run([Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private svcInit()V
    .locals 2

    .line 58
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    .line 59
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const-string v1, "Error type 2"

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    return-void

    .line 64
    :cond_0
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/am/Am;->mPm:Landroid/content/pm/IPackageManager;

    .line 65
    iget-object v0, p0, Lcom/android/commands/am/Am;->mPm:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_1

    .line 66
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    return-void

    .line 69
    :cond_1
    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "op":Ljava/lang/String;
    const-string v1, "instrument"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->runInstrument()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->getRawArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/commands/am/Am;->runAmCmd([Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 74
    :try_start_0
    const-string v0, "help"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/commands/am/Am;->runAmCmd([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/util/AndroidException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Landroid/util/AndroidException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 78
    .end local v0    # "e":Landroid/util/AndroidException;
    :goto_0
    return-void
.end method

.method parseUserArg(Ljava/lang/String;)I
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .line 93
    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, -0x1

    .local v0, "userId":I
    goto :goto_1

    .line 95
    .end local v0    # "userId":I
    :cond_0
    const-string v0, "current"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cur"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "userId":I
    goto :goto_1

    .line 96
    .end local v0    # "userId":I
    :cond_2
    :goto_0
    const/4 v0, -0x2

    .line 100
    .restart local v0    # "userId":I
    :goto_1
    return v0
.end method

.method runAmCmd([Ljava/lang/String;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/android/commands/am/Am$MyShellCallback;

    invoke-direct {v0}, Lcom/android/commands/am/Am$MyShellCallback;-><init>()V

    move-object v6, v0

    .line 146
    .local v6, "cb":Lcom/android/commands/am/Am$MyShellCallback;
    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    sget-object v4, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    new-instance v7, Lcom/android/commands/am/Am$1;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/android/commands/am/Am$1;-><init>(Lcom/android/commands/am/Am;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, p1

    .end local p1    # "args":[Ljava/lang/String;
    .local v5, "args":[Ljava/lang/String;
    :try_start_1
    invoke-interface/range {v1 .. v7}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    iput-boolean v8, v6, Lcom/android/commands/am/Am$MyShellCallback;->mActive:Z

    .line 153
    nop

    .line 154
    return-void

    .line 148
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 152
    .end local v5    # "args":[Ljava/lang/String;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .end local p1    # "args":[Ljava/lang/String;
    .restart local v5    # "args":[Ljava/lang/String;
    goto :goto_1

    .line 148
    .end local v5    # "args":[Ljava/lang/String;
    .restart local p1    # "args":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .line 149
    .restart local v5    # "args":[Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    :try_start_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error type 2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    new-instance v0, Landroid/util/AndroidException;

    const-string v1, "Can\'t call activity manager; is the system running?"

    invoke-direct {v0, v1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .end local v5    # "args":[Ljava/lang/String;
    .end local v6    # "cb":Lcom/android/commands/am/Am$MyShellCallback;
    .end local p0    # "this":Lcom/android/commands/am/Am;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    .end local p1    # "e":Landroid/os/RemoteException;
    .restart local v5    # "args":[Ljava/lang/String;
    .restart local v6    # "cb":Lcom/android/commands/am/Am$MyShellCallback;
    .restart local p0    # "this":Lcom/android/commands/am/Am;
    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_1
    iput-boolean v8, v6, Lcom/android/commands/am/Am$MyShellCallback;->mActive:Z

    .line 153
    throw p1
.end method

.method public runInstrument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/android/commands/am/Instrument;

    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/commands/am/Am;->mPm:Landroid/content/pm/IPackageManager;

    invoke-direct {v0, v1, v2}, Lcom/android/commands/am/Instrument;-><init>(Landroid/app/IActivityManager;Landroid/content/pm/IPackageManager;)V

    .line 160
    .local v0, "instrument":Lcom/android/commands/am/Instrument;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 161
    const-string v1, "-p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/commands/am/Instrument;->profileFile:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_1
    const-string v1, "-w"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 164
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->wait:Z

    goto :goto_0

    .line 165
    :cond_2
    const-string v1, "-r"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->rawMode:Z

    goto :goto_0

    .line 167
    :cond_3
    const-string v1, "-m"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->protoStd:Z

    goto :goto_0

    .line 169
    :cond_4
    const-string v1, "-f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->protoFile:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/commands/am/Am;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/commands/am/Instrument;->logPath:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_5
    const-string v1, "-e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "argKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "argValue":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/commands/am/Instrument;->args:Landroid/os/Bundle;

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v1    # "argKey":Ljava/lang/String;
    .end local v3    # "argValue":Ljava/lang/String;
    goto :goto_0

    :cond_6
    const-string v1, "--no_window_animation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 178
    const-string v1, "--no-window-animation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_1

    .line 180
    :cond_7
    const-string v1, "--no-hidden-api-checks"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 181
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->disableHiddenApiChecks:Z

    goto/16 :goto_0

    .line 182
    :cond_8
    const-string v1, "--no-test-api-access"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    .line 183
    iput-boolean v4, v0, Lcom/android/commands/am/Instrument;->disableTestApiChecks:Z

    goto/16 :goto_0

    .line 184
    :cond_9
    const-string v1, "--no-isolated-storage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 185
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->disableIsolatedStorage:Z

    goto/16 :goto_0

    .line 186
    :cond_a
    const-string v1, "--no-logcat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 187
    iput-boolean v4, v0, Lcom/android/commands/am/Instrument;->captureLogcat:Z

    goto/16 :goto_0

    .line 188
    :cond_b
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 189
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/commands/am/Instrument;->userId:I

    goto/16 :goto_0

    .line 190
    :cond_c
    const-string v1, "--abi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 191
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/commands/am/Instrument;->abi:Ljava/lang/String;

    goto/16 :goto_0

    .line 192
    :cond_d
    const-string v1, "--no-restart"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 193
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->noRestart:Z

    goto/16 :goto_0

    .line 194
    :cond_e
    const-string v1, "--always-check-signature"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 195
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->alwaysCheckSignature:Z

    goto/16 :goto_0

    .line 196
    :cond_f
    const-string v1, "--instrument-sdk-sandbox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 197
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->instrumentSdkSandbox:Z

    goto/16 :goto_0

    .line 198
    :cond_10
    const-string v1, "--instrument-sdk-in-sandbox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 199
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->instrumentSdkSandbox:Z

    .line 200
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->instrumentSdkInSandbox:Z

    goto/16 :goto_0

    .line 202
    :cond_11
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    return-void

    .line 179
    :cond_12
    :goto_1
    iput-boolean v3, v0, Lcom/android/commands/am/Instrument;->noWindowAnimation:Z

    goto/16 :goto_0

    .line 207
    :cond_13
    iget v1, v0, Lcom/android/commands/am/Instrument;->userId:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_14

    .line 208
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Can\'t start instrumentation with user \'all\'"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    return-void

    .line 212
    :cond_14
    invoke-virtual {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/commands/am/Instrument;->componentNameArg:Ljava/lang/String;

    .line 213
    invoke-virtual {v0}, Lcom/android/commands/am/Instrument;->run()V

    .line 214
    return-void
.end method
