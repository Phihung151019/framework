.class public Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;
.super Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
.source "ActivityBatchImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityBatchImpl"


# instance fields
.field private final mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 51
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILcom/samsung/android/hardware/context/provider/EventListener;)V

    .line 53
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl$1;-><init>(Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    .line 59
    return-void
.end method


# virtual methods
.method public add()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v0, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->RESUME:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v1, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->add()V

    .line 74
    :goto_0
    return-void
.end method

.method public handleDiedBinder()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v0, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/util/RestoreManager;->restoreStart()V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDiedBinder() : mExceptionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v1, v1, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBatchImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    return-void
.end method

.method public onBinderDied()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v1, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied() : mExceptionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v1, v1, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityBatchImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 84
    const-string v0, "HistoryMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Mode"

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v0, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->RESUME:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    if-ne v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;->mRestoreManager:Lcom/samsung/android/hardware/context/util/RestoreManager;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->NORMAL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v1, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    .line 93
    :cond_1
    return-object p1
.end method
