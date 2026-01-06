.class public Lcom/android/internal/telephony/SemServiceStateTrackerInternal;
.super Landroid/os/Handler;
.source "SemServiceStateTrackerInternal.java"


# static fields
.field private static final blacklist sOperatorNameOverrideMap:Ljava/util/Map;
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
.field private blacklist mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field final blacklist mRoamingChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field blacklist mShowEpdgName:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 143
    invoke-static {}, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->createOperatorNameOverrideMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->sOperatorNameOverrideMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mShowEpdgName:Z

    .line 41
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mRoamingChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-void
.end method

.method private static final blacklist createOperatorNameOverrideMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-string v1, "XFINITY Mobile"

    const-string v2, "Xfinity Mobile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SST-SEM-INTERNAL"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SST-SEM-INTERNAL"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method blacklist broadcastNrBearerAttach(Landroid/telephony/ServiceState;)V
    .locals 8

    if-nez p1, :cond_0

    .line 55
    const-string p1, "broadcastNrBearerAttach - Invalid ServiceState to broadcast"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 60
    const-string p1, "broadcastNrBearerAttach - Invalid RegState to broadcast"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->log(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v3

    const/16 v4, 0x14

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-ne v3, v4, :cond_3

    .line 71
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p1

    if-ne p1, v6, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v7

    :goto_0
    const-string v2, "5G"

    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 74
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p1

    if-ne p1, v6, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    move p1, v7

    :goto_1
    const-string v2, "5GNSA"

    goto :goto_3

    .line 75
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->isLte(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 76
    const-string v2, "LTE"

    :goto_2
    move p1, v7

    goto :goto_3

    .line 78
    :cond_6
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 83
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDataActivityState()I

    move-result v3

    if-eq v3, v1, :cond_8

    if-eq v3, v0, :cond_8

    if-ne v3, v5, :cond_7

    goto :goto_4

    :cond_7
    move v1, v7

    .line 90
    :cond_8
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastNrBearerAttach - netType: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isActive: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", dataAct: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isUWB: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->log(Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.verizon.provider.DATA_ACTIVITY_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v3, "com.verizon.provider.NETWORK_TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v2, "com.verizon.provider.IS_ACTIVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    const-string v1, "com.verizon.provider.IS_UWB"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 96
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 99
    const-string p1, "com.verizon.mips.services"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method blacklist exceptChinaOperator()Z
    .locals 1

    .line 180
    const-string v0, "exceptChinaOperator() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method blacklist getWfcDefaultSpn()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    const-string v0, "WFC_DEFAULT_SPN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 171
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method blacklist isChinaDomesticRoaming()Z
    .locals 1

    .line 185
    const-string v0, "isChinaDomesticRoaming() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method blacklist isEpdgNameDisplay(IILcom/android/internal/telephony/uicc/IccRecords;)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 104
    iget-object v2, v0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v3, "50218"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    .line 111
    :cond_0
    const-string v3, "46605"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-eq v1, v5, :cond_1

    return v6

    .line 116
    :cond_1
    const-string v3, "52505"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v1, v5, :cond_3

    if-eqz p3, :cond_2

    .line 117
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v10, v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_0

    .line 118
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x2

    const-string v7, "0A"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    return v6

    .line 123
    :cond_3
    iget-object v2, v0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "TGY"

    const-string v5, "DSG"

    const-string v7, "EUR"

    const-string v8, "BRI"

    filled-new-array {v7, v8, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 124
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v19, "VTR"

    const-string v20, "TBT"

    const-string v7, "DSH"

    const-string v8, "TMO"

    const-string v9, "MTR"

    const-string v10, "ASR"

    const-string v11, "BMC"

    const-string v12, "VMC"

    const-string v13, "BWA"

    const-string v14, "TLS"

    const-string v15, "KDO"

    const-string v16, "RWC"

    const-string v17, "FMC"

    const-string v18, "GLW"

    filled-new-array/range {v7 .. v20}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v3, 0x6f5

    .line 125
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SemTelephonyHelper;->isCarrierId(Lcom/android/internal/telephony/Phone;I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v3, 0x4a9

    .line 126
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SemTelephonyHelper;->isCarrierId(Lcom/android/internal/telephony/Phone;I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/16 v2, 0x12

    move/from16 v3, p2

    if-ne v3, v2, :cond_5

    return v6

    .line 131
    :cond_5
    iget-object v2, v0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "CCT"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v6

    .line 135
    :cond_6
    iget-object v0, v0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v2, "USC"

    const-string v3, "GCF"

    const-string v5, "VZW"

    filled-new-array {v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    return v6

    :cond_7
    return v4
.end method

.method blacklist isLte(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xe

    if-eq p1, p0, :cond_1

    const/16 p0, 0x13

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist overrideOperatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->sOperatorNameOverrideMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override incorrect operator name. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->log(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    return-object p1
.end method

.method blacklist registerForRoamingChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 207
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mRoamingChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method blacklist unregisterForRoamingChanged(Landroid/os/Handler;)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->mRoamingChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method blacklist updateVendorConfiguration()V
    .locals 1

    const/16 v0, 0x7d1

    .line 195
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
