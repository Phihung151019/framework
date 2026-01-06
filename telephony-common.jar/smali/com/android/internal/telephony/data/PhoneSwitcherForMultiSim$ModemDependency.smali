.class Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;
.super Ljava/lang/Object;
.source "PhoneSwitcherForMultiSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModemDependency"
.end annotation


# instance fields
.field protected blacklist dataNetworkControllerBeforeChange:Lcom/android/internal/telephony/data/DataNetworkController;

.field protected blacklist dataPhoneIdBeforeChange:I

.field protected blacklist dataSubIdBeforeChange:I

.field protected blacklist mLastSentPhoneId:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 701
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 702
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataSubIdBeforeChange:I

    .line 703
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataPhoneIdBeforeChange:I

    const/4 v0, 0x0

    .line 704
    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataNetworkControllerBeforeChange:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 706
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->mLastSentPhoneId:I

    return-void
.end method


# virtual methods
.method public blacklist checkPdnConnected()V
    .locals 0

    .line 0
    return-void
.end method

.method protected blacklist getLastSentPhoneId()I
    .locals 0

    .line 698
    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->mLastSentPhoneId:I

    return p0
.end method

.method protected blacklist initializeNoneState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V
    .locals 0

    const/4 p0, 0x1

    .line 848
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->setStateInitialized(Z)V

    return-void
.end method

.method protected blacklist initializeOverrideState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V
    .locals 1

    const/4 v0, 0x1

    .line 800
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->setStateInitialized(Z)V

    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V

    .line 803
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget-object p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    const-string v0, "multi_sim_datacross_slot"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected blacklist initializeRestoreState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V
    .locals 1

    const/4 v0, 0x1

    .line 826
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->setStateInitialized(Z)V

    .line 828
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V

    return-void
.end method

.method public blacklist needDdsChange(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist notifyNonDdsMmsMsg(Z)V
    .locals 4

    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 741
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget-object v1, v1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    .line 742
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    .line 744
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->mLastSentPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->mLastSentPhoneId:I

    .line 746
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    const-string v2, "allow to send non dds mms end msg on previous phone"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    goto :goto_1

    .line 748
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    const-string p1, "notifyNonDdsMmsMsg: ddsPhoneId is not valid!"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    return-void

    .line 754
    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemDataProps;->support_on_demand_pdn()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    move v2, v3

    :cond_3
    if-eqz p1, :cond_5

    .line 755
    const-string v1, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 757
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    const-string p1, "notifyNonDdsMmsMsg: skip notify for VZW models due to CBS issue"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    return-void

    .line 761
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 762
    const-string v2, " is null!"

    if-eqz v1, :cond_a

    .line 763
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v1

    const/4 v3, -0x1

    if-eqz p1, :cond_6

    .line 764
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->mLastSentPhoneId:I

    if-ne p1, v3, :cond_6

    if-eqz v1, :cond_9

    const/16 p1, 0x1c

    .line 766
    const-string v2, "nonDdsMmsStarted"

    .line 767
    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 766
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 770
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNonDdsMmsMsg: Start in slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    .line 771
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->mLastSentPhoneId:I

    return-void

    .line 774
    :cond_6
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->mLastSentPhoneId:I

    if-eq p1, v3, :cond_8

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 777
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v1

    .line 782
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->mLastSentPhoneId:I

    .line 783
    iput v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->mLastSentPhoneId:I

    goto :goto_2

    .line 779
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNonDdsMmsMsg: lastSentPhone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->mLastSentPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    const/16 p1, 0x1d

    .line 786
    const-string v2, "nonDdsMmsEnded"

    .line 787
    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 786
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 789
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNonDdsMmsMsg: End in slot"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 793
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNonDdsMmsMsg: ddsPhone "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onDataDisconnected(I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected blacklist precheckNoneState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)Z
    .locals 2

    .line 854
    iget-object v0, p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mState:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 858
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->getStateInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 859
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->initializeNoneState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist precheckOverrideState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)Z
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isWaiting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 811
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->getStateInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->initializeOverrideState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist precheckPdnConnected()Z
    .locals 5

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataSubIdBeforeChange:I

    .line 715
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget-object v1, v1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataPhoneIdBeforeChange:I

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmSendRiLCommandReason(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 718
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataPhoneIdBeforeChange:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataPhoneIdBeforeChange:I

    .line 721
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataPhoneIdBeforeChange:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataPhoneIdBeforeChange:I

    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget v4, v3, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-lt v0, v4, :cond_2

    goto :goto_1

    .line 725
    :cond_2
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 727
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataNetworkControllerBeforeChange:Lcom/android/internal/telephony/data/DataNetworkController;

    return v2

    .line 729
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "precheckPdnConnected: phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->dataPhoneIdBeforeChange:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is null"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v1
.end method

.method protected blacklist precheckRestoreState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)Z
    .locals 1

    .line 834
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->getStateInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->initializeRestoreState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist processNoneState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V

    .line 868
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "multi_sim_datacross_slot"

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v0
.end method

.method protected blacklist processOverrideState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I
    .locals 0

    .line 820
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result p0

    return p0
.end method

.method public blacklist processRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget-object v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    .line 875
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->precheckOverrideState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->processOverrideState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I

    move-result v0

    .line 880
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isRestore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 881
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->precheckRestoreState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->processRestoreState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I

    move-result v0

    .line 885
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isNone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 886
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->precheckNoneState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 887
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->processNoneState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I

    move-result p0

    return p0

    .line 888
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmSendRiLCommandReason(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    if-ne p1, v1, :cond_3

    .line 889
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmModemDependency(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->checkPdnConnected()V

    :cond_3
    return v0
.end method

.method protected blacklist processRestoreState(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I
    .locals 0

    .line 842
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;

    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result p0

    return p0
.end method
