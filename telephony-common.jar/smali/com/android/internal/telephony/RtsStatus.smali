.class public Lcom/android/internal/telephony/RtsStatus;
.super Ljava/lang/Object;
.source "RtsStatus.java"


# static fields
.field public static final blacklist CALL_FAILED_LOWBATT:I = 0x73

.field public static final blacklist EMERGENCY_ONLY:I = 0x2

.field public static final blacklist ETC_CAUSE_REJECT:I = 0x6d

.field public static final blacklist FREQ_SEARCHING:I = 0x6e

.field public static final blacklist GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:I = 0x6c

.field public static final blacklist GPRS_SERVICE_NOT_ALLOWED:I = 0x6a

.field public static final blacklist GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:I = 0x6b

.field public static final blacklist ILLEGAL_ME:I = 0x66

.field public static final blacklist ILLEGAL_MS:I = 0x65

.field public static final blacklist IMSI_UNKNOWN:I = 0x64

.field public static final blacklist IMS_NOT_REGISTERED:I = 0x76

.field public static final blacklist IMS_SERVICE_IMPOSSIBLE:I = 0x77

.field public static final blacklist LGT_REG_AUTH_FAIL:I = 0x6f

.field public static final blacklist LOCATION_REGSTERING:I = 0x68

.field public static final blacklist LOCATION_REG_FAIL:I = 0x67

.field public static final blacklist NETWORK_REG_FAIL:I = 0x69

.field public static final blacklist NOT_REGISTERED_NUMBER:I = 0x70

.field public static final blacklist OUT_OF_3G_NETWORK:I = 0x75

.field public static final blacklist OUT_OF_SERVICE:I = 0x1

.field public static final blacklist RESTRICT_CALL_FACTORY_MODE:I = 0x72

.field public static final blacklist RESTRICT_CALL_FDN_MODE:I = 0x71

.field public static final blacklist RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:I = 0x74

.field public static final blacklist RTS_SUCCESS:I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field protected blacklist mPhoneId:I

