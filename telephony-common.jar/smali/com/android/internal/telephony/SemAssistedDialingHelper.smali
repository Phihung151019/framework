.class public final Lcom/android/internal/telephony/SemAssistedDialingHelper;
.super Ljava/lang/Object;
.source "SemAssistedDialingHelper.java"


# static fields
.field private static final blacklist MCC_OTA_URI:Landroid/net/Uri;

.field private static final blacklist OTA_COUNTRY_URI:Landroid/net/Uri;

.field private static final blacklist REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;


# instance fields
.field private blacklist mCursor:Landroid/database/Cursor;

.field private blacklist mCursorCountry:Landroid/database/Cursor;

.field private blacklist mIsAssistedDialingNumber:Z

.field private blacklist mIsCDMARegistered:Z

.field private blacklist mIsGSMRegistered:Z

.field private blacklist mIsNANPCountry:Z

.field private blacklist mIsNetRoaming:Z

.field private blacklist mIsOtaNanpCountry:Z

.field private blacklist mNumberLength:I

.field private blacklist mOtaCountryCountryCode:Ljava/lang/String;

.field private blacklist mOtaCountryIDDPrefix:Ljava/lang/String;

.field private blacklist mOtaCountryMCC:Ljava/lang/String;

.field private blacklist mOtaCountryNDDPrefix:Ljava/lang/String;

.field private blacklist mOtaCountryName:Ljava/lang/String;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mRefCountryAreaCode:Ljava/lang/String;

.field private blacklist mRefCountryCountryCode:Ljava/lang/String;

.field private blacklist mRefCountryIDDPrefix:Ljava/lang/String;

.field private blacklist mRefCountryMCC:Ljava/lang/String;

.field private blacklist mRefCountryNDDPrefix:Ljava/lang/String;

.field private blacklist mRefCountryName:Ljava/lang/String;

.field private blacklist mRefCountryNationalNumberLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    const-string v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    .line 32
    const-string v0, "content://assisteddialing/mcc_otalookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    .line 33
    const-string v0, "content://assisteddialing/ota_country"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->OTA_COUNTRY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryMCC:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNANPCountry:Z

    .line 49
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    .line 55
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryName:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    .line 63
    iput v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist displayAssistedDialingParams()V
    .locals 2

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRefCountryName: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), mRefCountryMCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCountryIDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCountryNDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCountryAreaCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCountryNationalNumberLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsNANPCountry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNANPCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCountryCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGSMRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCDMARegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsNetRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNumberLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOtaCountryName: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), mOtaCountryMCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOtaCountryIDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOtaCountryNDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsOtaNanpCountry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOtaCountryCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getOtaCountry(IZ)Landroid/database/Cursor;
    .locals 7

    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 867
    const-string v1, "otaCountryMccKey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 869
    iget-object p0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 875
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v4, "mcc=?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 873
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->OTA_COUNTRY_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AssistedDialing"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist overrideAssistedDialingParamsForTest()V
    .locals 12

    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->isVendorTestEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->getAssistedDialingTestData()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 601
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 602
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssistedDialing test parameter["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    :cond_1
    array-length v2, v0

    if-lez v2, :cond_9

    .line 607
    const-string v2, "gsm"

    aget-object v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 608
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    .line 610
    array-length v1, v0

    if-le v1, v2, :cond_8

    .line 611
    const-string v1, "roam"

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    .line 613
    array-length v1, v0

    const/4 v3, 0x2

    if-le v1, v3, :cond_8

    .line 614
    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 616
    aget-object v1, v0, v3

    const-string v10, "310"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v11, "310 to 316"

    if-eqz v1, :cond_2

    .line 617
    sget-object v5, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v6, 0x0

    const-string v7, "mcc=?"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 619
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    aget-object v0, v0, v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v6, 0x0

    const-string v7, "mcc=?"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    .line 622
    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 624
    const-string v1, "overrideAssistedDialingParamsForTest - cursor is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 625
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 626
    const-string v1, "overrideAssistedDialingParamsForTest - cursor is empty"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 628
    :cond_4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryName:Ljava/lang/String;

    .line 629
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    const/4 v1, 0x3

    .line 631
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    const/4 v1, 0x4

    .line 632
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 634
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    :cond_5
    const/4 v1, 0x5

    .line 637
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NANP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    const/4 v1, 0x6

    .line 638
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    .line 639
    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    const-string v2, "430 to 431"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v10, "430"

    goto :goto_2

    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    :goto_2
    iput-object v10, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    :goto_3
    if-eqz v0, :cond_8

    .line 643
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 648
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->displayAssistedDialingParams()V

    :cond_9
    :goto_4
    return-void
.end method

.method private blacklist retrieveAssistedParams(ILjava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    .line 467
    const-string v0, "NANP"

    const-string v2, "310 to 316"

    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LRA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 468
    const-string v0, "Assisted dial not supported"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    return v4

    .line 472
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    .line 473
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    .line 475
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    :cond_1
    move/from16 v16, v4

    goto/16 :goto_a

    .line 483
    :cond_2
    :try_start_0
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 484
    sget-object v8, Lcom/android/internal/telephony/SemAssistedDialingHelper;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_4

    .line 486
    const-string v0, "Invalid Reference Country"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 530
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v4

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 490
    :cond_4
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 493
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryName:Ljava/lang/String;

    .line 494
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 495
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, "430"

    const-string v11, "430 to 431"

    const-string v12, "310"

    if-eqz v9, :cond_5

    move-object v5, v12

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v5, v10

    :cond_6
    :goto_0
    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryMCC:Ljava/lang/String;

    .line 496
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    .line 497
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    .line 498
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x5

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNANPCountry:Z

    .line 499
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x6

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    .line 501
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/16 v15, 0x8

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 503
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_7

    .line 504
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    goto :goto_1

    .line 506
    :cond_7
    const-string v5, "Wrong MDN. Use default reference country area code"

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 507
    const-string v5, "123"

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    .line 511
    :cond_8
    :goto_1
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/16 v15, 0x9

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 512
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v15, v6, :cond_9

    .line 513
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    iput v15, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    goto :goto_2

    :cond_9
    const/16 v15, 0xa

    .line 515
    iput v15, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    .line 517
    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v4

    const-string v4, "mRefCountryNationalNumberLength - MDN length: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", DB: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 519
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_a

    .line 521
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 523
    :catch_0
    :try_start_4
    const-string v3, "Can\'t parse the NationalNumberLength as integer"

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 527
    :cond_a
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRefCountryMCC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryMCC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 529
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_b

    .line 530
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_b
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v7, :cond_c

    move v3, v7

    goto :goto_4

    :cond_c
    move/from16 v3, v16

    :goto_4
    iput-boolean v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    .line 534
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v8, :cond_d

    move v3, v7

    goto :goto_5

    :cond_d
    move/from16 v3, v16

    :goto_5
    iput-boolean v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    move/from16 v3, p1

    .line 536
    :try_start_5
    invoke-direct {v1, v3, v7}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->getOtaCountry(IZ)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    .line 538
    iput-object v4, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 539
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 540
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryName:Ljava/lang/String;

    .line 541
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    .line 543
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    .line 544
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 546
    const-string v3, ""

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_8

    .line 549
    :cond_e
    :goto_6
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    .line 550
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    .line 551
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v10, v12

    goto :goto_7

    :cond_f
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_7

    :cond_10
    iget-object v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    :goto_7
    iput-object v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 554
    :cond_11
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_12

    .line 555
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_12
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 560
    const-string v0, "OTA country not found"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    return v16

    .line 564
    :cond_13
    invoke-direct {v1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->displayAssistedDialingParams()V

    .line 566
    invoke-direct {v1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->overrideAssistedDialingParamsForTest()V

    return v7

    .line 554
    :goto_8
    iget-object v1, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_14

    .line 555
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 557
    :cond_14
    throw v0

    .line 529
    :goto_9
    iget-object v1, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_15

    .line 530
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_15
    throw v0

    .line 478
    :goto_a
    const-string v0, "Wrong MDN"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    return v16
.end method


# virtual methods
.method public blacklist assistedDialFromContactList(Ljava/lang/String;)Ljava/lang/String;
    .locals 23

    move-object/from16 v1, p0

    .line 78
    const-string v0, "011"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called assistedDialFromContactList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_31

    .line 80
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_11

    .line 85
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :try_start_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 89
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    const/16 v6, 0x2b

    if-nez v5, :cond_2

    if-ne v4, v6, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 93
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    :catch_0
    move-exception v0

    goto/16 :goto_12

    .line 90
    :cond_2
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 97
    iget-object v4, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-direct {v1, v4, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->retrieveAssistedParams(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 98
    const-string v0, "retrieveAssistedParams fail. Returning original number"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 99
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    .line 104
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 107
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 109
    iget-object v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    .line 110
    iget-object v11, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 115
    iget-boolean v13, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    .line 116
    iget-boolean v14, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    if-eqz v14, :cond_7

    .line 120
    iget-object v15, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v15

    .line 121
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/internal/telephony/SemTelephonyHelper;->getNetworkCountryIso(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v6

    .line 122
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 124
    const-string v9, "us"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "vi"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    const/16 v6, 0xd

    if-eq v15, v6, :cond_5

    const/16 v6, 0x13

    if-eq v15, v6, :cond_5

    const/16 v6, 0x14

    if-eq v15, v6, :cond_5

    const/16 v6, 0x12

    if-ne v15, v6, :cond_6

    :cond_5
    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_8

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Use CDMA policy. forceVzwHomePolicy: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_2
    if-eqz v13, :cond_2b

    .line 142
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v6

    const/16 v9, 0x31

    const/4 v13, 0x6

    const/16 v15, 0xb

    if-eqz v6, :cond_f

    .line 143
    iget-boolean v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    if-eqz v6, :cond_17

    iget-boolean v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    if-nez v6, :cond_17

    if-eqz v2, :cond_9

    goto/16 :goto_7

    .line 225
    :cond_9
    iget v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    iget v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    if-gt v0, v6, :cond_d

    if-ne v0, v6, :cond_b

    .line 227
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 229
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing2-2] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing2-3] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 237
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    .line 241
    :cond_b
    iget-object v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    if-ne v0, v6, :cond_d

    .line 242
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 244
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing3-2] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing3-3] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 253
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    :cond_d
    if-nez v7, :cond_13

    if-eqz v10, :cond_e

    goto/16 :goto_5

    :cond_e
    if-nez v5, :cond_10

    if-eqz v11, :cond_f

    goto :goto_3

    :cond_f
    const/16 v0, 0x2b

    goto/16 :goto_e

    .line 293
    :cond_10
    :goto_3
    iget v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    iget v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    iget-object v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    .line 294
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    if-ne v0, v6, :cond_f

    .line 295
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v5, :cond_11

    .line 298
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    goto :goto_4

    .line 300
    :cond_11
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    .line 304
    :goto_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing7-2] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 311
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing7-3] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 312
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    :cond_13
    :goto_5
    if-eqz v7, :cond_14

    .line 262
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 265
    :cond_14
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 270
    :goto_6
    iget-object v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 272
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing6-2] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 276
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    if-eqz v7, :cond_16

    .line 280
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing6-4] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    if-eqz v10, :cond_f

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing6-5] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 288
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    :cond_17
    :goto_7
    if-nez v8, :cond_20

    .line 145
    iget v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    if-lt v6, v15, :cond_20

    if-eq v12, v9, :cond_20

    .line 151
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 153
    sget-object v6, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    .line 155
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v6

    move-object v6, v2

    .line 156
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    .line 158
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1c

    if-eqz v2, :cond_1c

    .line 159
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 160
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 161
    :goto_8
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 162
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 163
    :goto_9
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_19

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 165
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move v5, v2

    const/4 v2, 0x1

    goto :goto_a

    .line 169
    :cond_18
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_9

    :cond_19
    :goto_a
    if-eqz v2, :cond_1a

    goto :goto_b

    .line 175
    :cond_1a
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_8

    .line 177
    :cond_1b
    :goto_b
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 178
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_d

    :cond_1c
    if-eqz v5, :cond_1d

    .line 181
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_c

    :cond_1d
    if-eqz v2, :cond_1e

    .line 184
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1e
    :goto_c
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_d
    if-nez v2, :cond_1f

    .line 190
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing1-1] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_1f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 199
    invoke-virtual {v4, v2, v5, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing1-2] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_20
    iget v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    iget v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    iget-object v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    if-ne v6, v8, :cond_22

    if-eqz v5, :cond_21

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing4-2] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 206
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    :cond_21
    if-eqz v11, :cond_22

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing4-4] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 211
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    :cond_22
    if-eqz v7, :cond_f

    .line 216
    const-string v6, "1"

    iget-object v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 217
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing5-1] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 219
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    :goto_e
    if-ne v12, v0, :cond_2b

    .line 321
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 324
    iget-boolean v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    if-eqz v8, :cond_24

    iget-boolean v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    if-nez v8, :cond_24

    if-nez v2, :cond_24

    if-eqz v6, :cond_23

    .line 328
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing8-1] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 333
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 334
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :cond_23
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v6, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing8-2] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 341
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 342
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 346
    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v15, :cond_2b

    .line 347
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v15, :cond_25

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_25

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing9-1] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 351
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    .line 355
    :cond_25
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 357
    sget-object v18, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_26

    .line 359
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 364
    :cond_26
    :goto_f
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_28

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_28

    .line 365
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    goto :goto_10

    .line 369
    :cond_27
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_f

    :cond_28
    const/4 v2, 0x0

    :goto_10
    if-nez v2, :cond_2a

    .line 373
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_29

    .line 374
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number does not start with Country Code, match: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing9-2] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 378
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    .line 380
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    if-ne v0, v2, :cond_2b

    .line 383
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 384
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v6, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing9-3] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 387
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 388
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    if-eqz v14, :cond_30

    .line 397
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "+"

    if-eqz v0, :cond_2f

    .line 398
    :try_start_2
    iget v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    iget v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    if-gt v0, v6, :cond_2d

    if-ne v0, v6, :cond_2c

    .line 401
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing10-1] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 405
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 406
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 408
    :cond_2c
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v6, v5

    if-ne v0, v6, :cond_30

    .line 410
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing10-2] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    if-eqz v7, :cond_2e

    .line 421
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing11-1] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 424
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 425
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    if-eqz v5, :cond_30

    .line 427
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v6, v5

    if-ne v0, v6, :cond_30

    .line 429
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing11-2] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 433
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 434
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 437
    :cond_2f
    const-string v0, "+011"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 438
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    .line 439
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 441
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 446
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AssistDialing13-1] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 447
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_12

    .line 81
    :cond_31
    :goto_11
    :try_start_3
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    .line 460
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot assist: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 461
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3
.end method

