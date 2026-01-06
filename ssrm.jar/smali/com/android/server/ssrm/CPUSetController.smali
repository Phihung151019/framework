.class public Lcom/android/server/ssrm/CPUSetController;
.super Ljava/lang/Object;
.source "CPUSetController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CPUSetController$SingleTakeStatusReceiver;,
        Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;
    }
.end annotation


# static fields
.field private static final MEDIA_PROVIER_NAME:Ljava/lang/String; = "com.google.android.providers.media.module"

.field private static final SINGLE_TAKE_NAME:Ljava/lang/String; = "com.samsung.android.singletake.service"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSingleTakeStatus:Lcom/android/server/ssrm/CPUSetController$SingleTakeStatusReceiver;

.field private mSmartSwitchReceiver:Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/android/server/ssrm/CPUSetController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CPUSetController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/ssrm/CPUSetController;->mContext:Landroid/content/Context;

    .line 31
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTES:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM8450:Z

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    new-instance v0, Lcom/android/server/ssrm/CPUSetController$SingleTakeStatusReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/CPUSetController$SingleTakeStatusReceiver;-><init>(Lcom/android/server/ssrm/CPUSetController;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CPUSetController;->mSingleTakeStatus:Lcom/android/server/ssrm/CPUSetController$SingleTakeStatusReceiver;

    .line 33
    iget-object v0, p0, Lcom/android/server/ssrm/CPUSetController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/CPUSetController;->mSingleTakeStatus:Lcom/android/server/ssrm/CPUSetController$SingleTakeStatusReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 36
    :cond_1
    new-instance v0, Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;-><init>(Lcom/android/server/ssrm/CPUSetController;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CPUSetController;->mSmartSwitchReceiver:Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;

    .line 37
    iget-object v0, p0, Lcom/android/server/ssrm/CPUSetController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/CPUSetController;->mSmartSwitchReceiver:Lcom/android/server/ssrm/CPUSetController$SmartSwitchReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 38
    return-void
.end method


# virtual methods
.method updateMediaProvier(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/CPUSetController;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.providers.media.module"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->getPidFromProcessName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "pid":I
    if-eqz p1, :cond_1

    .line 63
    if-lez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V

    .line 66
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/CPUSetController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SingleTake Start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    if-lez v0, :cond_2

    .line 69
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V

    .line 71
    :cond_2
    sget-object v1, Lcom/android/server/ssrm/CPUSetController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SingleTake Stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "pid":I
    :goto_0
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ssrm/CPUSetController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception during update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method updateSingleTake(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/CPUSetController;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.singletake.service"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->getPidFromProcessName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "pid":I
    if-eqz p1, :cond_1

    .line 44
    if-lez v0, :cond_0

    .line 45
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V

    .line 47
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/CPUSetController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SingleTake Start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    if-lez v0, :cond_2

    .line 50
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V

    .line 52
    :cond_2
    sget-object v1, Lcom/android/server/ssrm/CPUSetController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SingleTake Stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "pid":I
    :goto_0
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ssrm/CPUSetController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception during update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