.field private blacklist mRtsValues:[Ljava/lang/Integer;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 54
    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mContext:Landroid/content/Context;

    .line 56
    iput p2, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    return-void
.end method

.method private blacklist checkFollowOnRequestState(ZZ)Z
    .locals 8

    .line 519
    const-string v0, "KTT"

    const/16 v1, 0x16

    const/16 v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    .line 520
    iget p1, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    goto/16 :goto_8

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v6

    :cond_2
    :goto_0
    return v4

    :cond_3
    if-nez p2, :cond_11

    .line 525
    iget p1, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SKT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x3

    if-eqz p1, :cond_8

    .line 526
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_4

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_4

    move p1, v4

    goto :goto_1

    :cond_4
    move p1, v6

    .line 527
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v7, 0x7

    if-eq v0, v7, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    .line 528
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v7, 0xe

    if-eq v0, v7, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, v0, p2

    .line 529
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_6

    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v5

    .line 530
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v3, :cond_7

    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v2, :cond_7

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_6

    goto :goto_2

    :cond_6
    move v4, v6

    :cond_7
    :goto_2
    or-int p0, p1, v4

    return p0

    .line 531
    :cond_8
    iget p1, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget p1, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    .line 532
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KOO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    .line 536
    :cond_9
    iget p1, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LGT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 537
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_a

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_a

    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isLteDomain()Z

    move-result p1

    if-nez p1, :cond_a

    move p1, v4

    goto :goto_3

    :cond_a
    move p1, v6

    .line 538
    :goto_3
    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v3, :cond_c

    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v2, :cond_c

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_b

    goto :goto_4

    :cond_b
    move v4, v6

    :cond_c
    :goto_4
    or-int p0, p1, v4

    return p0

    .line 534
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_e

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_e

    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isLteDomain()Z

    move-result p1

    if-nez p1, :cond_e

    move p1, v4

    goto :goto_6

    :cond_e
    move p1, v6

    .line 535
    :goto_6
    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v3, :cond_f

    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v2, :cond_f

    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_10

    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isLteDomain()Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_7

    :cond_10
    move v4, v6

    :goto_7
    or-int p0, p1, v4

    return p0

    :cond_11
    :goto_8
    return v6
.end method

.method private blacklist isDomesticPlmn()Z
    .locals 2

    .line 578
    iget p0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->current_plmn()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "domestic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isLteDomain()Z
    .locals 2

    .line 564
    iget p0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->reject_rat()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 570
    const-string v0, "L"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isRtsStatus()Z
    .locals 8

    .line 545
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    .line 547
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    .line 548
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v3

    .line 549
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v6

    :cond_1
    :goto_0
    return v2

    .line 550
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "KTT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    .line 551
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "KOO"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 555
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "LGT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    .line 557
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v6

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v4, :cond_4

    goto :goto_1

    :cond_4
    return v6

    :cond_5
    :goto_1
    return v2

    :cond_6
    return v6

    .line 552
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    .line 553
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v3

    .line 554
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    return v6

    :cond_9
    :goto_3
    return v2
.end method

.method private blacklist isSimStateAbsent()Z
    .locals 2

    .line 582
    iget p0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->sim_state()Ljava/util/List;

    move-result-object v0

    const-string v1, "UNKNOWN"

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ABSENT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist getKOORtsState(ZZ)I
    .locals 7

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RtsStatus;->checkFollowOnRequestState(ZZ)Z

    move-result p2

    const-string v0, "GsmCdmaPhone-RtsStatus"

    if-eqz p2, :cond_0

    .line 447
    const-string p0, "FOLLOW_ON_REQ"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p2, 0x16

    const/16 v1, 0x11

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz p1, :cond_3

    .line 452
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    const/16 p0, 0x70

    return p0

    .line 465
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isSimStateAbsent()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 466
    const-string p0, "SIM_STATE_ABSENT"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 471
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x65

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_b

    if-eq p1, v2, :cond_b

    const/16 v5, 0x8

    const/16 v6, 0x67

    if-eq p1, v5, :cond_a

    const/16 v5, 0xf

    if-eq p1, v5, :cond_a

    const/16 v5, 0xfe

    if-eq p1, v5, :cond_a

    const/16 v5, 0xff

    if-eq p1, v5, :cond_a

    packed-switch p1, :pswitch_data_0

    .line 486
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isRtsStatus()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 489
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isLteDomain()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 490
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    .line 492
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    if-eqz p0, :cond_9

    const/16 p1, 0xe

    if-eq p0, p1, :cond_8

    if-eq p0, p2, :cond_7

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    const/4 p1, 0x7

    if-eq p0, p1, :cond_8

    const/16 p1, 0x10

    if-eq p0, p1, :cond_7

    if-eq p0, v1, :cond_7

    return v6

    :cond_6
    return v0

    :cond_7
    const/16 p0, 0x68

    return p0

    :cond_8
    const/16 p0, 0x6a

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0

    :cond_a
    :pswitch_0
    return v6

    :cond_b
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getKTTRtsState(ZZ)I
    .locals 21

    move-object/from16 v0, p0

    .line 163
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/RtsStatus;->checkFollowOnRequestState(ZZ)Z

    move-result v1

    const-string v2, "GsmCdmaPhone-RtsStatus"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 164
    const-string v0, "FOLLOW_ON_REQ"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 168
    :cond_0
    invoke-direct {v0}, Lcom/android/internal/telephony/RtsStatus;->isLteDomain()Z

    move-result v1

    const/16 v5, 0xfe

    const/16 v8, 0x6e

    const/16 v9, 0xff

    const/16 v10, 0x16

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/16 v14, 0x64

    const/16 v15, 0x68

    move/from16 v16, v3

    const/4 v3, 0x3

    const/16 v17, 0x67

    const/4 v4, 0x2

    const/16 v18, 0x69

    if-nez p1, :cond_1a

    if-nez p2, :cond_2

    .line 172
    invoke-direct {v0}, Lcom/android/internal/telephony/RtsStatus;->isSimStateAbsent()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 173
    const-string v0, "SIM_STATE_ABSENT"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const/16 v19, 0x65

    const/16 v20, 0x66

    goto/16 :goto_1

    :cond_2
    if-eqz p2, :cond_1

    const/16 v19, 0x65

    .line 176
    iget-object v6, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v6, v6, v16

    .line 177
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v6, v6, v16

    .line 178
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_3

    iget-object v6, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v6, v6, v16

    .line 179
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v3, :cond_3

    iget-object v6, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v6, v6, v16

    .line 180
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v20, 0x66

    const/16 v7, 0xc

    if-eq v6, v7, :cond_4

    iget-object v6, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v6, v6, v16

    .line 181
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_e

    goto :goto_0

    :cond_3
    const/16 v20, 0x66

    .line 182
    :cond_4
    :goto_0
    iget-object v6, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_c

    if-eq v6, v3, :cond_b

    if-eq v6, v13, :cond_a

    if-eq v6, v12, :cond_9

    if-eq v6, v11, :cond_8

    const/16 v7, 0x13

    if-eq v6, v7, :cond_7

    if-eq v6, v10, :cond_7

    if-eq v6, v5, :cond_7

    if-eq v6, v9, :cond_6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v1, :cond_5

    return v18

    :cond_5
    return v15

    :cond_6
    return v8

    :cond_7
    return v15

    :cond_8
    if-eqz v1, :cond_9

    return v14

    :cond_9
    :pswitch_1
    return v18

    :cond_a
    return v20

    :cond_b
    return v19

    :cond_c
    if-eqz v1, :cond_d

    return v18

    :cond_d
    return v14

    .line 215
    :cond_e
    :goto_1
    iget-object v6, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_18

    if-eq v6, v3, :cond_17

    if-eq v6, v13, :cond_16

    if-eq v6, v12, :cond_14

    if-eq v6, v11, :cond_12

    if-eq v6, v10, :cond_11

    if-eq v6, v5, :cond_11

    if-eq v6, v9, :cond_10

    packed-switch v6, :pswitch_data_1

    goto :goto_2

    :pswitch_2
    if-eqz v1, :cond_f

    return v18

    :cond_f
    return v15

    :pswitch_3
    return v18

    :cond_10
    return v8

    :cond_11
    return v15

    :cond_12
    if-eqz v1, :cond_13

    return v14

    :cond_13
    return v18

    :cond_14
    :pswitch_4
    if-eqz v1, :cond_15

    return v17

    :cond_15
    return v18

    :cond_16
    return v20

    :cond_17
    return v19

    :cond_18
    if-eqz v1, :cond_19

    return v18

    :cond_19
    return v14

    :cond_1a
    const/16 v19, 0x65

    const/16 v20, 0x66

    .line 249
    :goto_2
    invoke-direct {v0}, Lcom/android/internal/telephony/RtsStatus;->isRtsStatus()Z

    move-result v1

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getKTCallStatusCode - isRtsStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1b

    if-eqz v1, :cond_24

    :cond_1b
    if-nez p2, :cond_23

    .line 253
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_22

    if-eq v0, v3, :cond_21

    if-eq v0, v13, :cond_20

    if-eq v0, v12, :cond_1f

    if-eq v0, v11, :cond_1e

    if-eq v0, v10, :cond_1d

    if-eq v0, v9, :cond_1c

    packed-switch v0, :pswitch_data_2

    goto :goto_3

    :cond_1c
    return v8

    :cond_1d
    :pswitch_5
    return v15

    :cond_1e
    :pswitch_6
    return v18

    :cond_1f
    :pswitch_7
    if-nez p1, :cond_24

    return v17

    :cond_20
    return v20

    :cond_21
    return v19

    :cond_22
    return v14

    .line 282
    :cond_23
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_2b

    if-eq v0, v3, :cond_2a

    if-eq v0, v13, :cond_29

    if-eq v0, v12, :cond_28

    if-eq v0, v11, :cond_27

    if-eq v0, v10, :cond_26

    if-eq v0, v5, :cond_26

    if-eq v0, v9, :cond_25

    packed-switch v0, :pswitch_data_3

    :cond_24
    :goto_3
    const/4 v0, -0x1

    return v0

    :cond_25
    return v8

    :cond_26
    :pswitch_8
    return v15

    :cond_27
    :pswitch_9
    return v17

    :cond_28
    :pswitch_a
    return v18

    :cond_29
    return v20

    :cond_2a
    return v19

    :cond_2b
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xb
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public blacklist getKoreaRtsState(ZZZZZ)I
    .locals 5

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/telephony/RtsStatus;->readRtsValue()V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKoreaRtsState - isInsvc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isImsCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaPhone-RtsStatus"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "KTT"

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RtsStatus;->getSKTRtsState(ZZ)I

    move-result p1

    goto :goto_0

    .line 84
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RtsStatus;->getKTTRtsState(ZZ)I

    move-result p1

    goto :goto_0

    .line 86
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "LGT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RtsStatus;->getLGTRtsState(ZZZ)I

    move-result p1

    goto :goto_0

    .line 88
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "KOO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RtsStatus;->getKOORtsState(ZZ)I

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v3

    :goto_0
    if-ne p1, v3, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 93
    iget p0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-nez p5, :cond_4

    const/16 p1, 0x74

    .line 99
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getKoreaRtsState - rtsValue: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public blacklist getLGTRtsState(ZZZ)I
    .locals 20

    move-object/from16 v0, p0

    .line 316
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/RtsStatus;->checkFollowOnRequestState(ZZ)Z

    move-result v1

    const-string v2, "GsmCdmaPhone-RtsStatus"

    if-eqz v1, :cond_0

    .line 317
    const-string v0, "FOLLOW_ON_REQ"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v3, 0x13

    const/16 v5, 0x65

    const/16 v6, 0x66

    const/16 v7, 0x6c

    const/16 v8, 0x67

    const/16 v9, 0x6b

    const/16 v10, 0x68

    const/16 v11, 0xff

    const/16 v12, 0x16

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v16, 0x6a

    const/16 v17, 0x6e

    const/4 v1, 0x2

    const/16 v18, 0x64

    const/4 v4, 0x3

    if-eqz p1, :cond_9

    .line 322
    invoke-direct {v0}, Lcom/android/internal/telephony/RtsStatus;->isDomesticPlmn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    iget-object v1, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 324
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1c

    return v16

    .line 329
    :cond_1
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v15, :cond_6

    if-eq v0, v14, :cond_5

    if-eq v0, v13, :cond_4

    if-eq v0, v12, :cond_3

    if-eq v0, v11, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    return v9

    :pswitch_1
    return v8

    :cond_2
    return v17

    :cond_3
    :pswitch_2
    return v10

    :cond_4
    return v7

    :cond_5
    return v16

    :cond_6
    return v6

    :cond_7
    return v5

    :cond_8
    return v18

    :cond_9
    move/from16 v19, v5

    .line 358
    iget-object v5, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_a

    if-nez p3, :cond_a

    const/16 v0, 0x76

    return v0

    :cond_a
    if-nez p2, :cond_b

    .line 364
    invoke-direct {v0}, Lcom/android/internal/telephony/RtsStatus;->isSimStateAbsent()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 365
    const-string v0, "SIM_STATE_ABSENT"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 370
    :cond_b
    iget-object v2, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_13

    .line 371
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_12

    if-eq v0, v4, :cond_11

    if-eq v0, v15, :cond_10

    if-eq v0, v14, :cond_f

    if-eq v0, v13, :cond_e

    if-eq v0, v12, :cond_d

    const/16 v1, 0x63

    if-eq v0, v1, :cond_c

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_c

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_c

    if-eq v0, v11, :cond_c

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    return v9

    :pswitch_4
    return v8

    :cond_c
    :pswitch_5
    const/16 v0, 0x6d

    return v0

    :cond_d
    :pswitch_6
    return v10

    :cond_e
    return v7

    :cond_f
    return v16

    :cond_10
    return v6

    :cond_11
    return v19

    :cond_12
    return v18

    .line 404
    :cond_13
    invoke-direct {v0}, Lcom/android/internal/telephony/RtsStatus;->isRtsStatus()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 406
    invoke-direct {v0}, Lcom/android/internal/telephony/RtsStatus;->isDomesticPlmn()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 407
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1c

    return v16

    .line 411
    :cond_14
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1b

    if-eq v0, v4, :cond_1a

    if-eq v0, v15, :cond_19

    if-eq v0, v14, :cond_18

    if-eq v0, v13, :cond_17

    if-eq v0, v12, :cond_16

    if-eq v0, v11, :cond_15

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_7
    return v9

    :pswitch_8
    return v8

    :cond_15
    return v17

    :cond_16
    :pswitch_9
    return v10

    :cond_17
    return v7

    :cond_18
    return v16

    :cond_19
    return v6

    :cond_1a
    return v19

    :cond_1b
    return v18

    :cond_1c
    :goto_0
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5f
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xb
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getSKTRtsState(ZZ)I
    .locals 6

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RtsStatus;->checkFollowOnRequestState(ZZ)Z

    move-result v0

    const-string v1, "GsmCdmaPhone-RtsStatus"

    if-eqz v0, :cond_0

    .line 106
    const-string p0, "FOLLOW_ON_REQ"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x70

    const/16 v2, 0x16

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz p1, :cond_3

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v5, :cond_2

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    const/16 p1, 0xb

    if-eq p0, p1, :cond_1

    const/16 p1, 0x11

    if-eq p0, p1, :cond_1

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    return v0

    .line 124
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isRtsStatus()Z

    move-result p1

    if-nez p2, :cond_6

    .line 126
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isSimStateAbsent()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 127
    const-string p0, "SIM_STATE_ABSENT"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    if-eqz p1, :cond_6

    .line 132
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v5, :cond_5

    return v5

    :cond_5
    return v0

    .line 140
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v5, :cond_7

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_7

    const/4 p1, 0x7

    if-eq p0, p1, :cond_7

    const/16 p1, 0x8

    if-eq p0, p1, :cond_7

    if-eq p0, v2, :cond_7

    packed-switch p0, :pswitch_data_0

    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_7
    :pswitch_0
    return v5

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist readRtsValue()V
    .locals 10

    .line 60
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->network_reject_cause()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v1, :cond_0

    .line 61
    const-string v1, "Idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-le v8, v5, :cond_0

    .line 62
    const-string v5, ";"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 63
    iget-object v6, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v8, v5, v4

    const-string v9, "Status"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    .line 64
    iget-object v4, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v6, v5, v7

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    .line 65
    iget-object v1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v4, v5, v3

    const-string v6, "CS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v1, v5, v2

    const-string v3, "PS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v2

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rtsString: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GsmCdmaPhone-RtsStatus"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aput-object v6, v0, v4

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aput-object v6, v0, v7

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aput-object v6, v0, v3

    .line 72
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aput-object v6, p0, v2

    return-void
.end method