.method public blacklist assistedDialFromDialPad(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    .line 655
    const-string v0, "011"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called assistedDialFromDialPad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1e

    .line 657
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_b

    .line 662
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 663
    :try_start_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 666
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    const/16 v6, 0x2b

    if-nez v5, :cond_2

    if-ne v4, v6, :cond_1

    goto :goto_0

    .line 669
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 670
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    :catch_0
    move-exception v0

    goto/16 :goto_c

    .line 667
    :cond_2
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 674
    iget-object v4, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-direct {v1, v4, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->retrieveAssistedParams(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 675
    const-string v0, "retrieveAssistedParams fail. Returning original number"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 676
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3

    .line 681
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 683
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "assisted_dialing"

    invoke-static {v5, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    move v5, v7

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    if-eqz v5, :cond_5

    .line 684
    iget-object v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v7

    goto :goto_2

    :cond_5
    move v8, v2

    .line 685
    :goto_2
    iget-object v9, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 687
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", numberBeginsWithRefCountryIDDPrefixWithAdEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", numberBeginsWithOTAIDDPrefix: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 691
    iget-boolean v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    .line 692
    iget-boolean v11, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    if-eqz v11, :cond_9

    .line 696
    iget-object v12, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v12

    .line 697
    iget-object v13, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v13}, Lcom/android/internal/telephony/SemTelephonyHelper;->getNetworkCountryIso(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v13

    .line 698
    iget-object v14, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v14

    .line 700
    const-string v15, "us"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "vi"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_6
    const/16 v13, 0xd

    if-eq v12, v13, :cond_7

    const/16 v13, 0x13

    if-eq v12, v13, :cond_7

    const/16 v13, 0x14

    if-eq v12, v13, :cond_7

    const/16 v13, 0x12

    if-ne v12, v13, :cond_8

    :cond_7
    if-nez v14, :cond_8

    move v12, v7

    goto :goto_3

    :cond_8
    move v12, v2

    :goto_3
    if-eqz v12, :cond_a

    .line 710
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Use CDMA policy. forceVzwHomePolicy: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    move v11, v2

    move v10, v7

    goto :goto_4

    :cond_9
    move v12, v2

    :cond_a
    :goto_4
    if-eqz v10, :cond_17

    .line 717
    iget-boolean v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    const/16 v13, 0x31

    const/16 v14, 0xb

    if-eqz v10, :cond_16

    iget-boolean v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    if-nez v10, :cond_16

    if-eqz v12, :cond_b

    goto/16 :goto_9

    .line 732
    :cond_b
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 733
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v10

    if-nez v10, :cond_c

    if-ne v0, v6, :cond_17

    .line 734
    :cond_c
    iget v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    if-lt v10, v14, :cond_17

    if-ne v10, v14, :cond_d

    if-eq v0, v13, :cond_17

    :cond_d
    if-nez v8, :cond_f

    if-eqz v9, :cond_e

    goto :goto_5

    :cond_e
    const/4 v10, 0x0

    move-object v12, v10

    goto :goto_7

    :cond_f
    :goto_5
    if-eqz v8, :cond_10

    .line 738
    iget-object v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    .line 739
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :goto_6
    move-object/from16 v16, v12

    move-object v12, v10

    move-object/from16 v10, v16

    goto :goto_7

    .line 741
    :cond_10
    iget-object v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    .line 742
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :goto_7
    if-ne v0, v6, :cond_12

    .line 747
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 748
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 751
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AssistDialingB-2] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 754
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 755
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 758
    :cond_11
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v2, v7, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AssistDialingB-3] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 761
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 762
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    if-nez v8, :cond_13

    if-eqz v9, :cond_17

    .line 765
    :cond_13
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 768
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AssistDialingC-2] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    if-eqz v9, :cond_14

    .line 772
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    goto :goto_8

    .line 774
    :cond_14
    iput-boolean v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 776
    :goto_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    if-eqz v8, :cond_17

    .line 779
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AssistDialingC-3] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 782
    iput-boolean v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 783
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 719
    :cond_16
    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 720
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 721
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v12

    if-eqz v12, :cond_17

    if-nez v6, :cond_17

    .line 722
    iget v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    if-lt v6, v14, :cond_17

    if-eq v10, v13, :cond_17

    .line 723
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AssistDialingA-1] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 726
    iput-boolean v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 727
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_17
    if-eqz v11, :cond_1d

    .line 793
    const-string v0, "+"

    if-eqz v8, :cond_18

    .line 795
    :try_start_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    iput-boolean v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert reference country IDD prefix to +: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    if-eqz v5, :cond_19

    .line 800
    const-string v5, "+011"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 801
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    .line 802
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    iput-boolean v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert +011 prefix to +: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    if-eqz v9, :cond_1d

    .line 807
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 811
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 812
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 814
    sget-object v8, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_1a

    .line 816
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 819
    :cond_1a
    :goto_a
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_1c

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 820
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 828
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v5, v7, :cond_1c

    .line 829
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 832
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert local IDD prefix to +: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 835
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 836
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 824
    :cond_1b
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_a

    .line 839
    :cond_1c
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1d

    .line 840
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 847
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AssistDialingD-1] "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 850
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_c

    .line 658
    :cond_1e
    :goto_b
    :try_start_3
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    .line 854
    :goto_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot assist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 855
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v3
.end method

.method public blacklist getIsAssistedDialingNumber()Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return p0
.end method
