.class public Lcom/android/internal/telephony/emergency/RadioOnHelper;
.super Ljava/lang/Object;
.source "RadioOnHelper.java"

# interfaces
.implements Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;


# instance fields
.field private blacklist mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mInProgressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/emergency/RadioOnStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsRadioReady:Z

.field private blacklist mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/emergency/RadioOnStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mInProgressListeners:Ljava/util/List;

    return-void
.end method

.method private blacklist powerOffSatellite()V
    .locals 2

    .line 179
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/android/internal/telephony/emergency/RadioOnHelper$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/emergency/RadioOnHelper$1;-><init>(Lcom/android/internal/telephony/emergency/RadioOnHelper;Lcom/android/internal/telephony/satellite/SatelliteController;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0, p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method

.method private blacklist powerOnRadio(ZLcom/android/internal/telephony/Phone;Z)V
    .locals 8

    .line 119
    const-string v0, "RadioOnStateListener"

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 121
    const-string v2, "powerOnRadio - phoneForEmergencyCall is null, so we can\'t use fake radio on"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 130
    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->clearAllRadioOffReasons()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    move p1, v1

    .line 138
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerOnRadio - forEmergencyCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", phoneForEmergencyCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    .line 139
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, "null"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    .line 140
    const-string v3, ", isTestEmergencyNumber: true"

    goto :goto_2

    :cond_4
    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_8

    aget-object v5, v2, v4

    .line 146
    const-string v6, "powerOnRadio, enabling Radio"

    invoke-static {v0, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    if-eqz p3, :cond_6

    if-ne v5, p2, :cond_5

    goto :goto_4

    :cond_5
    move v6, v1

    .line 148
    :goto_4
    invoke-interface {v5, v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPowerOnForTestEmergencyCall(Z)V

    goto :goto_6

    :cond_6
    if-ne v5, p2, :cond_7

    move v7, v6

    goto :goto_5

    :cond_7
    move v7, v1

    .line 150
    :goto_5
    invoke-interface {v5, v6, p1, v7, v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPower(ZZZZ)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 157
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "airplane_mode_on"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_9

    .line 159
    const-string p1, "==> Turning off airplane mode for emergency call."

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    const-string p2, "state"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_9
    return-void
.end method

.method private blacklist setupListeners()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 63
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    new-instance v2, Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-direct {v2}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 67
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-virtual {v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    .line 68
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist isOkToCall(Lcom/android/internal/telephony/Phone;IZ)Z
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 211
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->isOkToCall(Lcom/android/internal/telephony/Phone;IZ)Z

    move-result p0

    return p0
.end method

.method public blacklist onComplete(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Z)V
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mIsRadioReady:Z

    or-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mIsRadioReady:Z

    .line 202
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mInProgressListeners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 203
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mInProgressListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    const/4 p2, 0x0

    iget-boolean p0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mIsRadioReady:Z

    invoke-interface {p1, p2, p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->onComplete(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Z)V

    :cond_0
    return-void
.end method

.method public blacklist onTimeout(Lcom/android/internal/telephony/Phone;IZ)Z
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 217
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->onTimeout(Lcom/android/internal/telephony/Phone;IZ)Z

    move-result p0

    return p0
.end method

.method public blacklist triggerRadioOnAndListen(Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZLcom/android/internal/telephony/Phone;ZI)V
    .locals 8

    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnHelper;->setupListeners()V

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    .line 91
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mInProgressListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mIsRadioReady:Z

    move v0, p1

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 94
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v4, p0

    move v5, p2

    goto :goto_4

    :cond_0
    if-ne v3, p3, :cond_1

    move v7, p5

    goto :goto_1

    :cond_1
    move v7, p1

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mInProgressListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    if-eqz p2, :cond_2

    if-ne v3, p3, :cond_2

    const/4 v1, 0x1

    move v6, v1

    :goto_2
    move-object v4, p0

    move v5, p2

    goto :goto_3

    :cond_2
    move v6, p1

    goto :goto_2

    :goto_3
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->waitForRadioOn(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZZI)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    move-object p0, v4

    move p2, v5

    goto :goto_0

    :cond_3
    move-object v4, p0

    move v5, p2

    .line 105
    invoke-direct {v4, v5, p3, p4}, Lcom/android/internal/telephony/emergency/RadioOnHelper;->powerOnRadio(ZLcom/android/internal/telephony/Phone;Z)V

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabledOrBeingEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 107
    invoke-direct {v4}, Lcom/android/internal/telephony/emergency/RadioOnHelper;->powerOffSatellite()V

    :cond_4
    return-void
.end method
