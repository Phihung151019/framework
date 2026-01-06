.class public Lcom/android/internal/telephony/PreferredNetworkUpdater;
.super Landroid/os/Handler;
.source "PreferredNetworkUpdater.java"


# static fields
.field private static final blacklist COUNTRYISO_CODE:Ljava/lang/String;

.field private static final blacklist DEFAULT_NW_MODE_SENCONDARY:I

.field private static final blacklist IS_CHINA:Z

.field private static final blacklist IS_INDIA:Z

.field private static final blacklist IsIndiaLWMode:Z

.field private static final blacklist IsIndiaNLMode:Z

.field private static final blacklist PHONE_ON_KEY:[Ljava/lang/String;

.field private static final blacklist PROJECT_SIM_NUM:I

.field private static final blacklist isNotSupportDualRat:Z

.field private static blacklist mDataSubId:I

.field private static blacklist sDefaultNetworkMode:I

.field private static blacklist sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

.field private static blacklist sSecondaryNetworkMode:I


# instance fields
.field private blacklist mActiveSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentNwMode:[I

.field private blacklist mInsertSimState:[I

.field private blacklist mIsUpdateNwModeRequired:Z

.field private blacklist mPhoneOn:[I

.field private blacklist mPrefNwMode:[I

.field private blacklist mPrevSubIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field private blacklist mUpdateStatus:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 75
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    .line 93
    const-string v0, "phone1_on"

    const-string v1, "phone2_on"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PHONE_ON_KEY:[Ljava/lang/String;

    .line 94
    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->COUNTRYISO_CODE:Ljava/lang/String;

    .line 96
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "HK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IS_CHINA:Z

    .line 97
    const-string v0, "INU"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "INS"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IS_INDIA:Z

    .line 98
    const-string v1, "1"

    const-string v4, "persist.radio.support.dualrat"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isNotSupportDualRat:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    .line 100
    :goto_4
    sput-boolean v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaNLMode:Z

    .line 102
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 103
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    sput-boolean v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaLWMode:Z

    .line 108
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v3, 0x9

    .line 109
    :cond_6
    sput v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    const/4 v0, -0x1

    .line 111
    sput v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    .line 142
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 118
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    .line 119
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    .line 120
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    .line 121
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    .line 122
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrevSubIds:Ljava/util/Map;

    .line 143
    const-string v1, "PreferredNetworkUpdater"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->addLocalLog(Ljava/lang/String;I)V

    .line 145
    const-string v1, "Constructor invoked"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 150
    :goto_0
    sget p1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    const/16 v1, -0x63

    aput v1, p1, v0

    .line 152
    iget-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    const/4 v1, -0x1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist checkNetworkModeCapability(I[I)V
    .locals 4

    const/4 v0, 0x0

    .line 614
    :goto_0
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_2

    .line 615
    aget v1, p2, v0

    if-ne p1, v0, :cond_0

    .line 617
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    goto :goto_1

    .line 619
    :cond_0
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sSecondaryNetworkMode:I

    .line 622
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isValidNetworkMode(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 625
    :cond_1
    invoke-static {v2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v2

    .line 626
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    and-int/2addr v1, v2

    .line 627
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkNetworkModeCapability] defaultPhoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", nwMode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist doSetNetworkMode(III)V
    .locals 4

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSetNetworkMode(SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") retryCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pendingPhoneCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prefNwMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentNwMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v0, v0, p1

    filled-new-array {v0, p3}, [I

    move-result-object p3

    const/4 v0, 0x2

    .line 421
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 422
    iget-object p3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    const/4 v0, 0x1

    aput v0, p3, p1

    .line 424
    iget-object p3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    aget p3, p3, p1

    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v0, v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p3, v0, :cond_0

    .line 425
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") Skip!! Mode is not changed"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 426
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    invoke-static {p2, v3, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 427
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 429
    :cond_0
    iget-object p3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget p3, p3, p1

    const/16 v0, -0x63

    if-ne p3, v0, :cond_1

    .line 430
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") Skip!! SIM_ABSENT"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/16 p1, 0xb

    .line 431
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    invoke-static {p2, v3, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 432
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 436
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p3

    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget p0, p0, p1

    .line 438
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p0

    int-to-long p0, p0

    .line 436
    invoke-virtual {p3, v2, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return-void
.end method

.method private blacklist getDefaultPhoneId()I
    .locals 4

    .line 396
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x41000

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    .line 403
    :goto_1
    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v3, :cond_2

    .line 404
    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v3, v3, v2

    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/PreferredNetworkUpdater;
    .locals 2

    .line 136
    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "PreferredNetworkUpdater"

    const-string v1, "getInstance() called before make()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    return-object v0
.end method

.method private blacklist getNetworkMode()V
    .locals 3

    .line 575
    const-string v0, "getNetworkMode()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 576
    :goto_0
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 579
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    aget v2, v1, v0

    if-nez v2, :cond_0

    const/4 v2, 0x2

    .line 580
    aput v2, v1, v0

    .line 581
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 582
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypesBitmask(Landroid/os/Message;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static blacklist getPreferredDataSubId()I
    .locals 2

    .line 588
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    const/4 v1, -0x1

    .line 589
    sput v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    return v0
.end method

.method private blacklist isAllSubInIdleStatus()Z
    .locals 4

    .line 389
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isValidNetworkMode(I)Z
    .locals 0

    .line 0
    const/4 p0, -0x1

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 1200
    const-string p0, "PreferredNetworkUpdater"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneFactory;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;)Lcom/android/internal/telephony/PreferredNetworkUpdater;
    .locals 1

    .line 127
    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    goto :goto_0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "make() called multiple times!  sInstance = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PreferredNetworkUpdater"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    return-object p0
.end method

.method private blacklist networkModeUpdated()V
    .locals 1

    .line 413
    const-string v0, "networkModeUpdated()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onGetNetworkModeDone(Landroid/os/Message;)V
    .locals 5

    .line 510
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 511
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 513
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 515
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v2, "onGetNetworkModeDone(SUB"

    if-eqz v1, :cond_0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): got Exception ="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 520
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 521
    check-cast p1, [I

    .line 522
    array-length v1, p1

    if-lez v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v1, v1, v4

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget p1, p1, v3

    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result p1

    aput p1, v1, v4

    .line 527
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): currentNwMode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 530
    :cond_2
    iget-boolean p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    if-eqz p1, :cond_3

    .line 531
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    :cond_3
    return-void
.end method

.method private blacklist onSetAllowedNetworkTypes(Landroid/os/Message;)V
    .locals 8

    .line 536
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    .line 538
    const-string p1, "There is a phone null!! We can\'t set network mode!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 543
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 544
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    const/4 p1, 0x2

    .line 547
    new-array p1, p1, [I

    aput v2, p1, v2

    const/4 v0, 0x1

    aput v0, p1, v0

    .line 548
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference()J

    move-result-wide v4

    long-to-int v1, v4

    int-to-long v4, v1

    const-wide/32 v6, 0x80000

    and-long/2addr v4, v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 552
    const-string v1, "SIM1 slot has 5G network. So, first sends SIM2 slot network mode and then sends SIM1 slot network mode 2sec later."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 553
    aput v0, p1, v2

    .line 554
    aput v2, p1, v0

    goto :goto_1

    .line 557
    :cond_2
    const-string v1, "SIM1 slot doesn\'t have 5G network. So, first sends SIM1 slot network mode and then sends SIM2 slot network mode 2sec later."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 560
    :goto_1
    aget v1, p1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference()J

    move-result-wide v4

    long-to-int v1, v4

    .line 561
    aget v2, p1, v2

    const/4 v4, 0x4

    invoke-virtual {p0, v4, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 562
    aget v1, p1, v0

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference()J

    move-result-wide v1

    long-to-int v1, v1

    .line 563
    aget p1, p1, v0

    invoke-virtual {p0, v4, p1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 568
    :cond_3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return-void
.end method

.method private blacklist onSetNetworkModeDone(Landroid/os/Message;)V
    .locals 11

    .line 455
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 456
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 457
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 458
    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v2, v2, v1

    .line 460
    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v4, v3, [I

    .line 462
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 463
    move-object v2, v5

    check-cast v2, [I

    aget v2, v2, v7

    .line 464
    check-cast v5, [I

    aget v5, v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 467
    :goto_0
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v9, v8, Lcom/android/internal/telephony/CommandException;

    const-string v10, "onSetNetworkModeDone(SUB"

    if-eqz v9, :cond_1

    .line 468
    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): Fail - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", retryCount:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 471
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v2, v4, :cond_4

    const/4 v2, 0x5

    if-ge p1, v2, :cond_4

    add-int/2addr p1, v6

    .line 474
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v6, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 479
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): Success"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    if-ne v3, v6, :cond_3

    .line 480
    sget-boolean p1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IS_INDIA:Z

    if-eqz p1, :cond_3

    .line 481
    sget-boolean p1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaNLMode:Z

    if-nez p1, :cond_2

    const/16 p1, 0x9

    .line 482
    aput p1, v4, v7

    .line 483
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x1a

    .line 485
    aput p1, v4, v7

    .line 486
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    .line 489
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    aput v2, p1, v1

    .line 492
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    aput v7, p1, v1

    if-lez v5, :cond_5

    add-int/2addr v1, v6

    .line 495
    rem-int/2addr v1, v3

    sub-int/2addr v5, v6

    .line 496
    invoke-direct {p0, v1, v7, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    return-void

    .line 500
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isAllSubInIdleStatus()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 501
    iget-boolean p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    if-eqz p1, :cond_6

    .line 502
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    return-void

    .line 504
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->networkModeUpdated()V

    :cond_7
    return-void
.end method

.method private blacklist setNetworkMode()V
    .locals 4

    .line 442
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isAllSubInIdleStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 443
    iput-boolean v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    .line 450
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getDefaultPhoneId()I

    move-result v2

    add-int/2addr v2, v1

    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    rem-int/2addr v2, v3

    sub-int/2addr v3, v1

    .line 451
    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    return-void

    .line 445
    :cond_0
    const-string v0, "setNetworkMode: Wait!!, NetworkMode update is in progress"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 446
    iput-boolean v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    return-void
.end method

.method private blacklist setNetworkModeDB([I)V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 376
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    aget v1, p1, v1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 380
    :goto_1
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    aget v2, p1, v0

    const-string v3, "preferred_network_mode"

    invoke-static {v1, v3, v0, v2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 385
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkModeDB: preferred_network_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setPreferredNetworkForInu()V
    .locals 19

    move-object/from16 v0, p0

    .line 921
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v2, v1, [I

    .line 922
    new-array v3, v1, [I

    .line 923
    new-array v1, v1, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 935
    :goto_0
    sget v12, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    const-string v13, "]: "

    const/16 v14, 0x9

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v4, 0x1

    if-ge v6, v12, :cond_6

    .line 937
    :try_start_0
    iget-object v12, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v5, "preferred_network_mode"

    invoke-static {v12, v5, v6}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v6
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 940
    :catch_0
    sget v5, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v5, v1, v6

    .line 943
    :goto_1
    aget v5, v1, v6

    if-eq v5, v14, :cond_0

    const/16 v12, 0xb

    if-ne v5, v12, :cond_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 947
    :cond_1
    iget-object v5, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v5

    aput v5, v2, v6

    .line 949
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 950
    const-string v5, "[setPreferredNetworkForInu]+ subId check!! IS Valid."

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    .line 952
    aget v5, v2, v6

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkModeDbForSubId(I)I

    move-result v5

    aput v5, v3, v6

    .line 955
    :cond_2
    aget v5, v3, v6

    if-eq v5, v4, :cond_3

    if-eqz v5, :cond_3

    if-eq v5, v15, :cond_3

    const/4 v12, -0x1

    if-eq v5, v12, :cond_3

    add-int/lit8 v11, v11, 0x1

    .line 961
    :cond_3
    iget-object v5, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    aget v5, v5, v6

    if-ne v5, v4, :cond_5

    aget v4, v2, v6

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 967
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setPreferredNetworkForInu]+ activated slot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 970
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreferredNetworkForInu: subIds["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " nwModeInDb: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " nwModeinSubIdTable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lteAutoSimCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 962
    :cond_5
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreferredNetworkForInu: not acitve slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    move v10, v6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 974
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setPreferredNetworkForInu]+ validSubCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    if-nez v7, :cond_7

    goto/16 :goto_b

    :cond_7
    if-ne v8, v4, :cond_8

    if-ne v9, v15, :cond_8

    .line 982
    sget v5, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v5, v3, v10

    .line 983
    aget v6, v2, v10

    invoke-virtual {v0, v6, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    .line 984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferredNetworkForInu: not acitve slot to GSM  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    :cond_8
    if-ne v9, v15, :cond_a

    if-nez v10, :cond_9

    .line 989
    sget v5, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v5, v1, v16

    .line 990
    aput v14, v1, v4

    goto :goto_4

    .line 992
    :cond_9
    aput v14, v1, v16

    .line 993
    sget v5, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v5, v1, v4

    :cond_a
    :goto_4
    move/from16 v17, v14

    move/from16 v5, v16

    move v6, v5

    move v7, v6

    move v12, v7

    .line 997
    :goto_5
    sget v14, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v5, v14, :cond_10

    .line 998
    iget-object v14, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v14

    aput v14, v2, v5

    .line 1000
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v4

    const-string v4, "setPreferredNetworkForInu:AFTER nwModeInDb["

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v5

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", nwModeinSubIdTable["

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v3, v5

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", lteSubcount:"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1003
    aget v4, v2, v5

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_b

    aget v4, v3, v5

    const/4 v14, -0x1

    if-eq v4, v14, :cond_c

    :cond_b
    if-ne v11, v15, :cond_e

    .line 1004
    :cond_c
    aget v4, v1, v5

    aput v4, v3, v5

    .line 1005
    aget v4, v2, v5

    aget v12, v1, v5

    invoke-virtual {v0, v4, v12}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    if-eq v11, v15, :cond_d

    add-int/lit8 v6, v6, 0x1

    move v7, v5

    :cond_d
    move/from16 v12, v18

    .line 1012
    :cond_e
    aget v4, v2, v5

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_f

    aget v4, v3, v5

    aget v14, v1, v5

    if-eq v4, v14, :cond_f

    move/from16 v12, v18

    :cond_f
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v18

    goto :goto_5

    :cond_10
    move/from16 v18, v4

    if-ne v6, v15, :cond_12

    if-eq v8, v15, :cond_12

    if-eq v9, v15, :cond_12

    if-nez v10, :cond_11

    .line 1019
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v2, v1, v16

    .line 1020
    aput v17, v1, v18

    goto :goto_6

    .line 1022
    :cond_11
    aput v17, v1, v16

    .line 1023
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v2, v1, v18

    .line 1025
    :goto_6
    aget v2, v1, v16

    aput v2, v3, v16

    .line 1026
    aget v1, v1, v18

    aput v1, v3, v18

    move/from16 v4, v18

    goto :goto_a

    :cond_12
    move/from16 v1, v18

    if-ne v6, v1, :cond_16

    if-nez v7, :cond_13

    move v4, v1

    goto :goto_7

    :cond_13
    move/from16 v4, v16

    .line 1031
    :goto_7
    aget v2, v3, v4

    if-eq v2, v1, :cond_15

    if-eq v2, v15, :cond_15

    if-eqz v2, :cond_15

    const/4 v12, -0x1

    if-ne v2, v12, :cond_14

    goto :goto_8

    .line 1037
    :cond_14
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v2, v3, v7

    goto :goto_9

    .line 1035
    :cond_15
    :goto_8
    aput v17, v3, v7

    :goto_9
    move v4, v1

    goto :goto_a

    :cond_16
    move v4, v12

    :goto_a
    if-eqz v4, :cond_17

    .line 1046
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    .line 1047
    invoke-direct {v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    :cond_17
    :goto_b
    return-void
.end method

.method private blacklist setPreferredNetworkNrForInu()V
    .locals 19

    move-object/from16 v0, p0

    .line 1056
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v2, v1, [I

    .line 1057
    new-array v3, v1, [I

    .line 1058
    new-array v1, v1, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 1070
    :goto_0
    sget v12, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    const/16 v14, 0x9

    const/16 v15, 0x1a

    const/16 v16, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v6, v12, :cond_6

    .line 1072
    :try_start_0
    iget-object v12, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preferred_network_mode"

    invoke-static {v12, v13, v6}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    aput v12, v1, v6
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1075
    :catch_0
    sget v12, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v12, v1, v6

    .line 1078
    :goto_1
    aget v12, v1, v6

    if-eq v12, v15, :cond_0

    const/16 v13, 0x17

    if-eq v12, v13, :cond_0

    const/16 v13, 0x18

    if-ne v12, v13, :cond_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 1083
    :cond_1
    iget-object v12, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v12, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v12

    aput v12, v2, v6

    .line 1085
    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1086
    const-string v12, "[setPreferredNetworkNrForInu]+ subId check!! IS Valid."

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    .line 1088
    aget v12, v2, v6

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkModeDbForSubId(I)I

    move-result v12

    aput v12, v3, v6

    goto :goto_2

    .line 1090
    :cond_2
    const-string v12, "[setPreferredNetworkNrForInu]+ subId check!! IS NOT Valid. so return"

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1094
    :goto_2
    aget v12, v3, v6

    if-eq v12, v5, :cond_3

    if-eqz v12, :cond_3

    if-eq v12, v4, :cond_3

    if-eq v12, v14, :cond_3

    const/16 v4, 0xb

    if-eq v12, v4, :cond_3

    const/4 v4, -0x1

    if-eq v12, v4, :cond_3

    add-int/lit8 v11, v11, 0x1

    .line 1102
    :cond_3
    iget-object v4, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    aget v4, v4, v6

    if-ne v4, v5, :cond_5

    aget v4, v2, v6

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    .line 1108
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setPreferredNetworkNrForInu]+ activated slot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreferredNetworkNrForInu: subIds["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " nwModeInDb: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " nwModeinSubIdTable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " nrAutoSimCount :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 1103
    :cond_5
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreferredNetworkNrForInu: not acitve slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    move v10, v6

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1115
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[setPreferredNetworkNrForInu]+ validSubCount: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    if-nez v7, :cond_7

    goto/16 :goto_b

    :cond_7
    if-ne v8, v5, :cond_8

    if-ne v9, v4, :cond_8

    .line 1123
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v6, v3, v10

    .line 1124
    aget v7, v2, v10

    invoke-virtual {v0, v7, v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    .line 1125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPreferredNetworkNrForInu: not acitve slot to DEFAULT_NW_MODE_SENCONDARY  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    :cond_8
    if-ne v9, v4, :cond_a

    if-nez v10, :cond_9

    .line 1130
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v6, v1, v16

    .line 1131
    aput v15, v1, v5

    goto :goto_5

    .line 1133
    :cond_9
    aput v15, v1, v16

    .line 1134
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v6, v1, v5

    :cond_a
    :goto_5
    move/from16 v17, v15

    move/from16 v6, v16

    move v7, v6

    move v12, v7

    move v13, v12

    .line 1138
    :goto_6
    sget v15, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v6, v15, :cond_10

    .line 1139
    iget-object v15, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v15, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v15

    aput v15, v2, v6

    .line 1141
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setPreferredNetworkNrForInu:AFTER nwModeInDb["

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v5

    aget v5, v1, v6

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", nwModeinSubIdTable["

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v6

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", nrSubcount: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 1144
    aget v5, v2, v6

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_b

    aget v5, v3, v6

    const/4 v14, -0x1

    if-eq v5, v14, :cond_c

    :cond_b
    if-ne v11, v4, :cond_e

    .line 1145
    :cond_c
    aget v5, v1, v6

    aput v5, v3, v6

    .line 1146
    aget v5, v2, v6

    aget v13, v1, v6

    invoke-virtual {v0, v5, v13}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    if-eq v11, v4, :cond_d

    add-int/lit8 v7, v7, 0x1

    move v12, v6

    :cond_d
    move/from16 v13, v18

    .line 1153
    :cond_e
    aget v5, v2, v6

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_f

    aget v5, v3, v6

    aget v14, v1, v6

    if-eq v5, v14, :cond_f

    move/from16 v13, v18

    :cond_f
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v18

    const/16 v14, 0x9

    goto :goto_6

    :cond_10
    move/from16 v18, v5

    if-ne v7, v4, :cond_12

    if-eq v8, v4, :cond_12

    if-eq v9, v4, :cond_12

    if-nez v10, :cond_11

    .line 1160
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v2, v1, v16

    .line 1161
    aput v17, v1, v18

    goto :goto_7

    .line 1163
    :cond_11
    aput v17, v1, v16

    .line 1164
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v2, v1, v18

    .line 1166
    :goto_7
    aget v2, v1, v16

    aput v2, v3, v16

    .line 1167
    aget v1, v1, v18

    aput v1, v3, v18

    move/from16 v5, v18

    goto :goto_a

    :cond_12
    move/from16 v1, v18

    if-ne v7, v1, :cond_16

    if-nez v12, :cond_13

    move/from16 v16, v1

    .line 1172
    :cond_13
    aget v2, v3, v16

    if-eq v2, v1, :cond_15

    if-eq v2, v4, :cond_15

    if-eqz v2, :cond_15

    const/16 v4, 0xb

    if-eq v2, v4, :cond_15

    const/16 v4, 0x9

    if-eq v2, v4, :cond_15

    const/4 v4, -0x1

    if-ne v2, v4, :cond_14

    goto :goto_8

    .line 1180
    :cond_14
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v2, v3, v12

    goto :goto_9

    .line 1178
    :cond_15
    :goto_8
    aput v17, v3, v12

    :goto_9
    move v5, v1

    goto :goto_a

    :cond_16
    move v5, v13

    :goto_a
    if-eqz v5, :cond_17

    .line 1189
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    .line 1190
    invoke-direct {v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    .line 1191
    invoke-direct {v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateNetworkModeForIndia()V

    :cond_17
    :goto_b
    return-void
.end method

.method private blacklist syncPhoneOnFromDB()V
    .locals 6

    .line 325
    const-string v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0xeac4

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 328
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v1

    .line 329
    :goto_1
    aput v2, v4, v5

    goto :goto_0

    .line 333
    :cond_1
    :goto_2
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private blacklist updateDefaultNetworkMode()V
    .locals 6

    const/4 v0, 0x0

    .line 280
    const-string v1, "ro.telephony.default_network"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x9

    .line 282
    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v3

    .line 283
    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    invoke-static {v4}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v4

    const/16 v5, 0xd

    if-gt v5, v1, :cond_1

    .line 286
    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "turnOff_5g_option_by_device_manager"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v0, v5

    .line 288
    :cond_0
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v3

    if-eqz v0, :cond_1

    const v0, -0x80001

    and-int/2addr v3, v0

    .line 294
    :cond_1
    const-string v0, "persist.radio.support.dualrat"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/high16 v0, 0x10000

    and-int/2addr v0, v3

    or-int/2addr v0, v4

    .line 301
    :goto_0
    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    .line 302
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sSecondaryNetworkMode:I

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDefaultNetworkMode() default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sSecondaryNetworkMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsIndiaNLMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaNLMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " IsIndiaLWMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaLWMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateInsertSimState()V
    .locals 11

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, -0x63

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 344
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    :cond_0
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    .line 350
    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 351
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move v5, v2

    .line 353
    :goto_1
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v5, v6, :cond_1

    .line 354
    iget-object v6, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v6

    aput v6, v0, v5

    .line 355
    iget-object v6, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrevSubIds:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "active_subid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget v7, v0, v5

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 358
    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v3, v2

    .line 360
    :goto_2
    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v3, v4, :cond_4

    .line 361
    aget v4, v0, v3

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 362
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aput v1, v4, v3

    goto :goto_3

    .line 363
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrevSubIds:Ljava/util/Map;

    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aput v2, v4, v3

    goto :goto_3

    .line 366
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    const/4 v5, -0x2

    aput v5, v4, v3

    .line 368
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInsertSimState: phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", prevSubId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrevSubIds:Ljava/util/Map;

    .line 369
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mInsertSimState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private blacklist updateIsCtcDB()V
    .locals 7

    .line 634
    const-string v0, "IS_CTC"

    const-string v1, "IS_CTC2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 635
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    .line 637
    :goto_0
    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v3, v4, :cond_2

    .line 638
    const-string v4, "ril.simoperator"

    const-string v5, "ETC"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 639
    const-string v5, "CTC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "CTG"

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 642
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 640
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    aget-object v5, v0, v3

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist updateNetworkModeForChina()V
    .locals 17

    move-object/from16 v0, p0

    .line 659
    iget-object v1, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    .line 660
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v3, v2, [I

    .line 661
    new-array v4, v2, [I

    .line 663
    iget-object v5, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 664
    invoke-virtual {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v6

    .line 663
    const-string v7, "multi_sim_existing_data_call"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    .line 665
    sput v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_0

    .line 673
    sget v9, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    aput v9, v3, v8

    .line 674
    aput v6, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 677
    :cond_0
    iget-object v8, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 679
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/SubscriptionInfo;

    .line 680
    invoke-virtual {v12}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v12

    aget v12, v1, v12

    if-ne v12, v9, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :cond_3
    if-nez v11, :cond_4

    .line 685
    const-string v1, "[updateNetworkModeForChina] ActiveSlotCount 0"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    :cond_4
    if-ne v11, v9, :cond_8

    .line 691
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const v12, 0x7fffffff

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    .line 692
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v14

    aget v14, v1, v14

    if-ne v14, v9, :cond_5

    .line 693
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v12

    goto :goto_2

    .line 696
    :cond_6
    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 697
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v10

    if-nez v10, :cond_7

    .line 698
    const-string v10, ""

    goto :goto_3

    :cond_7
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 699
    :goto_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 700
    const-string v1, "[updateNetworkModeForChina] ActiveSlotCount 1 but not a usable slot"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 712
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, v6

    move v12, v10

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    .line 713
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v14

    .line 714
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    .line 715
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkModeDbForSubId(I)I

    move-result v15

    .line 716
    aput v13, v4, v14

    move/from16 v16, v6

    .line 718
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateNetworkModeForChina] slot:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", nwMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", phoneOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v14

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 721
    aput v15, v3, v14

    if-ne v11, v9, :cond_a

    .line 722
    aget v6, v1, v14

    if-ne v6, v9, :cond_a

    if-eq v13, v5, :cond_9

    .line 726
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    aput v6, v3, v14

    :cond_9
    move v10, v14

    :cond_a
    if-ne v13, v5, :cond_b

    move v12, v14

    goto :goto_5

    .line 732
    :cond_b
    iget-object v6, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v6, v6, v14

    if-nez v6, :cond_c

    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sSecondaryNetworkMode:I

    if-ne v15, v6, :cond_c

    .line 733
    aput v16, v3, v14

    .line 736
    :cond_c
    :goto_5
    iget-object v6, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v6, v6, v14

    const/4 v7, -0x2

    if-ne v6, v7, :cond_d

    .line 737
    sget v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    aput v6, v3, v14

    :cond_d
    move/from16 v6, v16

    goto :goto_4

    :cond_e
    move/from16 v16, v6

    .line 741
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v10

    goto :goto_6

    .line 743
    :cond_f
    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v12

    goto :goto_6

    .line 746
    :cond_10
    iget-object v1, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "multi_sim_data_call_slot"

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 750
    :goto_6
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->checkNetworkModeCapability(I[I)V

    .line 751
    aget v6, v4, v1

    sput v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    .line 753
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateNetworkModeForChina] slot_single:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", slot_data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / primarySlot:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activeSlotCount:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDataSubId:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldDataSubId:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 758
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v2, :cond_12

    .line 761
    aget v1, v3, v7

    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 762
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5, v7, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->putUserNetworkTypeReasonInPreference(II)V

    .line 763
    aget v1, v4, v7

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 764
    iget-object v1, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    aget v5, v4, v7

    invoke-virtual {v1, v7, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertNetworkModeInSubinfo(II)V

    .line 766
    :cond_11
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->loadAllowedNetworksFromSubscriptionDatabase()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_12
    const/4 v1, 0x4

    const/4 v2, 0x0

    move/from16 v3, v16

    const/4 v7, 0x0

    .line 769
    invoke-virtual {v0, v1, v3, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist updateNetworkModeForIndia()V
    .locals 5

    const/4 v0, 0x0

    .line 157
    :goto_0
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 159
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->putUserNetworkTypeReasonInPreference(II)V

    .line 160
    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v2

    .line 161
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertNetworkModeInSubinfo(II)V

    .line 164
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->loadAllowedNetworksFromSubscriptionDatabase()V

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkModeForIndia SubID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " PhoneID: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " NetworkMode: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RAF: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 1

    .line 1196
    const-string v0, "[dispose]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getNetworkModeDbForSubId(I)I
    .locals 2

    .line 654
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->onSetAllowedNetworkTypes(Landroid/os/Message;)V

    return-void

    .line 267
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->onGetNetworkModeDone(Landroid/os/Message;)V

    return-void

    .line 263
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->onSetNetworkModeDone(Landroid/os/Message;)V

    return-void

    .line 258
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    check-cast v0, [I

    aget v0, v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 259
    :goto_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, p1, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    return-void
.end method

.method public blacklist setNetworkModeDbForSubId(II)V
    .locals 2

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkModeDbForSubId: preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    .line 649
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public blacklist updateNetworkMode()V
    .locals 7

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    .line 172
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->syncPhoneOnFromDB()V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateDefaultNetworkMode()V

    .line 174
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateInsertSimState()V

    .line 177
    sget-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IS_INDIA:Z

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v0, v0, v2

    if-ne v0, v1, :cond_2

    .line 179
    const-string v0, "1"

    const-string v4, "ril.5g_rf"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2"

    .line 180
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3"

    .line 181
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    const-string v0, "updateNetworkMode: Single SIM model and SIM change happened #2"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 191
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    const-string v0, "updateNetworkMode: Single SIM model and SIM change happened #1"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/16 v0, 0x1a

    .line 186
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    .line 193
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->putUserNetworkTypeReasonInPreference(II)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    .line 195
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertNetworkModeInSubinfo(II)V

    .line 197
    :cond_2
    sget-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IS_CHINA:Z

    if-eqz v0, :cond_5

    .line 198
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateIsCtcDB()V

    .line 200
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-le v0, v3, :cond_3

    .line 201
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateNetworkModeForChina()V

    return-void

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    .line 219
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkModeDbForSubId(I)I

    move-result v3

    .line 221
    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v4, v4, v2

    if-ne v4, v1, :cond_4

    .line 222
    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sDefaultNetworkMode:I

    .line 223
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDbForSubId(II)V

    .line 225
    :cond_4
    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 226
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 227
    invoke-virtual {v3, v2, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->putUserNetworkTypeReasonInPreference(II)V

    .line 228
    iget-object p0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertNetworkModeInSubinfo(II)V

    return-void

    .line 231
    :cond_5
    sget-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaLWMode:Z

    const-string v1, "updateNetworkMode: Do not update NwMode because encryption mode "

    const-string v2, "ro.crypto.state"

    const-string v4, "encrypted"

    const-string v5, "vold.decrypt"

    const-string v6, "trigger_restart_min_framework"

    if-eqz v0, :cond_7

    .line 232
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 234
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 237
    :cond_6
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-le v0, v3, :cond_9

    .line 238
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkMode()V

    .line 239
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setPreferredNetworkForInu()V

    return-void

    .line 241
    :cond_7
    sget-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->IsIndiaNLMode:Z

    if-eqz v0, :cond_9

    .line 242
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 243
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 244
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    .line 247
    :cond_8
    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-le v0, v3, :cond_9

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkMode()V

    .line 249
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setPreferredNetworkNrForInu()V

    :cond_9
    return-void
.end method
