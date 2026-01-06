.class public Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;
.super Lcom/android/internal/telephony/data/PhoneSwitcher;
.source "PhoneSwitcherForMultiSim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;,
        Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;,
        Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;,
        Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;,
        Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$IpcLL;,
        Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_DATA_DISCONNECTED_PHONE0:I = 0x195

.field private static blacklist LOG_TAG:Ljava/lang/String; = "PhoneSwitcherForMultiSim"


# instance fields
.field private blacklist isQcom:Z

.field private blacklist mEverRequestChanged:I

.field private blacklist mJPNDataEnabled:[Z

.field private blacklist mJPNRoamingEnabled:[Z

.field private blacklist mModemDependency:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;

.field private blacklist mMsimSubMode:I

.field private blacklist mNoSet:[Z

.field private blacklist mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

.field private blacklist mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

.field private blacklist mSendRiLCommandReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmModemDependency(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mModemDependency:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSendRiLCommandReason(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSendRiLCommandReason(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/PhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    const/4 p1, 0x2

    .line 72
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mNoSet:[Z

    .line 73
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNDataEnabled:[Z

    .line 74
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNRoamingEnabled:[Z

    .line 79
    const-string p1, "ro.boot.hardware"

    const-string p2, ""

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "qcom"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->isQcom:Z

    const/4 p1, 0x0

    .line 81
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mMsimSubMode:I

    .line 87
    new-instance p3, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    invoke-direct {p3}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    .line 88
    sget-object p3, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    iput-object p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    .line 90
    sget-object p3, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->PRIMARYDATA:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    iput-object p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    const/4 p3, -0x1

    .line 92
    iput p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mEverRequestChanged:I

    .line 95
    iget-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string v0, "multi_sim_datacross_slot"

    invoke-static {p4, v0, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    iget-object p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p4, "multi_sim_dds_progressing"

    invoke-static {p3, p4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    iget-boolean p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->isQcom:Z

    if-eqz p3, :cond_0

    new-instance p3, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$QcLL;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$IpcLL;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$IpcLL;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;)V

    :goto_0
    iput-object p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mModemDependency:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;

    .line 101
    iget-object p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNDataEnabled:[Z

    const/4 p4, 0x1

    invoke-static {p3, p4}, Ljava/util/Arrays;->fill([ZZ)V

    .line 102
    iget-object p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNRoamingEnabled:[Z

    invoke-static {p3, p4}, Ljava/util/Arrays;->fill([ZZ)V

    .line 103
    iget-object p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mNoSet:[Z

    invoke-static {p3, p4}, Ljava/util/Arrays;->fill([ZZ)V

    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->getMsimSubMode()I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mMsimSubMode:I

    .line 107
    const-string p3, "persist.radio.multisim.config"

    invoke-static {p3, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 108
    const-string p3, "dsda"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 109
    :goto_1
    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge p1, p2, :cond_2

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    if-eqz p2, :cond_1

    add-int/lit16 p3, p1, 0x193

    const/4 p4, 0x0

    .line 112
    invoke-virtual {p2, p0, p3, p4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private blacklist broadcastDdsChangeResult(ZI)V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastDdsChangeResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), ddsPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 476
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->isQcom:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    iget v1, v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    if-ne v1, p2, :cond_1

    if-eqz v0, :cond_1

    .line 478
    const-string p1, "broadcastDdsChangeResult: skip broadcast during request override."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-void

    .line 480
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_2

    .line 482
    const-string p1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 484
    :cond_2
    const-string p1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_FAIL"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 p1, 0x1000000

    .line 486
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 487
    const-string p1, "phone"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private blacklist checkModeAndEvalForDsdaCalling()V
    .locals 4

    .line 1098
    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mMsimSubMode:I

    const/4 v1, 0x0

    .line 1102
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1103
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1104
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mMsimSubMode:I

    .line 1107
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mMsimSubMode:I

    if-eq v0, v2, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling..msimsubmode change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mMsimSubMode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", do re-evaluate"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 1109
    const-string v0, "MsimSubModeChanged"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist getMsimSubMode()I
    .locals 4

    .line 1085
    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1087
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v2, :cond_1

    .line 1088
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1089
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1090
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private blacklist getRequestOverride()Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;
    .locals 13

    .line 540
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)V

    .line 542
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const-string v2, "getRequestOverride : "

    if-eqz v1, :cond_2

    .line 543
    const-string v1, "getRequestOverride : mNetworkRequestList is empty."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    sget-object p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->RESTORE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;)V

    return-object v0

    .line 550
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isRestore()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 551
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->clear()V

    :cond_1
    return-object v0

    .line 555
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v1

    const-string v3, ") is not valid!"

    if-nez v1, :cond_3

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestOverride : mPrimaryDataSubId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-object v0

    .line 559
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestOverride : mPreferredDataPhoneId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-object v0

    .line 563
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isWaiting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestOverride: isWaiting = true, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    iget-object v2, v2, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", skip!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-object v0

    .line 572
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 574
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v4

    move v6, v5

    :goto_1
    move v7, v6

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 575
    invoke-virtual {v8}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 576
    invoke-virtual {v8}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result v5

    goto :goto_3

    .line 577
    :cond_8
    invoke-virtual {v8}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result v9

    if-le v5, v9, :cond_9

    goto/16 :goto_9

    :cond_9
    :goto_3
    const/4 v9, 0x4

    .line 581
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_b

    const/16 v9, 0xa

    .line 582
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v9

    if-nez v9, :cond_b

    const/16 v9, 0xc

    .line 583
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xd

    .line 584
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_4

    :cond_a
    move v9, v10

    goto :goto_5

    :cond_b
    :goto_4
    move v9, v11

    :goto_5
    if-nez v9, :cond_d

    .line 585
    iget v12, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mMsimSubMode:I

    if-ne v12, v11, :cond_d

    .line 586
    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v12

    if-nez v12, :cond_c

    const/16 v12, 0x9

    .line 587
    invoke-virtual {v8, v12}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 588
    :cond_c
    const-string v9, "DSDA mode allow non-dds mms/xcap, no need to do override logic"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    move v11, v9

    :goto_6
    if-eqz v11, :cond_e

    goto :goto_2

    .line 595
    :cond_e
    invoke-virtual {v8}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getSubIdFromNetworkSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v7

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_12

    if-eq v7, v4, :cond_12

    if-ne v7, v1, :cond_f

    goto :goto_9

    .line 600
    :cond_f
    :goto_7
    iget v8, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v10, v8, :cond_11

    .line 601
    iget-object v8, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v8, v8, v10

    if-ne v8, v7, :cond_10

    move v6, v10

    goto :goto_8

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    if-eq v6, v4, :cond_7

    .line 608
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->isSimOff(I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 609
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skip override as sim off on override phone "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    move v6, v4

    goto/16 :goto_1

    .line 617
    :cond_12
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRequestOverride : requestPhoneId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPreferredDataPhoneId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPrimaryDataSubId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ddsSubId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    if-eq v6, v4, :cond_13

    if-eq v7, v1, :cond_13

    .line 622
    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->OVERRIDE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;I)V

    goto :goto_a

    .line 624
    :cond_13
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 625
    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->RESTORE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;)V

    goto :goto_a

    .line 626
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isRestore()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 627
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->clear()V

    .line 631
    :cond_15
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist handleDdsChangeCompletion()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_dds_progressing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mEverRequestChanged:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isNone()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 170
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evaluate stacked requests. mEverRequestChanged="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mEverRequestChanged:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mEverRequestChanged:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    const-string v0, "ddsDone"

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 172
    iput v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mEverRequestChanged:I

    return-void
.end method

.method private blacklist isDdsChanging()Z
    .locals 2

    .line 466
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_dds_progressing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method private blacklist isOngoingCrossSimCalling(I)Z
    .locals 3

    .line 1071
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 1075
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1076
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private blacklist isSimOff(I)Z
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 1118
    const-string v2, "ro.build.version.oneui"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const v3, 0xeac4

    if-lt v2, v3, :cond_2

    if-eqz v0, :cond_5

    .line 1119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5

    .line 1120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 1121
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1122
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_2
    if-nez p1, :cond_4

    .line 1128
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "phone1_on"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    return v4

    :cond_3
    return v1

    :cond_4
    if-ne p1, v4, :cond_5

    .line 1130
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "phone2_on"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_5

    return v4

    :cond_5
    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1

    .line 1051
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onDataDisconnected(I)V
    .locals 2

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_DATA_DISCONNECTED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->set(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;)V

    add-int/lit16 v0, p1, 0x195

    .line 522
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->unregisterForAllDataDisconnectedForDDS()V

    goto :goto_0

    .line 531
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataDisconnected: phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 534
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mModemDependency:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->onDataDisconnected(I)V

    const/4 p1, 0x1

    .line 536
    const-string v0, "dataDisconnected"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void
.end method

.method private blacklist recoverDds(I)V
    .locals 4

    .line 493
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mOldPreferredDataPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 495
    const-string v2, "recoverDds : mOldPreferredDataPhoneId is INVALID_PHONE_INDEX."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mOldPreferredDataPhoneId:I

    if-ne v2, p1, :cond_1

    .line 497
    const-string v0, "recoverDds : dds change to same subId."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    move v0, v1

    .line 502
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 503
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    if-ne v0, v1, :cond_4

    .line 504
    :cond_3
    const-string v0, "onDdsSwitchResponse: Scheduling DDS switch retry"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 506
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x71

    .line 505
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 507
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-ne v2, p1, :cond_5

    .line 508
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoverDds: Recover subid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 509
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    return-void

    .line 511
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recoverDds: subId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is not active or mPreferredDataPhoneId("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") != phoneId("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), skip!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 513
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    return-void
.end method

.method private blacklist setMobileDataSetting(Lcom/android/internal/telephony/Phone;IZZ)V
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMobileDataSetting: enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", roamingEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNDataEnabled:[Z

    aget-boolean v0, v0, p2

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNRoamingEnabled:[Z

    aget-boolean v0, v0, p2

    if-ne p4, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mNoSet:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 231
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p1, p3, p4, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->setMobileDataSetting(ZZLandroid/os/Message;)V

    .line 232
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNDataEnabled:[Z

    aput-boolean p3, p1, p2

    .line 233
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNRoamingEnabled:[Z

    aput-boolean p4, p1, p2

    .line 234
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mNoSet:[Z

    const/4 p1, 0x0

    aput-boolean p1, p0, p2

    return-void
.end method


# virtual methods
.method protected blacklist abortIfDdsIsChanging(Z)Z
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->isDdsChanging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mEverRequestChanged:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 252
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mEverRequestChanged:I

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvaluate aborted due to during dds changing. mEverRequestChanged="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mEverRequestChanged:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist ddsChangeFailedOperation(Landroid/os/AsyncResult;)V
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 138
    :goto_0
    const-string v1, "DDS change failed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->broadcastDdsChangeResult(ZI)V

    .line 141
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_datacross_slot"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->recoverDds(I)V

    goto :goto_1

    .line 147
    :cond_1
    const-string p1, "Airplane mode is enabled. Do not recover!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 150
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->handleDdsChangeCompletion()V

    return-void
.end method

.method protected blacklist ddsChangeSuccessOperation(I)V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DDS change success, PhoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 156
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->broadcastDdsChangeResult(ZI)V

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isSetMobileDataSettingAllowedForDCM()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->setMobileDataSetting()V

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->handleDdsChangeCompletion()V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1057
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1059
    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxDataAttachModemCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mMaxDataAttachModemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mModemDependency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mModemDependency:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    const-string v1, "mNetworkRequestList : "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1064
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 1067
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist evaluateDiffDetectedWithRequestOverride(Z)Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isWaiting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvaluate: isWaiting = true, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    iget-object v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", skip!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    if-eq v0, v1, :cond_1

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvaluate : mSendRiLCommandReason = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> NONE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 282
    iput-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method public blacklist getJPNDataEnabled(I)Z
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNDataEnabled:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public blacklist getJPNRoamingEnabled(I)Z
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNRoamingEnabled:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method protected blacklist getLastSentPhoneIdForDataCross()I
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mModemDependency:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->getLastSentPhoneId()I

    move-result p0

    return p0
.end method

.method public blacklist getRequestOverridePhoneId()I
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->mPhoneId:I

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 178
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    add-int/lit16 v0, v0, -0x195

    .line 189
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->onDataDisconnected(I)V

    return-void

    .line 183
    :pswitch_1
    const-string p1, "ssChanged"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->checkModeAndEvalForDsdaCalling()V

    return-void

    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist handlePreferredDataPhoneIdUpdate()V
    .locals 4

    .line 394
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getFallbackDataPhoneIdForInternetRequests()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-ne v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isRestore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "DDS change not happen. make state as None"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->getRequestOverride()Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mModemDependency:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->processRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferredDataPhoneId: mPreferredDataPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist handleRilCommands(Landroid/os/Message;I)V
    .locals 4

    .line 291
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 293
    const-string p1, "sendRilCommands(): phone is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-void

    .line 298
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    if-nez v1, :cond_1

    .line 299
    const-string p1, "sendRilCommands should be called after mHalCommandToUse is updated."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-void

    .line 301
    :cond_1
    const-string v2, "multi_sim_dds_progressing"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 302
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    iget-object v0, v0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result p2

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-interface {v0, p2, p1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->secSetDataAllowed(ZLandroid/os/Message;I)V

    return-void

    .line 308
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-ne p2, v1, :cond_7

    .line 309
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->isQcom:Z

    if-eqz v1, :cond_4

    .line 311
    iget-object p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mRequestOverride:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    invoke-virtual {p2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;->isOverride()Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x8

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    or-int/2addr p0, p2

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/RadioConfig;->setPreferredDataModem(ILandroid/os/Message;)V

    return-void

    .line 314
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 316
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v1

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 317
    :goto_1
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 318
    iget-object v0, v0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result p2

    iget p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-interface {v0, p2, p1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->secSetDataAllowed(ZLandroid/os/Message;I)V

    return-void

    .line 320
    :cond_6
    iget-object v0, v0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->isPhoneActive(I)Z

    move-result p0

    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->secSetDataAllowed(ZLandroid/os/Message;I)V

    :cond_7
    return-void
.end method

.method protected blacklist isMultiSimPhoneSwitcher()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist isNotUpdatePhoneIdForSpecificOperators()Z
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_preferred_mode_during_calling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XMO"

    const-string v1, "SPO"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 127
    invoke-static {v4, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v2, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, " isPhoneInVoiceCallChanged : not updated."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return v4

    :cond_0
    return v2
.end method

.method public blacklist needDdsChange(I)Z
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mModemDependency:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->needDdsChange(I)Z

    move-result p0

    return p0
.end method

.method protected blacklist setCommandReason(I)V
    .locals 2

    .line 270
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 271
    sget-object p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->PRIMARY_DATA_PHONEID_CHANGED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    :cond_0
    return-void
.end method

.method protected blacklist setCommandReasonAndAutoDataSubId()V
    .locals 2

    .line 262
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mSendRiLCommandReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    .line 263
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    if-eq v0, v1, :cond_0

    const v0, 0x7fffffff

    .line 264
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoSelectedDataSubId:I

    :cond_0
    return-void
.end method

.method protected blacklist setFallbackSubIdWithRequestSubId(I)I
    .locals 3

    .line 419
    invoke-direct {p0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->getRequestOverride()Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mModemDependency:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$ModemDependency;->processRequestOverride(Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;)I

    move-result v0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nRequestOverrideSubId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    .line 424
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    sget-object p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->REQUEST:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    return v0

    .line 427
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    if-ne p1, v0, :cond_1

    .line 429
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->PRIMARYDATA:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    return p1

    .line 431
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->AUTODDS:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    return p1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method protected blacklist setIsDataEnabled()Z
    .locals 4

    .line 329
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v1

    const/16 v2, 0x11

    .line 333
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 337
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    .line 338
    const-string v3, "ATT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DSG"

    .line 339
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DSH"

    .line 340
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 342
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 345
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 346
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 348
    const-string v0, "updatePreferredDataPhoneId: USC domestic roaming always true in ATT device."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method protected blacklist setMobileDataSetting()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 199
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-ge v1, v2, :cond_5

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_0

    .line 202
    const-string v0, "setMobileDataSetting(): phone is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getTm()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v4

    .line 209
    const-string v5, "44010"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 210
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v3

    .line 211
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v5

    .line 213
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataNetworkController;->getAlwaysOnPdn()Lcom/android/internal/telephony/data/AlwaysOnPdn;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isSupportingVoWIFI()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "ro.boot.hardware"

    const-string v7, ""

    .line 214
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "qcom"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v0

    .line 215
    :goto_1
    invoke-direct {p0, v2, v1, v6, v3}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->setMobileDataSetting(Lcom/android/internal/telephony/Phone;IZZ)V

    goto :goto_2

    .line 217
    :cond_2
    invoke-direct {p0, v2, v1, v5, v3}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->setMobileDataSetting(Lcom/android/internal/telephony/Phone;IZZ)V

    .line 221
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNDataEnabled:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mJPNRoamingEnabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_4

    :cond_3
    const v2, 0x42080    # 3.79001E-40f

    .line 222
    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected blacklist setPreferredDataReasonEmergency()V
    .locals 2

    .line 357
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->EMERGENCY:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferredDataPhoneId: mPreferredDataPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist setPreferredDataReasonNoCard()V
    .locals 2

    .line 441
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->NOCARD:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionToEmergencyPhone: mPreferredDataPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist updateHalCommandToUse()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 451
    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mHalCommandToUse:I

    return-void
.end method

.method protected blacklist updatePreferredDataPhoneIdWithinDataEnable(Ljava/lang/String;)V
    .locals 3

    .line 365
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 366
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->isOngoingCrossSimCalling(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 373
    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mMsimSubMode:I

    if-ne v1, v2, :cond_1

    .line 374
    const-string v1, "MsimSubModeChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    if-ne v0, p1, :cond_0

    .line 375
    const-string p1, "keep dds on mPhoneIdInVoiceCall in dsda mode."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_0
    const-string p1, "do not update mPreferredDataPhoneId to mPhoneIdInVoiceCall in dsda mode"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_1
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 381
    sget-object p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->VOICECALL:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    goto :goto_0

    .line 384
    :cond_2
    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 385
    sget-object p1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->CROSSSIMCALLING:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    .line 389
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePreferredDataPhoneId: mPreferredDataPhoneId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->mPreferredDataReason:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;->log(Ljava/lang/String;)V

    return-void
.end method
