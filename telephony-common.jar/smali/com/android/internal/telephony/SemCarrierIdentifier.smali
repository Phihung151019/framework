.class public Lcom/android/internal/telephony/SemCarrierIdentifier;
.super Lcom/android/internal/telephony/CarrierResolver;
.source "SemCarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;,
        Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;,
        Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;,
        Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;,
        Lcom/android/internal/telephony/SemCarrierIdentifier$SecCarrier;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_URL_PREFER_APN:Landroid/net/Uri;

.field private static final blacklist DEBUG:Z

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "SemCarrierIdentifier"


# instance fields
.field private blacklist mApn:Ljava/lang/String;

.field private blacklist mCarrierIdentifierHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private final blacklist mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSettingsObserver:Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;

.field private blacklist mSpn:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/SemCarrierIdentifier;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemCarrierIdentifier;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 36
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SemCarrierIdentifier;->DEBUG:Z

    .line 38
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "preferapn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier;->CONTENT_URL_PREFER_APN:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 3

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CarrierResolver;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 46
    const-string p2, ""

    iput-object p2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 53
    new-instance p2, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/SemCarrierIdentifier;Lcom/android/internal/telephony/SemCarrierIdentifier-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating SemCarrierIdentifier["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 124
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SemCarrierIdentifier"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v2, Lcom/android/internal/telephony/SemCarrierIdentifier$1;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$1;-><init>(Lcom/android/internal/telephony/SemCarrierIdentifier;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mCarrierIdentifierHandler:Landroid/os/Handler;

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p2

    sget-object v1, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->ICC_CHANGED_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->getValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    new-instance p2, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mCarrierIdentifierHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v1, v0}, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;-><init>(Lcom/android/internal/telephony/SemCarrierIdentifier;Landroid/os/Handler;Lcom/android/internal/telephony/SemCarrierIdentifier-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mSettingsObserver:Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;

    .line 168
    invoke-static {p2}, Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;->-$$Nest$mregisterListener(Lcom/android/internal/telephony/SemCarrierIdentifier$SettingsObserver;)V

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-nez p1, :cond_0

    .line 171
    sget-object p1, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_INIT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->getValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private static blacklist equals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 357
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getPreferApn(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    .line 286
    const-string v0, "apn"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object p0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferapn/subId/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 286
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    .line 299
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    return-object v1

    .line 296
    :cond_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 297
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 286
    :goto_0
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 300
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method private blacklist initSimIdentityInfo()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mCarrierIdentifierHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 307
    iput v1, v0, Landroid/os/Message;->what:I

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSimIdentityInfo] msg.what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V

    .line 311
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mCarrierIdentifierHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static blacklist isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 344
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static blacklist notEquals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 348
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SemCarrierIdentifier;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private blacklist updateSimIdentityInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 317
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "phone_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "sub_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string p1, "mccmnc"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string p1, "imsi"

    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string p1, "iccid"

    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string p1, "gid1"

    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string p1, "gid2"

    invoke-virtual {v0, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string p1, "plmn"

    invoke-virtual {v0, p1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string p1, "spn"

    invoke-virtual {v0, p1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string p1, "apn"

    invoke-virtual {v0, p1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string p1, "event"

    invoke-virtual {v0, p1, p11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mCarrierIdentifierHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    .line 331
    iput p2, p1, Landroid/os/Message;->what:I

    .line 332
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    sget-boolean p2, Lcom/android/internal/telephony/SemCarrierIdentifier;->DEBUG:Z

    const-string p3, "[updateSimIdentityInfo] msg.what : "

    if-eqz p2, :cond_0

    .line 335
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  msg.obj : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V

    .line 340
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mCarrierIdentifierHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 190
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->from(I)Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    move-result-object v1

    .line 191
    invoke-static {}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim info phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", value0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    .line 194
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 195
    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 196
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 197
    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 198
    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value5: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 199
    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value6: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 200
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SemCarrierIdentifier;->getPreferApn(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value7: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 201
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->getSensitiveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 205
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_e

    const-string v3, ""

    const-string v4, "Skip before mccmnc loaded:"

    const/4 v5, 0x5

    const/4 v6, 0x1

    const-string v7, " by "

    const-string v8, ", subId:"

    const/4 v9, 0x0

    if-eq v2, v6, :cond_8

    const/4 v10, 0x2

    if-eq v2, v10, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SemCarrierIdentifier;->getPreferApn(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 243
    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 244
    iget-object v6, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    .line 245
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v10

    if-nez v10, :cond_2

    move v6, v9

    .line 249
    :cond_2
    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v5, :cond_4

    :cond_3
    move-object v11, v1

    move v2, v6

    goto :goto_0

    .line 251
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    invoke-static {v4, v2, v9}, Lcom/android/internal/telephony/SemCarrierIdentifier;->notEquals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updatePreferApn] from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 253
    iput-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 254
    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 255
    invoke-interface {v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 256
    invoke-interface {v7}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 257
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    move v1, v2

    move v2, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    iget-object v9, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mSpn:Ljava/lang/String;

    move-object v11, v10

    iget-object v10, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 259
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    .line 254
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/SemCarrierIdentifier;->updateSimIdentityInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 250
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 264
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 265
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v2, v1, :cond_f

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 268
    const-string v2, "Remove old icc object"

    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 271
    iput-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    :cond_6
    if-eqz v1, :cond_f

    .line 274
    const-string v2, "Add new icc object"

    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 275
    sget-object v2, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_LOAD_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->getValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 277
    iput-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    goto/16 :goto_4

    :cond_7
    move-object v11, v1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Sim Absent] phone id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 237
    iput-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v10, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 239
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    const/4 v2, -0x1

    .line 238
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/SemCarrierIdentifier;->updateSimIdentityInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    move-object v11, v1

    .line 210
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 212
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-nez v6, :cond_9

    move v2, v9

    .line 215
    :cond_9
    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_b

    :cond_a
    move-object v3, v1

    goto/16 :goto_3

    .line 218
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Sim Load] from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", phone id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/internal/telephony/SemCarrierIdentifier;->getPreferApn(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 221
    iget-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_d

    .line 222
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_1

    .line 223
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mSpn:Ljava/lang/String;

    goto :goto_2

    .line 225
    :cond_d
    const-string v3, "mIccRecords is null on SIM_LOAD_EVENT, could not get SPN"

    invoke-static {v3}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->e(Ljava/lang/String;)V

    .line 227
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 228
    invoke-interface {v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 229
    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 230
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mSpn:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/SemCarrierIdentifier;->mApn:Ljava/lang/String;

    .line 232
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    move v0, v3

    move-object v3, v1

    move v1, v0

    move-object v0, p0

    .line 227
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/SemCarrierIdentifier;->updateSimIdentityInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 216
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 207
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier;->initSimIdentityInfo()V

    .line 282
    :cond_f
    :goto_4
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/CarrierResolver;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
