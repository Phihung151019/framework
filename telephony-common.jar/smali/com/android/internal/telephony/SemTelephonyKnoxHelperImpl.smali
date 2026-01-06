.class public Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;
.super Ljava/lang/Object;
.source "SemTelephonyKnoxHelperImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/SemTelephonyKnoxHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$DeviceInventoryWrapperImpl;,
        Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;,
        Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$ApplicationRestrictionsManagerWrapperImpl;,
        Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$RoamingPolicyWrapperImpl;
    }
.end annotation


# instance fields
.field private blacklist mApplicationRestrictionsManager:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;

.field private blacklist mConnWaitActive:[Ljava/lang/Boolean;

.field private final blacklist mConnWaitActiveMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeviceInfo:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryWrapper;

.field private blacklist mRestrictionPolicy:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;

.field private blacklist mRoamingPolicy:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RoamingPolicyWrapper;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActiveMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mDeviceInfo:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryWrapper;

    .line 38
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mRestrictionPolicy:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;

    .line 39
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mApplicationRestrictionsManager:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mRoamingPolicy:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RoamingPolicyWrapper;

    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->init()V

    return-void
.end method

.method private blacklist getPreconditionForCallStateChangedIntent()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getProKioskState()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 80
    :goto_0
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;->getInstance()Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;->getExtendedCallInfoState()Z

    move-result v0

    .line 85
    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private blacklist init()V
    .locals 1

    .line 49
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$DeviceInventoryWrapperImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$DeviceInventoryWrapperImpl;-><init>(Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mDeviceInfo:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryWrapper;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$PhoneRestrictionPolicyWrapperImpl;-><init>(Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mRestrictionPolicy:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$ApplicationRestrictionsManagerWrapperImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$ApplicationRestrictionsManagerWrapperImpl;-><init>(Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mApplicationRestrictionsManager:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$RoamingPolicyWrapperImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl$RoamingPolicyWrapperImpl;-><init>(Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mRoamingPolicy:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RoamingPolicyWrapper;

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 285
    const-string p0, "SemTelephonyKnoxHelper"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist addImsPhoneConnection(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 2

    .line 266
    invoke-virtual {p2}, Lcom/android/internal/telephony/ConnectionExt;->isEmergencyImsConnection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActiveMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActiveMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActiveMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 271
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActiveMap:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Knox increment call count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "INCOMING"

    goto :goto_0

    :cond_1
    const-string v0, "OUTGOING"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->log(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->addNumberOfCalls(Z)V

    :cond_2
    return-void
.end method

.method public blacklist addNumberOfCalls(Z)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mRestrictionPolicy:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 111
    invoke-interface {p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;->addNumberOfIncomingCalls()Z

    return-void

    .line 113
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;->addNumberOfOutgoingCalls()Z

    return-void
.end method

.method public blacklist getApplicationRestrictionsManager(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mApplicationRestrictionsManager:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;

    return-object p0
.end method

.method public blacklist getRestrictionPolicy(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mRestrictionPolicy:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;

    return-object p0
.end method

.method public blacklist getRoamingPolicy(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RoamingPolicyWrapper;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mRoamingPolicy:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RoamingPolicyWrapper;

    return-object p0
.end method

.method public blacklist isApplicationRestrictedForCall(I)Z
    .locals 3

    .line 192
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mApplicationRestrictionsManager:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 193
    const-string v1, "com.samsung.android.app.telephonyui"

    invoke-interface {p0, v1, v0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 194
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "telephonyui_simcard_manager_call_preference"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 196
    const-string v1, "value"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 197
    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    if-eq p1, v1, :cond_3

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public blacklist logCallDisconnect(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V
    .locals 17

    move/from16 v0, p2

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x33

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ConnectionExt;->isEmergencyImsConnection()Z

    move-result v1

    if-nez v1, :cond_4

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 158
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_4

    .line 159
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v8

    const-string v2, "success"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-void

    .line 141
    :cond_2
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v16

    const-string v10, "dropped"

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-void

    .line 128
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v16

    const-string v10, "missed"

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mDeviceInfo:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryWrapper;

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryWrapper;->addCallsCount(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mDeviceInfo:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryWrapper;

    invoke-interface {v0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryWrapper;->isCallingCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mDeviceInfo:Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryWrapper;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    move-object p5, p4

    move-object p4, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, p5

    move p5, p7

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryWrapper;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist logCallEventInHandlePollCalls(Lcom/android/internal/telephony/GsmCdmaConnection;Z)V
    .locals 10

    .line 247
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    const-string v1, "success"

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    .line 248
    iget p2, p1, Lcom/android/internal/telephony/Connection;->mCause:I

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "missed"

    :cond_1
    :goto_0
    move-object v3, v1

    goto :goto_2

    .line 249
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/Connection;->mCause:I

    const/4 v5, 0x7

    if-eq v0, v2, :cond_3

    if-ne v0, v5, :cond_7

    .line 251
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz p2, :cond_5

    .line 252
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-eqz v6, :cond_5

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    if-nez p2, :cond_7

    .line 254
    iget p2, p1, Lcom/android/internal/telephony/Connection;->mCause:I

    if-ne p2, v2, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v6

    cmp-long p2, v6, v3

    if-eqz p2, :cond_6

    if-eqz v0, :cond_1

    :cond_6
    iget p2, p1, Lcom/android/internal/telephony/Connection;->mCause:I

    if-ne p2, v5, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    .line 258
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 259
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    :cond_8
    return-void
.end method

.method public blacklist removeImsPhoneConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActiveMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist resetGsmCdmaConnection(I)V
    .locals 3

    .line 209
    new-array v0, p1, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActive:[Ljava/lang/Boolean;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist sendCallStateChangedIntent(Landroid/content/Context;Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/Call$State;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->getPreconditionForCallStateChangedIntent()Landroid/util/Pair;

    move-result-object p0

    .line 176
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 177
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 182
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sec.action.CALL_STATE_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    const-string v0, "com.sec.intent.extra.PHONE_STATE"

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneConstants$State;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string p2, "com.sec.intent.extra.CALL_STATE"

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist updateGsmCdmaConnection(ILcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 2

    if-nez p2, :cond_0

    .line 219
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p2, p0, p1

    return-void

    .line 221
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 223
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 231
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActive:[Ljava/lang/Boolean;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADD CALL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "INCOMING"

    goto :goto_0

    :cond_2
    const-string v1, "OUTGOING"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->log(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->addNumberOfCalls(Z)V

    .line 234
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p2, p0, p1

    return-void

    .line 236
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p2, p0, p1

    return-void

    .line 225
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 226
    const-string p2, "Emergency call"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->log(Ljava/lang/String;)V

    .line 227
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p2, p0, p1

    return-void

    .line 229
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p2, p0, p1

    return-void
.end method
