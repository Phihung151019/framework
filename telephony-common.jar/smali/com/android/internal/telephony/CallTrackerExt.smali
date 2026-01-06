.class public abstract Lcom/android/internal/telephony/CallTrackerExt;
.super Lcom/android/internal/telephony/CallTracker;
.source "CallTrackerExt.java"


# static fields
.field protected static final blacklist CALLTRACKER_TYPE_GSMCDMA:I = 0x1

.field protected static final blacklist CALLTRACKER_TYPE_IMS:I = 0x2

.field protected static final blacklist EVENT_EMERGENCY_SEARCH_AFTER_RADIO_ON:I = 0x3ed

.field protected static final blacklist EVENT_EMERGENCY_SEARCH_AFTER_RADIO_ON_TIMEOUT:I = 0x3ee

.field protected static final blacklist EVENT_EMERGENCY_SEARCH_RESULT:I = 0x3e8

.field protected static final blacklist EVENT_EPSFB_TRIGGER_DONE:I = 0x3ef

.field protected static final blacklist EVENT_EPSFB_TRIGGER_RESULT:I = 0x3f0

.field protected static final blacklist EVENT_FALLBACK_INDICATION:I = 0x3e9

.field protected static final blacklist EVENT_OEM_CALL_DETAILS_CHANGED:I = 0x3f1

.field protected static final blacklist EVENT_REDIAL_AFTER_RADIO_ON:I = 0x3eb

.field protected static final blacklist EVENT_REDIAL_AFTER_RADIO_ON_TIMEOUT:I = 0x3ec

.field protected static final blacklist EVENT_REDIAL_TO_CS:I = 0x3ea

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CallTrackerExt"


# instance fields
.field protected blacklist mDefaultPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field protected blacklist mForceUpdatePhoneState:Z

.field protected blacklist mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field protected blacklist mPhoneId:I

.field private final blacklist mTrackerType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;ILcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 1

    .line 73
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallTracker;-><init>(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    const/4 p4, 0x0

    .line 70
    iput-boolean p4, p0, Lcom/android/internal/telephony/CallTrackerExt;->mForceUpdatePhoneState:Z

    .line 75
    move-object p4, p1

    check-cast p4, Lcom/android/internal/telephony/GsmCdmaPhone;

    iput-object p4, p0, Lcom/android/internal/telephony/CallTrackerExt;->mDefaultPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 76
    move-object p4, p2

    check-cast p4, Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object p4, p0, Lcom/android/internal/telephony/CallTrackerExt;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 77
    iput p3, p0, Lcom/android/internal/telephony/CallTrackerExt;->mTrackerType:I

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p4

    iput p4, p0, Lcom/android/internal/telephony/CallTrackerExt;->mPhoneId:I

    .line 81
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Make "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/CallTrackerExt;->trackerTypeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " - defaultPhone: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", imsPhone: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallTrackerExt;->semLog(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist semLog(Ljava/lang/String;)V
    .locals 3

    .line 195
    sget-object v0, Lcom/android/internal/telephony/CallTrackerExt;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/CallTrackerExt;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist semLoge(Ljava/lang/String;)V
    .locals 3

    .line 199
    sget-object v0, Lcom/android/internal/telephony/CallTrackerExt;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/CallTrackerExt;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist semLoge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/CallTrackerExt;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist trackerTypeToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 109
    const-string p0, "GsmCdmaCallTracker"

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    .line 110
    const-string p0, "ImsPhoneCallTracker"

    return-object p0

    .line 111
    :cond_1
    const-string p0, "Unknown CallTracker"

    return-object p0
.end method


# virtual methods
.method protected blacklist displayRttE911FailedPopup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    .line 154
    const-string p1, "displayRttE911FailedPopup() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallTrackerExt;->semLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallTrackerExt["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CallTrackerExt;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] extends:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mDefaultPhone="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/CallTrackerExt;->mDefaultPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mImsPhone="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/CallTrackerExt;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mTrackerType="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/CallTrackerExt;->mTrackerType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected blacklist e911RouteToImsEmergencyCallRat(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x2

    .line 121
    const-string v0, "VoLTE"

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    .line 129
    const-string p0, ""

    return-object p0

    :cond_0
    return-object v0

    .line 124
    :cond_1
    const-string p0, "VoWIFI"

    return-object p0

    :cond_2
    return-object v0
.end method

.method protected varargs blacklist iLog(ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 8

    .line 179
    iget v0, p0, Lcom/android/internal/telephony/CallTrackerExt;->mTrackerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/CallTrackerExt;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    move v3, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 181
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->iLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected varargs blacklist iLog(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 8

    .line 171
    iget v0, p0, Lcom/android/internal/telephony/CallTrackerExt;->mTrackerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/CallTrackerExt;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x3

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    .line 173
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->iLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected blacklist isAutoResumeCause(ILcom/android/internal/telephony/Call$State;)Z
    .locals 2

    .line 135
    iget p0, p0, Lcom/android/internal/telephony/CallTrackerExt;->mTrackerType:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 p2, 0x2d

    if-eq p1, p2, :cond_2

    const/16 p2, 0x34

    if-eq p1, p2, :cond_2

    return p0

    .line 144
    :cond_1
    sget-object p1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq p2, p1, :cond_2

    return p0

    :cond_2
    return v1
.end method

.method protected blacklist isBackgroundCallOnly()Z
    .locals 1

    .line 115
    const-string v0, "isBackgroundCallOnly() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallTrackerExt;->semLoge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist logIntoLocalLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallTrackerExt;->semLoge(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Lcom/android/internal/telephony/CallTrackerExt;->mDefaultPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/TelephonyLogger;->writeCheckPointLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected blacklist notifyEpsFallbackResult(I)V
    .locals 0

    .line 159
    const-string p1, "notifyEpsFallbackResult() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallTrackerExt;->semLoge(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist sendBigDataCallEnd(ZI)V
    .locals 0

    .line 207
    const-string p1, "sendBigDataCallEnd() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallTrackerExt;->semLoge(Ljava/lang/String;)V

    return-void
.end method

.method blacklist setImsPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/CallTrackerExt;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsPhone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallTrackerExt;->semLog(Ljava/lang/String;)V

    .line 102
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object p1, p0, Lcom/android/internal/telephony/CallTrackerExt;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-void

    .line 104
    :cond_0
    const-string p1, "setImsPhone - Unexpected case. CallTrackerExt of DefaultPhone already has ImsPhone"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallTrackerExt;->semLoge(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist updateConnectionExtras(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 163
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    const-string p1, "updateConnectionExtras() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallTrackerExt;->semLoge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
