.class Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;
.super Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;
.source "PhoneSwitcherForMultiSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcLL"
.end annotation


# instance fields
.field blacklist mNeedDdsChange:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 900
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    .line 901
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)V

    const/4 p1, 0x0

    .line 903
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->mNeedDdsChange:Z

    return-void
.end method


# virtual methods
.method public blacklist checkPdnConnected()V
    .locals 4

    .line 944
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->precheckPdnConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->mNeedDdsChange:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmSendRiLCommandReason(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataNetworkControllerBeforeChange:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 948
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isAnyMeteredConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 949
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->PDN_DISCONNECTING:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;)V

    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataPhoneIdBeforeChange:I

    add-int/lit16 v1, v1, 0x195

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNeedSyncDisconnect:Z

    .line 956
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataNetworkControllerBeforeChange:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->registerForAllDataDisconnectedForDDS()V

    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataNetworkControllerBeforeChange:Lcom/android/internal/telephony/data/DataNetworkController;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 958
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataPhoneIdBeforeChange:I

    add-int/lit16 v1, v1, 0x195

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPdnConnected: PDN connected in Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataPhoneIdBeforeChange:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected blacklist initializeOverrideState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V
    .locals 2

    .line 966
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->initializeOverrideState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V

    .line 969
    iget p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->needDdsChange(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->mNeedDdsChange:Z

    .line 970
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeOverrideState: mNeedDdsChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->mNeedDdsChange:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist needDdsChange(I)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 925
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->mNeedDdsChange:Z

    if-eqz v0, :cond_1

    return v0

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getTm()Landroid/telephony/TelephonyManager;

    const-string v0, "ril.simoperator"

    const-string v2, "ETC"

    invoke-static {p1, v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 930
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 931
    const-string v2, "CTC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 932
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p1

    .line 933
    invoke-static {p1}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 934
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDdsChange: CDMA radioTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public blacklist onDataDisconnected(I)V
    .locals 2

    .line 908
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNeedSyncDisconnect:Z

    .line 910
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->mNeedDdsChange:Z

    if-eqz v0, :cond_0

    .line 911
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->MODEM_REQUESTED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fputmSendRiLCommandReason(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;)V

    .line 912
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataDisconnected: mSendRiLCommandReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmSendRiLCommandReason(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected blacklist processNoneState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I
    .locals 2

    .line 998
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->mNeedDdsChange:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1000
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->notifyNonDdsMmsMsg(Z)V

    .line 1002
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->mNeedDdsChange:Z

    .line 1004
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->processNoneState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I

    move-result p0

    return p0
.end method

.method protected blacklist processOverrideState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I
    .locals 2

    .line 974
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget-object v0, p1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result p1

    .line 976
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->checkPdnConnected()V

    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isWaiting()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 979
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->mNeedDdsChange:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 981
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->notifyNonDdsMmsMsg(Z)V

    return v1

    :cond_1
    return p1
.end method

.method protected blacklist processRestoreState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I
    .locals 2

    .line 989
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->mNeedDdsChange:Z

    if-nez v0, :cond_0

    .line 990
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->clear()V

    .line 991
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRestoreState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
