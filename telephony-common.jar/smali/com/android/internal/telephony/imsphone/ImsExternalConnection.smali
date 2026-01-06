.class public Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsExternalConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;
    }
.end annotation


# static fields
.field private static final blacklist mCmcExtraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

.field private blacklist mCallId:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsPullable:Z

.field private final blacklist mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOriginalAddress:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCmcExtraMap:Ljava/util/Map;

    .line 101
    const-string v1, "cmc_type"

    const-string v2, "com.samsung.telephony.extra.CMC_TYPE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "cmc_pd_state"

    const-string v2, "com.samsung.telephony.extra.CMC_PD_CALL_TYPE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "callslot"

    const-string v2, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/telephony/Phone;ILandroid/net/Uri;Z)V
    .locals 4

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    .line 109
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    .line 111
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    .line 118
    iput v3, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 119
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setExternalConnectionAddress(Landroid/net/Uri;)V

    .line 121
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->rebuildCapabilities()V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setActive()V

    return-void
.end method

.method private greylist-max-r rebuildCapabilities()V
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 380
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Connection;->setConnectionCapabilities(I)V

    return-void
.end method

.method private blacklist updateCmcExtras(Ljava/lang/String;I)V
    .locals 3

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectionExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 330
    :cond_0
    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 334
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 337
    :cond_2
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Connection;->setConnectionExtras(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist addListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist cancelPostDial()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist consultativeTransfer(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 174
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "Transfer is not supported for external calls"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist deflect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 162
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "Deflect is not supported for external calls"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getCall()Lcom/android/internal/telephony/Call;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    return-object p0
.end method

.method public blacklist getCallId()I
    .locals 0

    .line 131
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    return p0
.end method

.method public blacklist getDisconnectTime()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getHoldDurationMillis()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getNumberPresentation()I
    .locals 0

    .line 199
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    return p0
.end method

.method public blacklist getPreciseDisconnectCause()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVendorDisconnectCause()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist hangup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist isMultiparty()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist proceedAfterWaitChar()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist proceedAfterWildChar(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist pullExternalCall()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;

    .line 227
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;->onPullExternalCall(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist separate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist-max-r setActive()V
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    if-nez p0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setActive()V

    return-void
.end method

.method public blacklist setExternalConnectionAddress(Landroid/net/Uri;)V
    .locals 8

    .line 282
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mOriginalAddress:Landroid/net/Uri;

    .line 284
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v3, "conf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mContext:Landroid/content/Context;

    const v0, 0x10402ee

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 287
    iput v2, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 288
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 289
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    return-void

    .line 293
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertSipUriToTelUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[@;:]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 298
    array-length v0, p1

    if-lez v0, :cond_5

    .line 299
    array-length v0, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_5

    aget-object v5, p1, v4

    .line 300
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 301
    array-length v6, v5

    if-ge v6, v1, :cond_1

    goto :goto_1

    .line 305
    :cond_1
    const-string v6, "displayName"

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 306
    aget-object v5, v5, v2

    .line 307
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 308
    iput-object v5, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 309
    iput v2, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    goto :goto_1

    .line 311
    :cond_2
    const-string v6, "oir"

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 312
    aget-object v5, v5, v2

    .line 313
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    goto :goto_1

    .line 314
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCmcExtraMap:Ljava/util/Map;

    aget-object v7, v5, v3

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 315
    aget-object v7, v5, v3

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->updateCmcExtras(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public blacklist setHolding()V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    if-nez p0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setHolding()V

    return-void
.end method

.method public blacklist setIsPullable(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    .line 272
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->rebuildCapabilities()V

    return-void
.end method

.method public blacklist setTerminated()V
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    if-nez p0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setTerminated()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 358
    const-string v1, "[ImsExternalConnection dialogCallId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 362
    const-string p0, "Active"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 363
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v1, :cond_1

    .line 364
    const-string p0, "Disconnected"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_1
    :goto_0
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 168
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "Transfer is not supported for external calls"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
