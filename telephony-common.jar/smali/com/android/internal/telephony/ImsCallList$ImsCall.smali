.class public Lcom/android/internal/telephony/ImsCallList$ImsCall;
.super Ljava/lang/Object;
.source "ImsCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsCall"
.end annotation


# instance fields
.field private blacklist mCallRadioTech:I

.field private blacklist mConnHashCode:I

.field private blacklist mConnState:Lcom/android/internal/telephony/Call$State;

.field private blacklist mImsCallHashCode:I

.field private blacklist mIsMpty:I

.field private blacklist mIsMt:I

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mState:I

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    const/4 v0, 0x1

    .line 138
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    .line 140
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    .line 141
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 144
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnHashCode:I

    .line 145
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mImsCallHashCode:I

    .line 146
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    .line 147
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mCallRadioTech:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Connection;Lcom/android/ims/internal/ConferenceParticipant;)V
    .locals 5

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    const/4 v0, 0x1

    .line 138
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    const/4 v1, 0x0

    .line 139
    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    .line 140
    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    .line 141
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 144
    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnHashCode:I

    .line 145
    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mImsCallHashCode:I

    .line 146
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    .line 147
    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mCallRadioTech:I

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnHashCode:I

    .line 159
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mImsCallHashCode:I

    .line 164
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 165
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    goto :goto_0

    .line 167
    :cond_2
    iput v4, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    .line 171
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCallRadioTech()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mCallRadioTech:I

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isWifi()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    iget v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    .line 177
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionExt;->isEmergencyImsConnection()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 178
    iget v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    :cond_4
    if-nez p2, :cond_8

    .line 182
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    .line 183
    iput v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    const/16 p2, 0x200

    .line 184
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ConnectionBase;->hasInternalAttribute(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 185
    const-string p2, "Conference call"

    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    goto :goto_2

    .line 187
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, " "

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 189
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    .line 190
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v3, :cond_7

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionExt;->getBigData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 195
    :cond_7
    iget-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v3, :cond_b

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRingbackTonePlaying()Z

    move-result p2

    if-nez p2, :cond_b

    .line 197
    iget p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    goto :goto_4

    .line 200
    :cond_8
    invoke-virtual {p2}, Lcom/android/ims/internal/ConferenceParticipant;->getCallDirection()I

    move-result v3

    if-nez v3, :cond_9

    move v3, v0

    goto :goto_3

    :cond_9
    move v3, v1

    :goto_3
    iput v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    .line 201
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    .line 202
    invoke-virtual {p2}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/ims/internal/ConferenceParticipant;->getParticipantAddress(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 204
    invoke-virtual {p2}, Lcom/android/ims/internal/ConferenceParticipant;->getState()I

    move-result p2

    const/4 v3, 0x6

    if-eq p2, v3, :cond_a

    .line 205
    invoke-virtual {v2}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    goto :goto_4

    .line 207
    :cond_a
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    .line 210
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnState:Lcom/android/internal/telephony/Call$State;

    invoke-static {p2}, Lcom/android/internal/telephony/ImsCallList$ImsCall;->fwStateToRilState(Lcom/android/internal/telephony/Call$State;)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    .line 213
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p2

    if-eqz p2, :cond_c

    const/16 p2, 0x100

    .line 214
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ConnectionBase;->hasInternalAttribute(I)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    move v0, v1

    .line 217
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_e

    const-string p2, "-Y"

    goto :goto_5

    :cond_e
    const-string p2, "-N"

    :goto_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    return-void
.end method

.method private static blacklist fwStateToRilState(Lcom/android/internal/telephony/Call$State;)I
    .locals 1

    .line 263
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 265
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 267
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 269
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 271
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 273
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 303
    :pswitch_0
    const-string p0, "WAITING"

    return-object p0

    .line 300
    :pswitch_1
    const-string p0, "INCOMING"

    return-object p0

    .line 297
    :pswitch_2
    const-string p0, "ALERTING"

    return-object p0

    .line 294
    :pswitch_3
    const-string p0, "DIALING"

    return-object p0

    .line 291
    :pswitch_4
    const-string p0, "HOLDING"

    return-object p0

    .line 288
    :pswitch_5
    const-string p0, "ACTIVE"

    return-object p0

    .line 285
    :pswitch_6
    const-string p0, "IDLE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist typeToString(II)Ljava/lang/String;
    .locals 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 318
    const-string v1, "vo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 320
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 328
    const-string p1, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v1, 0x14

    if-ne p1, v1, :cond_3

    .line 330
    const-string p1, "nr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v1, 0xe

    if-ne p1, v1, :cond_4

    .line 332
    const-string p1, "lte"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 334
    :cond_4
    const-string v1, "unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    and-int/lit8 p1, p0, 0x8

    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    .line 339
    const-string p1, "_emergency"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 p1, p0, 0x20

    const/16 v1, 0x20

    if-ne p1, v1, :cond_6

    .line 342
    const-string p1, "_remoteringback"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 p1, 0x40

    if-lt p0, p1, :cond_7

    .line 347
    const-string p0, "_error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    .line 222
    instance-of v0, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 226
    :cond_0
    check-cast p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;

    .line 227
    iget v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    iget v2, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    iget v2, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    iget v2, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    iget v2, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    .line 228
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 233
    iget v0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method blacklist toSehImsCall()Lvendor/samsung/hardware/radio/V2_0/SehImsCall;
    .locals 2

    .line 237
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;-><init>()V

    .line 239
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    iput v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->state:I

    .line 240
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    iput v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->type:I

    .line 241
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    iput v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->isMt:I

    .line 242
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    iput v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->isMpty:I

    .line 243
    iget-object p0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    iput-object p0, v0, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->number:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    const-string v1, "state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    invoke-static {v1}, Lcom/android/internal/telephony/ImsCallList$ImsCall;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    iget v2, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mCallRadioTech:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ImsCallList$ImsCall;->typeToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, ", mt"

    goto :goto_0

    :cond_0
    const-string v1, ", mo"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    if-ne v1, v2, :cond_1

    const-string v1, ", conf, "

    goto :goto_1

    :cond_1
    const-string v1, ", norm, "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, ", objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mConnHashCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mImsCallHashCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
