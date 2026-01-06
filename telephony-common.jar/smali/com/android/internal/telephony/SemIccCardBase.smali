.class public Lcom/android/internal/telephony/SemIccCardBase;
.super Ljava/lang/Object;
.source "SemIccCardBase.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getAtr(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getEuimid()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getFPLMN()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIccPin1RetryCount()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getIccPin2RetryCount()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getIccPuk1RetryCount()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getIccPuk2retryCount()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getIccUsimPersoEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getOPLMNwAct()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPLMNwAcT()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSimLockInfo(IILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist registerForNetworkSubsetLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForRegionalLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist registerForServicePoviderLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist reloadPLMNs()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setEPSLOCI([B)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setEPSLOCI([BLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setFPLMN([B)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setFPLMN([BLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setLOCI([BLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setOPLMNwAct([B)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setPLMNwAcT([B)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setPSLOCI([B)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setUimRemoteLockStatus(I)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 92
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    .line 93
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No valid IccCard"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 94
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist supplyPerso(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForNetworkSubsetLocked(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForPersoLocked(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForRegionalLocked(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist unregisterForServicePoviderLocked(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method
