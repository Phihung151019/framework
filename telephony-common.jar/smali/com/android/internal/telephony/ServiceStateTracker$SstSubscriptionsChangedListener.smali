.class Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SstSubscriptionsChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .locals 9

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string v1, "SubscriptionListener.onSubscriptionInfoChanged"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 436
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    if-ne v2, v0, :cond_0

    return-void

    .line 440
    :cond_0
    invoke-static {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-$$Nest$fputmPrevSubId(Lcom/android/internal/telephony/ServiceStateTracker;I)V

    .line 453
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 454
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->-$$Nest$fgetmPrevSubId(Lcom/android/internal/telephony/ServiceStateTracker;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 456
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 457
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->-$$Nest$fgetmOutOfServiceSS(Lcom/android/internal/telephony/ServiceStateTracker;)Landroid/telephony/ServiceState;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-$$Nest$fgetmPrevSubId(Lcom/android/internal/telephony/ServiceStateTracker;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChangedForSubId(Landroid/telephony/ServiceState;I)V

    goto/16 :goto_1

    .line 458
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    return-void

    .line 474
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KOR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->setSubsReadyForVm(Z)V

    .line 477
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateVoiceMail()V

    .line 481
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    const-string v3, "CHC"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 482
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->querySupportVonr()V

    .line 486
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 488
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 490
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-$$Nest$fgetmPrevSubId(Lcom/android/internal/telephony/ServiceStateTracker;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 494
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 498
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string v4, "Update SS information on moving from invalid to valid sub id"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 499
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v4, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->-$$Nest$mupdateServiceStateToDb(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/telephony/ServiceState;)V

    .line 501
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->notifySignalStrength()V

    .line 505
    :cond_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11102e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    xor-int/2addr v2, v3

    .line 507
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/Phone;->sendSubscriptionSettings(Z)V

    .line 509
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-$$Nest$msetDataNetworkTypeForPhone(Lcom/android/internal/telephony/ServiceStateTracker;I)V

    .line 514
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 516
    const-string v2, "network_selection_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 518
    const-string v5, "network_selection_name_key"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 520
    const-string v7, "network_selection_short_key"

    invoke-interface {v1, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 523
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 524
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 525
    :cond_7
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 526
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 532
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 533
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 534
    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 535
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 541
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierDisplayName()V

    .line 543
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    return-void
.end method
