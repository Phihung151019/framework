.class public Lcom/android/internal/telephony/data/SemDataUtils;
.super Ljava/lang/Object;
.source "SemDataUtils.java"


# static fields
.field private static final blacklist mInstance:Lcom/android/internal/telephony/data/SemDataUtils;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/android/internal/telephony/data/SemDataUtils;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/SemDataUtils;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/data/SemDataUtils;->mInstance:Lcom/android/internal/telephony/data/SemDataUtils;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/data/SemDataUtils;
    .locals 1

    .line 44
    sget-object v0, Lcom/android/internal/telephony/data/SemDataUtils;->mInstance:Lcom/android/internal/telephony/data/SemDataUtils;

    return-object v0
.end method

.method public static blacklist isSameGroupRat(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .locals 5

    .line 48
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p0

    .line 49
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    const/16 v0, 0xf

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/16 v3, 0x13

    const/16 v4, 0xe

    if-eq p0, v4, :cond_0

    if-eq p0, v0, :cond_2

    if-eq p0, v3, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :cond_0
    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_5

    :cond_1
    return v1

    :cond_2
    :pswitch_0
    if-eq p1, v2, :cond_3

    const/16 p0, 0x9

    if-eq p1, p0, :cond_3

    const/16 p0, 0xa

    if-eq p1, p0, :cond_3

    const/16 p0, 0xb

    if-eq p1, p0, :cond_3

    if-ne p1, v0, :cond_5

    :cond_3
    return v1

    :cond_4
    if-eq p1, v0, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    .line 185
    const-string v0, "SemDataUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist getCountryName(I)Ljava/lang/String;
    .locals 0

    .line 102
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getElapsedSinceBootMillis()J
    .locals 2

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMainOperatorName(I)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOperatorType(I)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSalesCode()Ljava/lang/String;
    .locals 0

    .line 126
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSettingsGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0

    .line 130
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getSimOperatorNumericForPhone(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 134
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSubOperatorName(I)Ljava/lang/String;
    .locals 0

    .line 138
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 142
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 146
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSystemPropertyBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 150
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 118
    invoke-static {p1, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-static {p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTelephonyPropertyFromDefault(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {p1, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs blacklist isCountrySpecific(I[Ljava/lang/String;)Z
    .locals 0

    .line 98
    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isDomesticOtaReg(Ljava/lang/String;I)Z
    .locals 5

    .line 155
    const-string p0, "ril.domesticOtaStart"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 156
    const-string v0, "ril.domesticOta"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, "ril.simtype"

    const-string v2, "0"

    invoke-static {p2, v1, v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDomesticOtaReg for domesticOtaStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " domesticOta:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " apnType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/data/SemDataUtils;->logd(Ljava/lang/String;)V

    .line 162
    const-string v1, "LUC"

    const-string v2, "KOO"

    const-string v3, "SKC"

    const-string v4, "KTC"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isSalesCodeSpecific([Ljava/lang/String;)Z

    move-result v1

    const-string v2, "true"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 163
    const-string v0, "20"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 164
    const-string p0, "isDomesticOtaReg: permit setup data on KT_BIP_OTA"

    invoke-static {p0}, Lcom/android/internal/telephony/data/SemDataUtils;->logd(Ljava/lang/String;)V

    return v3

    .line 166
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "bip"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 167
    const-string p0, "isDomesticOtaReg: permit only bip apn on SKT_BIP_OTA"

    invoke-static {p0}, Lcom/android/internal/telephony/data/SemDataUtils;->logd(Ljava/lang/String;)V

    return v4

    :cond_1
    if-eqz p0, :cond_2

    .line 171
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v4

    :cond_2
    if-eqz v0, :cond_3

    .line 174
    const-string p0, "KtfNumberReg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_3
    return v3
.end method

.method public blacklist setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 182
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
