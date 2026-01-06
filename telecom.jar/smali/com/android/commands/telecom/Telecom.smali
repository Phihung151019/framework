.class public final Lcom/android/commands/telecom/Telecom;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .line 45
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 47
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 48
    nop

    .line 49
    const-string v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 50
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 51
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/server/telecom/TelecomShellCommand;

    invoke-direct {v2, v0, v1}, Lcom/android/server/telecom/TelecomShellCommand;-><init>(Lcom/android/internal/telecom/ITelecomService;Landroid/content/Context;)V

    sget-object v4, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    sget-object v5, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    sget-object v6, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    move-object v7, p0

    .end local p0    # "args":[Ljava/lang/String;
    .local v7, "args":[Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/telecom/TelecomShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 53
    return-void
.end method
