.class public Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;
.super Lcom/android/internal/telephony/ISemTelephony$Stub;
.source "SemTelephonyController.java"


# instance fields
.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private final blacklist mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final greylist mContext:Landroid/content/Context;

.field private final blacklist mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

.field private final blacklist mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$iZ1DmsDy4ajjN9EVQwY7CAocq9s(Lcom/android/internal/telephony/Connection;)Z
    .locals 1

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;-><init>()V

    .line 138
    const-string v0, "SemTelephonyController start"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 139
    const-string v0, "isemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 140
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    .line 143
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mAppOps:Landroid/app/AppOpsManager;

    .line 144
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 146
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 147
    new-instance p1, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-direct {p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    return-void
.end method

.method private static blacklist checkCallingOrSelfReadDeviceIdentifiersForAnySub(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 253
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 255
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 254
    invoke-static {p0, v4, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private blacklist checkNrCondition(Lcom/android/internal/telephony/Phone;)Z
    .locals 0

    .line 1619
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result p0

    const/high16 p1, 0x80000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 299
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist enforceCallingPackage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 225
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    .line 226
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    .line 225
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 228
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    if-ne p0, p2, :cond_0

    return-void

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Package "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist enforceModifyPermission()V
    .locals 2

    .line 206
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist enforceModifyPermissionOrCarrierPrivilege(ILjava/lang/String;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    const-string v0, "No modify permission, check carrier privilege next"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private blacklist enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    const-string v0, "No read privileged phone permission, check carrier privilege next"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private blacklist enforceSatelliteCommunicationPermission(Ljava/lang/String;)V
    .locals 1

    .line 268
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SATELLITE_COMMUNICATION"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1320
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1322
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 1324
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1325
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1326
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1327
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1328
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1330
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 170
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private greylist getDefaultSubscription()I
    .locals 0

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result p0

    return p0
.end method

.method private greylist getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 155
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 156
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 2

    .line 288
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 290
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 291
    new-instance v0, Landroid/os/WorkSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private varargs blacklist hasVideoCall([Lcom/android/internal/telephony/Call;)Z
    .locals 0

    .line 536
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda0;-><init>()V

    .line 537
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda1;-><init>()V

    .line 538
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda2;-><init>()V

    .line 539
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda3;-><init>()V

    .line 540
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda4;-><init>()V

    .line 541
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$$ExternalSyntheticLambda5;-><init>()V

    .line 542
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private blacklist locationInfomation(Ljava/lang/String;)Z
    .locals 0

    .line 1269
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1271
    const-string p1, "cellid"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "cell_id"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "pci"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private greylist log(Ljava/lang/String;)V
    .locals 0

    .line 273
    const-string p0, "SemTelephonyController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist loge(Ljava/lang/String;)V
    .locals 0

    .line 278
    const-string p0, "SemTelephonyController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist logi(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method


# virtual methods
.method public blacklist NSRI_requestProc(I[B)[B
    .locals 0

    .line 1172
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->NSRI_requestProc(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist cfrmCpaiFeatureInfo(IIILjava/lang/String;)I
    .locals 2

    .line 1890
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1892
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    .line 1897
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1898
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1900
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1901
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1903
    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    .line 1906
    iget-object p3, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1907
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p4, 0x6c

    .line 1906
    invoke-virtual {p3, p4, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 1909
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cfrmCpaiFeatureInfo: got result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1910
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 1911
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 1912
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    mul-int/lit8 p0, p0, -0x1

    :cond_1
    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 1916
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cfrmCpaiFeatureInfo: Exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1917
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-lez p0, :cond_3

    mul-int/lit8 p0, p0, -0x1

    :cond_3
    return p0
.end method

.method public blacklist changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1009
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 1010
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->changeIccSimPersoPasswordForSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist changeIccSimPersoPasswordForSubId(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1015
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1018
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1020
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1022
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x53

    .line 1021
    invoke-virtual {v2, p2, v3, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 1023
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "< changeIccSimPersoPassword "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1026
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "changeIccSimPersoPassword. Exception e ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1028
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1029
    throw p0
.end method

.method public blacklist checkCallControl(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1094
    const-string v0, "checkCallControl"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1096
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x59

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1097
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkCallControl response : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "xxxx"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    return-object p1
.end method

.method public blacklist checkNSRIUSIMstate_int()I
    .locals 0

    .line 1166
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->checkNSRIUSIMstate_int()I

    move-result p0

    return p0
.end method

.method public blacklist dialForSubscriber(ILjava/lang/String;)V
    .locals 3

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 446
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 459
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 452
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    .line 453
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v2, :cond_1

    .line 454
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 455
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 459
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 460
    throw p0
.end method

.method public blacklist enforceReadPermission()V
    .locals 2

    .line 215
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "Requires READ_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist evtCpaiDataGathering(II[B)I
    .locals 1

    .line 1956
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1958
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    .line 1964
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1965
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 1967
    iget-object p3, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1968
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x70

    .line 1967
    invoke-virtual {p3, v0, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 1969
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "evtCpaiDataGathering: got result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1970
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 1971
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 1972
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    mul-int/lit8 p0, p0, -0x1

    :cond_1
    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 1976
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "evtCpaiDataGathering: Runtime Exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1977
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-lez p0, :cond_3

    mul-int/lit8 p0, p0, -0x1

    :cond_3
    return p0
.end method

.method public blacklist execCpaiModelUpdate(II)I
    .locals 2

    .line 1829
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1831
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    .line 1836
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1837
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x68

    .line 1836
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 1838
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execCpaiModelUpdate: got result "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1839
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 1840
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 1841
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    mul-int/lit8 p0, p0, -0x1

    :cond_1
    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 1845
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execCpaiModelUpdate: Runtime Exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1846
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-lez p0, :cond_3

    mul-int/lit8 p0, p0, -0x1

    :cond_3
    return p0
.end method

.method public blacklist getActivationDay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 702
    const-string p1, "getActivationDate() "

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 704
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 p2, 0x4d

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 705
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "timeString - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    return-object p1
.end method

.method public blacklist getAllCellInfoBySubId(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 382
    invoke-virtual {v1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 383
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 384
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 385
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const-string p3, "getCellInfo"

    .line 386
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 387
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const/16 v1, 0x1d

    .line 388
    invoke-virtual {p2, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 389
    invoke-virtual {p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p2

    .line 380
    invoke-static {v0, p2}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p2

    .line 391
    sget-object v0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$1;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 397
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 395
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 393
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to access cell location"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAllCellInfoForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 404
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 406
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 412
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 414
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 417
    invoke-virtual {v0, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 418
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 419
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const-string p3, "getCellInfo"

    .line 421
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 422
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const/16 v0, 0x1d

    .line 423
    invoke-virtual {p2, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 424
    invoke-virtual {p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p2

    .line 415
    invoke-static {p0, p2}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p0

    .line 426
    sget-object p2, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$1;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {p0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result p0

    aget p0, p2, p0

    if-eq p0, p3, :cond_3

    const/4 p2, 0x2

    if-eq p0, p2, :cond_2

    .line 432
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 430
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 428
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to access cell location"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAtr(I)[B
    .locals 3

    .line 1069
    const-string v0, "getAtrUsingSubId"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 1071
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1073
    :catch_0
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :cond_0
    :goto_0
    const-string v0, "SIM_GET_ATR "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1079
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x4b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM_GET_ATR resp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1082
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1084
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1086
    :catch_1
    const-string p1, "Invalid format of the response string"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v2
.end method

.method public blacklist getCdmaMinForOtasp(I)Ljava/lang/String;
    .locals 2

    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v1, "getCdmaMinForOtasp"

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 1049
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1051
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    throw p0
.end method

.method public blacklist getCellLocationBySubId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 312
    invoke-virtual {v1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 313
    invoke-virtual {v1, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    .line 314
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    .line 315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    const-string v1, "getCellLocation"

    .line 316
    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    const/4 v1, 0x1

    .line 317
    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    const/16 v2, 0x1d

    .line 318
    invoke-virtual {p3, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    .line 319
    invoke-virtual {p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p3

    .line 310
    invoke-static {v0, p3}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p3

    .line 320
    sget-object v0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$1;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result p3

    aget p3, v0, p3

    if-eq p3, v1, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 328
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object p2

    .line 329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 331
    :try_start_0
    const-string p3, "getCellLocation: is active user"

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 332
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 333
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x4f

    .line 332
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellIdentity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    throw p0

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    if-ne p0, v0, :cond_1

    .line 325
    new-instance p0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {p0}, Landroid/telephony/CellIdentityCdma;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {p0}, Landroid/telephony/CellIdentityGsm;-><init>()V

    return-object p0

    .line 322
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to access cell location"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getCellLocationForPhone(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 347
    invoke-virtual {v1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 348
    invoke-virtual {v1, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    .line 349
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    .line 350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    const-string v1, "getCellLocation"

    .line 351
    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    const/4 v1, 0x1

    .line 352
    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    const/16 v2, 0x1d

    .line 353
    invoke-virtual {p3, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    .line 354
    invoke-virtual {p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p3

    .line 345
    invoke-static {v0, p3}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p3

    .line 355
    sget-object v0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$1;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result p3

    aget p3, v0, p3

    if-eq p3, v1, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object p2

    .line 364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 366
    :try_start_0
    const-string p3, "getCellLocation: is active user"

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 367
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 368
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x4f

    .line 367
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellIdentity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    throw p0

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    if-ne p0, v0, :cond_1

    .line 360
    new-instance p0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {p0}, Landroid/telephony/CellIdentityCdma;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {p0}, Landroid/telephony/CellIdentityGsm;-><init>()V

    return-object p0

    .line 357
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to access cell location"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getCpaiFeatureInfo(II[B)I
    .locals 2

    .line 1854
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1856
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    .line 1861
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1862
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x6a

    .line 1861
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 1863
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCpaiFeatureInfo: got result "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1864
    iget-object p2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p2, :cond_3

    .line 1865
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1866
    check-cast p1, [B

    .line 1867
    array-length v0, p1

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 1868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer to copy response too small: Response length is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes. Buffer Size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 1872
    :cond_1
    :goto_0
    array-length v0, p1

    invoke-static {p1, p2, p3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1873
    array-length p0, p1

    return p0

    :cond_2
    return p2

    .line 1876
    :cond_3
    check-cast p2, Lcom/android/internal/telephony/CommandException;

    .line 1877
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_4

    mul-int/lit8 p0, p0, -0x1

    :cond_4
    return p0

    .line 1881
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getCpaiFeatureInfo: Exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1882
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-lez p0, :cond_5

    mul-int/lit8 p0, p0, -0x1

    :cond_5
    return p0
.end method

.method public blacklist getCpaiModelVersion(I[B)I
    .locals 3

    .line 1793
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1795
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    .line 1800
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1801
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x66

    const/4 v2, 0x0

    .line 1800
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCpaiModelVersion: got result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1803
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 1804
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1805
    check-cast p1, [B

    .line 1806
    array-length v1, p1

    array-length v2, p2

    if-le v1, v2, :cond_1

    .line 1807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer to copy response too small: Response length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "bytes. Buffer Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 1811
    :cond_1
    :goto_0
    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1812
    array-length p0, p1

    return p0

    :cond_2
    return v0

    .line 1815
    :cond_3
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1816
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_4

    mul-int/lit8 p0, p0, -0x1

    :cond_4
    return p0

    .line 1820
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCpaiModelVersion: Exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1821
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-lez p0, :cond_5

    mul-int/lit8 p0, p0, -0x1

    :cond_5
    return p0
.end method

.method public blacklist getCurrentUATI()[B
    .locals 3

    .line 1194
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 1195
    const-string v0, "getCurrentUATI()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 1197
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    const/16 v1, 0xc

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->getCommendToRILInfo(II)Ljava/lang/String;

    move-result-object v0

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 1200
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getDataRoamingEnabled()Z
    .locals 0

    .line 1178
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist getDisable2g()I
    .locals 2

    .line 547
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 548
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v0, 0x47

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 549
    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getEuimid()Ljava/lang/String;
    .locals 0

    .line 1036
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 1037
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemIccCardBase;->getEuimid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFDNavailable(I)Z
    .locals 0

    .line 1335
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1337
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getSemIccCardHelper()Lcom/android/internal/telephony/uicc/SemIccCardHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->getFdnAvailable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccUsimPersoEnabled()Z
    .locals 1

    .line 964
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 965
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getIccUsimPersoEnabledForSubId(I)Z

    move-result p0

    return p0
.end method

.method public blacklist getIccUsimPersoEnabledForSubId(I)Z
    .locals 2

    .line 970
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccUsimPersoEnabledForSubId subId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 973
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 975
    const-string p1, "getIccUsimPersoEnabledForSubId : invalid phone"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 978
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemIccCardBase;->getIccUsimPersoEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1279
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-string v1, "getIpAddressFromLinkProp enforcePrivilegedPhoneStatePermission"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1282
    :catch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 1283
    const-string v1, "getIpAddressFromLinkProp enforceReadPermission"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 1287
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 1290
    const-string p1, "ConnectivityManager is Null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-exception p1

    goto :goto_2

    .line 1294
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1296
    const-string p1, "ActiveNetwork is Null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    return-object v0

    .line 1300
    :cond_1
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1302
    const-string p1, "NetworkCapabilities is Null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    return-object v0

    .line 1307
    :cond_2
    const-string v4, "MOBILE"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1308
    invoke-virtual {v3, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1309
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 1311
    :goto_1
    invoke-static {p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 1313
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getLastNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .locals 2

    .line 1721
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const p1, 0x7fffffff

    .line 1728
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    const-string p1, ""

    if-nez p0, :cond_1

    .line 1736
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 1730
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_2

    .line 1736
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 1732
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_3

    .line 1736
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 1734
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getLastKnownCountryIso()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1736
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1737
    throw p0
.end method

.method public blacklist getLteCsCapa(I)I
    .locals 0

    .line 748
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 750
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 755
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 756
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    const-string p1, "LTE_CS_CAPA"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigDataAsInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getMobileQualityInformation(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1208
    const-string v0, ";"

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1213
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v4, "getMobileQualityInformation enforcePrivilegedPhoneStatePermission"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1217
    :catch_0
    iget-object v4, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v5}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 1220
    invoke-virtual {v5, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 1221
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 1222
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 1223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const-string p3, "getMobileQualityInformation"

    .line 1224
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 1225
    invoke-virtual {p2, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const/16 p3, 0x1d

    .line 1226
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 1227
    invoke-virtual {p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p2

    .line 1218
    invoke-static {v4, p2}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p2

    .line 1228
    sget-object p3, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1231
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 1232
    const-string p2, "getMobileQualityInformation enforceReadPermission"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 1236
    :goto_1
    :try_start_1
    iget-object p2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x5b

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 1239
    iget-object p2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string p3, ""

    if-nez p2, :cond_1

    :try_start_2
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 1241
    check-cast p1, [B

    .line 1242
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :cond_1
    move-object p2, p3

    .line 1245
    :goto_2
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p1, :cond_2

    .line 1246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileQualityInformation Good Job:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    :cond_2
    if-nez v3, :cond_5

    .line 1252
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move p2, v2

    .line 1254
    :goto_3
    array-length v3, p1

    if-ge p2, v3, :cond_4

    .line 1255
    aget-object v3, p1, p2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1257
    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->locationInfomation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p1, p2

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    move-object p2, p3

    :cond_5
    return-object p2

    :catch_1
    return-object v1
.end method

.method public blacklist getNetworkStatusDisplayOption(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    .line 712
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "getNetworkStatusDisplayOption"

    .line 711
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 716
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "mobile_network_status"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getNextRetryTime()J
    .locals 2

    .line 1705
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 1707
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultSubscription()I

    move-result v0

    .line 1709
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1711
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1714
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getNextRetryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getNrMode(I)I
    .locals 4

    const/4 v0, 0x0

    .line 1483
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const-string v1, "getNrMode enforcePrivilegedPhoneStatePermission"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1486
    :catch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1487
    const-string v1, "getNrMode enforceModifyPermission"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    :goto_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNrMode: Invalid phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return v1

    .line 1495
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNrMode with phoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1497
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1498
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->checkNrCondition(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1499
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v2, 0x55

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [I

    :cond_1
    if-eqz v0, :cond_2

    const/4 p0, 0x0

    .line 1502
    aget v1, v0, p0

    :cond_2
    return v1
.end method

.method public blacklist getNtnSmsSupported()Z
    .locals 3

    .line 1766
    const-string v0, "getNtnSmsSupported"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceSatelliteCommunicationPermission(Ljava/lang/String;)V

    .line 1768
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    .line 1769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz v0, :cond_0

    .line 1772
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getNtnSmsSupported()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1778
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1774
    :cond_0
    :try_start_1
    const-string v0, "SatelliteController is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1778
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1779
    throw p0
.end method

.method public blacklist getSdnAvailable()Z
    .locals 0

    .line 769
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getSemIccCardHelper()Lcom/android/internal/telephony/uicc/SemIccCardHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->getSdnAvailable()Z

    move-result p0

    return p0
.end method

.method public blacklist getSecondaryImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1639
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "getSecondaryImei"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceCallingPackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 1640
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->checkCallingOrSelfReadDeviceIdentifiersForAnySub(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1644
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 1646
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 1647
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getImeiType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1648
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getImei()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_1
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1654
    throw p2

    .line 1642
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller does not have permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getSimPinRetryForSubscriber(I)I
    .locals 1

    .line 928
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 930
    const-string v0, "getSimPinRetryForSubscriber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 933
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemIccCardBase;->getIccPin1RetryCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getSimPukRetryForSubscriber(I)I
    .locals 1

    .line 946
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 948
    const-string v0, "getSimPukRetryForSubscriber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 951
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemIccCardBase;->getIccPuk1RetryCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getSupportUacType(I)I
    .locals 0

    .line 1675
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 1677
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1679
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 1682
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1683
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    const-string p1, "SUPPORT_UAC_TYPE"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigDataAsInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSupportedNrca(I)Z
    .locals 0

    .line 1605
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 1607
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1609
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 1612
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1613
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    const-string p1, "SUPPORTED_NRCA"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigDataAsBool(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getUaUap(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1125
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultSubscription()I

    move-result p1

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1130
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGroupIdLevel1 phone is null for Subscription:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    move-object p1, v1

    .line 1135
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gid1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist getVendorConfigState(I)Landroid/telephony/VendorConfigurationState;
    .locals 2

    .line 1572
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1574
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 1578
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const-string v1, "getVendorConfigState"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1580
    :catch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1581
    const-string v0, "getVendorConfigState enforceModifyPermission"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1584
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1585
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getVendorConfigurationState()Landroid/telephony/VendorConfigurationState;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVoNRMode(I)I
    .locals 3

    const/4 v0, 0x0

    .line 1537
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v1, "getVoNRMode enforcePrivilegedPhoneStatePermission"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1540
    :catch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1541
    const-string v1, "getVoNRMode enforceModifyPermission"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 1545
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v2, 0x60

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1547
    :catch_1
    const-string p1, "getVoNrMode: Runtime Exception"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public blacklist invokeOemRilRequestRawForPhone(I[B[B)I
    .locals 2

    .line 1344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyPermissions;->isRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    const-string p1, "invokeOemRilRequestRawForPhone: calling Uid is SHELL_UID or ROOT_UID"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1346
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    return p0

    .line 1348
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeOemRilRequestRawForPhone: Uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Pid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1354
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1355
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1b

    .line 1354
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 1356
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invokeOemRilRequestRawForPhone: got result "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1357
    iget-object p2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p2, :cond_3

    .line 1358
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1359
    check-cast p1, [B

    .line 1360
    array-length v0, p1

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer to copy response too small: Response length is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes. Buffer Size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1365
    :cond_1
    array-length v0, p1

    invoke-static {p1, p2, p3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1366
    array-length p0, p1

    return p0

    :cond_2
    return p2

    .line 1369
    :cond_3
    check-cast p2, Lcom/android/internal/telephony/CommandException;

    .line 1370
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_4

    mul-int/lit8 p0, p0, -0x1

    :cond_4
    return p0

    .line 1374
    :catch_0
    const-string p1, "invokeOemRilRequestRawForPhone: Runtime Exception"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1375
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-lez p0, :cond_5

    mul-int/lit8 p0, p0, -0x1

    :cond_5
    return p0
.end method

.method public blacklist invokeOemRilRequestRawForSubscriber(I[B[B)I
    .locals 2

    .line 1383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyPermissions;->isRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    const-string p1, "invokeOemRilRequestRawForSubscriber: calling Uid is SHELL_UID or ROOT_UID"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1385
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    return p0

    .line 1387
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeOemRilRequestRawForSubscriber: Uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Pid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1393
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1b

    .line 1393
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 1395
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invokeOemRilRequestRawForSubscriber: got result "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1396
    iget-object p2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p2, :cond_3

    .line 1397
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1398
    check-cast p1, [B

    .line 1399
    array-length v0, p1

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer to copy response too small: Response length is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes. Buffer Size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1404
    :cond_1
    array-length v0, p1

    invoke-static {p1, p2, p3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1405
    array-length p0, p1

    return p0

    :cond_2
    return p2

    .line 1408
    :cond_3
    check-cast p2, Lcom/android/internal/telephony/CommandException;

    .line 1409
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_4

    mul-int/lit8 p0, p0, -0x1

    :cond_4
    return p0

    .line 1413
    :catch_0
    const-string p1, "invokeOemRilRequestRawForSubscriber: Runtime Exception"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1414
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-lez p0, :cond_5

    mul-int/lit8 p0, p0, -0x1

    :cond_5
    return p0
.end method

.method public blacklist isEmergencyNumberBySubId(ILjava/lang/String;Z)Z
    .locals 2

    .line 479
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 484
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    .line 486
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    const-string v0, "isEmergencyNumber(Potential)"

    .line 485
    invoke-static {p0, p3, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfReadPrivilegedPhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 488
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 492
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 493
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    .line 494
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 499
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 500
    throw p0
.end method

.method public blacklist isMmiForSubscriber(ILjava/lang/String;)Z
    .locals 3

    .line 730
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    const/4 v0, 0x0

    .line 732
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_0

    .line 734
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMmiForSubscriber: phone is null. subId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return v0

    .line 737
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/SemPhoneInternal;->isMmiDialString(Ljava/lang/String;)Z

    move-result p1

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMmiForSubscriber: dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " isMmiChecked="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public blacklist isSimFDNEnabledForSubscriber(I)Z
    .locals 2

    .line 911
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 914
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 916
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 918
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 922
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FdnEnabled? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return p1
.end method

.method public blacklist isSupportLteCapaOptionC(I)Z
    .locals 0

    .line 1624
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 1626
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1628
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 1631
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1632
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    const-string p1, "SUPPORT_LTE_CAPA_OPTION_C"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getConfigDataAsBool(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVideoCall()Z
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mCallManager:Lcom/android/internal/telephony/CallManager;

    if-nez v0, :cond_0

    .line 521
    const-string v0, "isVideoCall - mCallManager is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 525
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 527
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 529
    filled-new-array {v0, v1, v2}, [Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->hasVideoCall([Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist reloadTestEmergencyNumber()V
    .locals 6

    .line 507
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 508
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 509
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v3

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->executeEmergencyNumberTestModeCommand(ILandroid/telephony/emergency/EmergencyNumber;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadTestEmergencyNumber - getPhones is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist requestModemActivityInfo(Landroid/os/ResultReceiver;Ljava/lang/String;)V
    .locals 3

    .line 1592
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1593
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object p2

    .line 1595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1597
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v2, 0x5c

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestAsync(ILjava/lang/Object;Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1600
    throw p0
.end method

.method public blacklist resetNetworkSettings(I)V
    .locals 0

    .line 1784
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1786
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1788
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->resetNetworkSettings()V

    :cond_0
    return-void
.end method

.method public blacklist semGetSatelliteImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1659
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "semGetSatelliteImei"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceCallingPackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 1660
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->checkCallingOrSelfReadDeviceIdentifiersForAnySub(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1664
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 1666
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 1667
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getSatelliteImei()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1670
    throw p0

    .line 1662
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller does not have permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist semGetSatelliteState(I)Landroid/telephony/satellite/SemSatelliteState;
    .locals 1

    .line 1756
    const-string v0, "semGetSatelliteState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceSatelliteCommunicationPermission(Ljava/lang/String;)V

    .line 1758
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1761
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getSatelliteState()Landroid/telephony/satellite/SemSatelliteState;

    move-result-object p0

    return-object p0
.end method

.method public blacklist semRequestSatelliteMode(IZLcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 1

    .line 1742
    const-string v0, "semRequestSatelliteMode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceSatelliteCommunicationPermission(Ljava/lang/String;)V

    .line 1744
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1746
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/SemPhoneInternal;->setSatellitePower(ZLcom/android/internal/telephony/IIntegerConsumer;)V

    return-void

    .line 1749
    :cond_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/internal/telephony/SemSatellitePhone$$ExternalSyntheticLambda0;

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/SemSatellitePhone$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 1748
    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    const/4 p1, 0x2

    .line 1750
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist sendRequestToRIL([B[BII)I
    .locals 9

    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyPermissions;->isRootOrShell(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 776
    const-string p1, "invokeOemRilRequestRaw: calling Uid is SHELL_UID"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 777
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    mul-int/2addr p0, v1

    return p0

    .line 780
    :cond_0
    invoke-static {p4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 781
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const-string v3, "sendRequestToRIL"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRequestToRIL > Queue Got arg0 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", arg1 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", arg2 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phoneId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 787
    aget-byte v2, p1, p4

    const/16 v3, 0x16

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    .line 788
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendRequestToRIL: Not permitted access. main cmd : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p3, p1, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", sub cmd : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v4

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 789
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    mul-int/2addr p0, v1

    return p0

    :cond_1
    const/4 v2, 0x2

    const/4 v3, -0x2

    .line 792
    const-string v5, "0"

    const-string v6, "90"

    const-string v7, "sendRequestToRIL: response is null"

    const/16 v8, 0x6f

    packed-switch p3, :pswitch_data_0

    .line 866
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendRequestToRIL: unexpected message code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    const/4 p0, -0x4

    return p0

    .line 850
    :pswitch_0
    const-string p3, "ICCPCSC_TRANSMIT"

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 852
    iget-object p3, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 853
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {p3, v1, p1, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_3

    .line 855
    array-length p3, p1

    if-ne p3, v4, :cond_2

    aget-byte p3, p1, p4

    if-ne p3, v8, :cond_2

    goto :goto_0

    .line 859
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "< ICCPCSC_TRANSMIT : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 860
    array-length p0, p1

    invoke-static {p1, p4, p2, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    array-length p0, p1

    return p0

    .line 856
    :cond_3
    :goto_0
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    const/4 p0, -0x5

    return p0

    .line 833
    :pswitch_1
    const-string p2, "ICCPCSC_DISCONNECT"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 835
    iget-object p2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 836
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v0, 0x3a

    invoke-virtual {p2, v0, p1, p3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_6

    .line 838
    array-length p2, p1

    if-ne p2, v4, :cond_4

    aget-byte p2, p1, p4

    if-ne p2, v8, :cond_4

    goto :goto_1

    .line 842
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "< ICCPCSC_DISCONNECT : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 843
    aget-byte p0, p1, p4

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    aget-byte p0, p1, v4

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return p4

    :cond_5
    const/4 p0, -0x3

    return p0

    .line 839
    :cond_6
    :goto_1
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return v3

    .line 816
    :pswitch_2
    const-string p2, "ICCPCSC_CONNECT"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 818
    iget-object p2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 819
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v0, 0x38

    invoke-virtual {p2, v0, p1, p3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_9

    .line 821
    array-length p2, p1

    if-ne p2, v4, :cond_7

    aget-byte p2, p1, p4

    if-ne p2, v8, :cond_7

    goto :goto_2

    .line 825
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "< ICCPCSC_CONNECT : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 826
    aget-byte p0, p1, v4

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    aget-byte p0, p1, v2

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 827
    aget-byte p0, p1, p4

    return p0

    :cond_8
    return v1

    .line 822
    :cond_9
    :goto_2
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return v3

    .line 801
    :pswitch_3
    const-string p3, "ICCPCSC_POWERUP"

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 802
    iget-object p3, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 803
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x36

    invoke-virtual {p3, v1, p1, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_b

    .line 805
    array-length p3, p1

    if-ne p3, v4, :cond_a

    aget-byte p3, p1, p4

    if-ne p3, v8, :cond_a

    goto :goto_3

    .line 809
    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "< ICCPCSC_POWERUP : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 810
    aget-byte p0, p1, p4

    add-int/2addr p0, v2

    invoke-static {p1, p4, p2, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p4

    .line 806
    :cond_b
    :goto_3
    const-string p1, "sendRequestToRIL: atrInfo is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    const/4 p0, -0x6

    return p0

    :pswitch_4
    const/4 p0, 0x0

    .line 796
    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist sendVolteState(IZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x5

    .line 1554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyPermissions;->isRootOrShell(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1555
    const-string p1, "sendVolteState: calling Uid is SHELL_UID return"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return-void

    .line 1558
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    int-to-byte p2, p2

    .line 1565
    new-array v3, v2, [B

    aput-byte v1, v3, v0

    const/16 v4, -0x7f

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    aput-byte v0, v3, v1

    const/4 v0, 0x3

    aput-byte v2, v3, v0

    const/4 v0, 0x4

    aput-byte p2, v3, v0

    .line 1566
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x1b

    invoke-virtual {p0, p2, v3, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestAsync(ILjava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method

.method public blacklist setAllowDataDuringCall(I)V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    .line 467
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "setAllowDataDuringCall"

    .line 466
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forcing DATA_PREFERRED_IN_VOICECALL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTelephonyController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 471
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "data_preferred_mode_during_calling"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 474
    throw p0
.end method

.method public blacklist setCpaiDataGathering(IIIII)I
    .locals 1

    .line 1925
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1927
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    .line 1936
    :cond_0
    :try_start_0
    filled-new-array {p2, p3, p4, p5}, [I

    move-result-object p2

    .line 1938
    iget-object p3, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1939
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p4, 0x6e

    .line 1938
    invoke-virtual {p3, p4, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 1940
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCpaiDataGathering: got result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1941
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 1942
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 1943
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    mul-int/lit8 p0, p0, -0x1

    :cond_1
    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 1947
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCpaiDataGathering: Exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1948
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-lez p0, :cond_3

    mul-int/lit8 p0, p0, -0x1

    :cond_3
    return p0
.end method

.method public blacklist setCpaiDevAppMessage(IIILjava/lang/String;)I
    .locals 2

    .line 1985
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1987
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    .line 1992
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1993
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1995
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1996
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1998
    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    .line 2001
    iget-object p3, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 2002
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p4, 0x72

    .line 2001
    invoke-virtual {p3, p4, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 2004
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCpaiDevAppMessage: got result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 2005
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 2006
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 2007
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    mul-int/lit8 p0, p0, -0x1

    :cond_1
    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 2011
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCpaiDevAppMessage: Exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 2012
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-lez p0, :cond_3

    mul-int/lit8 p0, p0, -0x1

    :cond_3
    return p0
.end method

.method public blacklist setDisable2g(I)Z
    .locals 1

    .line 554
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 555
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x49

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist setEPSLOCI([B)V
    .locals 2

    .line 895
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    const/4 v1, 0x0

    .line 896
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermissionOrCarrierPrivilege(ILjava/lang/String;)V

    .line 898
    const-string v0, "> setEPSLOCI"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 899
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemIccCardBase;->setEPSLOCI([B)V

    .line 900
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v0, 0x42

    .line 901
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "< setEPSLOCI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setGbaBootstrappingParams(I[BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1183
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1184
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->setGbaBootstrappingParams(Lcom/android/internal/telephony/Phone;[BLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1188
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setGbaBootstrappingParams: phone is null for Subscription:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setIccSimPersoEnabled(ZLjava/lang/String;)Z
    .locals 1

    .line 983
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 984
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->setIccSimPersoEnabledForSubId(IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist setIccSimPersoEnabledForSubId(IZLjava/lang/String;)Z
    .locals 4

    .line 989
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 992
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 994
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    new-instance v3, Landroid/util/Pair;

    .line 996
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v3, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x51

    .line 995
    invoke-virtual {v2, p2, v3, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 997
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "< setIccSimPersoEnabled "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1000
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setIccSimPersoEnabled. Exception e ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1003
    throw p0
.end method

.method public blacklist setNrMode(IIZLjava/lang/String;)Z
    .locals 11

    .line 1423
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string v0, "setNrMode enforcePrivilegedPhoneStatePermission"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1426
    :catch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1427
    const-string v0, "setNrMode enforceModifyPermission"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1433
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setNrMode: Invalid phoneId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return v1

    :cond_0
    const v0, 0x7fffffff

    .line 1437
    const-string v2, "nr_mode_changed"

    const-string v3, ", callingPackage: "

    const-string v4, "setNrMode - mode: "

    const/16 v5, 0x56

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne p1, v0, :cond_5

    move p1, v1

    move v0, p1

    .line 1438
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v8

    if-ge p1, v8, :cond_4

    .line 1439
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1440
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->checkNrCondition(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    .line 1443
    :cond_1
    new-array v0, v6, [I

    .line 1444
    aput p2, v0, v1

    .line 1445
    aput v1, v0, v7

    .line 1446
    iget-object v9, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v5, v0, v10}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1451
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1452
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", phoneId: default_index, force: "

    .line 1453
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1454
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1455
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_3

    .line 1458
    :cond_5
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1459
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->checkNrCondition(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1460
    new-array v6, v6, [I

    .line 1461
    aput p2, v6, v1

    .line 1462
    aput p3, v6, v7

    .line 1463
    iget-object v7, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v6, v8}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    return v1

    .line 1468
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1469
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", phoneId: "

    .line 1470
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", force: "

    .line 1471
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1473
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1474
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    move v1, v5

    :cond_7
    :goto_3
    return v1
.end method

.method public blacklist setSimOnOffForSlot(II)Z
    .locals 3

    .line 1106
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1110
    filled-new-array {p1, p2}, [I

    move-result-object v0

    .line 1111
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v2, 0x62

    .line 1112
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1111
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimOnOffForSlot, slotIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mode="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist setTransmitPowerExt(JZ)Z
    .locals 5

    .line 658
    const-string v0, "setTransmitPowerExt finally: exception: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransmitPowerExt: powerLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 662
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 663
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    const/4 v4, 0x0

    .line 668
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x82

    .line 669
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xd

    .line 670
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 671
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 672
    invoke-virtual {v2, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v4

    .line 675
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p2

    if-ge v4, p2, :cond_1

    .line 676
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 680
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    const/4 v3, 0x0

    invoke-virtual {p2, p3, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p2

    move v4, p1

    goto :goto_2

    :catch_1
    move-exception p2

    move v4, p1

    goto :goto_5

    .line 689
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 690
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p2

    .line 692
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception p2

    goto :goto_2

    :catch_4
    move-exception p2

    goto :goto_5

    .line 686
    :goto_2
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setTransmitPowerExt: exception: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 689
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 690
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 692
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :goto_4
    move p1, v4

    goto :goto_6

    .line 684
    :goto_5
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setTransmitPowerExt: IllegalStateException: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 689
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 690
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception p1

    .line 692
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :goto_6
    return p1

    .line 689
    :goto_7
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 690
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception p2

    .line 692
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 694
    :goto_8
    throw p1
.end method

.method public blacklist setTransmitPowerWithDSI(I)Z
    .locals 6

    .line 614
    const-string v0, "setTransmitPowerWithDSI finally: exception: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransmitPowerWithDSI: dsiLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 618
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 619
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    const/4 v4, 0x0

    .line 624
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xa9

    .line 625
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x8

    .line 626
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 627
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 629
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 639
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 640
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return v4

    .line 633
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 639
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 640
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 636
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTransmitPowerWithDSI: exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 639
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 640
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :goto_1
    return v4

    .line 639
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 640
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 644
    :goto_3
    throw p1
.end method

.method public blacklist setTransmitPowerWithFlag(IZ)Z
    .locals 6

    .line 567
    const-string v0, "setTransmitPowerWithFlag finally: exception: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransmitPowerWithFlag: powerLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 571
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 572
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    const/4 v4, 0x0

    .line 577
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x82

    .line 578
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x9

    .line 579
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 580
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 581
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v4

    .line 584
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p2

    if-ge v4, p2, :cond_1

    .line 585
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 589
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p2

    move v4, p1

    goto :goto_2

    .line 596
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 597
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception p2

    .line 593
    :goto_2
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTransmitPowerWithFlag: exception: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 596
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 597
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 599
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :goto_3
    move p1, v4

    :goto_4
    return p1

    .line 596
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 597
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p2

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 601
    :goto_6
    throw p1
.end method

.method public blacklist setVoNRMode(II)Z
    .locals 5

    .line 1508
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const-string v0, "setVoNRMode enforcePrivilegedPhoneStatePermission"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1511
    :catch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1512
    const-string v0, "setVoNRMode enforceModifyPermission"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 1515
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1516
    aput p2, v0, v1

    .line 1519
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x5e

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1521
    :catch_1
    const-string v0, "setVoNRMode: Runtime Exception"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x1

    if-ne v1, p0, :cond_1

    .line 1524
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p2, p0, :cond_0

    .line 1528
    const-string p0, "1"

    goto :goto_2

    :cond_0
    const-string p0, "0"

    .line 1526
    :goto_2
    const-string p2, "nr_advanced_calling_enabled"

    invoke-static {p1, p2, p0}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public blacklist simCheck(I)[B
    .locals 3

    .line 1690
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simCheck("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1692
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1695
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 1696
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v2, 0x64

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1698
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1699
    throw p0
.end method

.method public blacklist sms_NSRI_decryptsms(I[B)[B
    .locals 0

    .line 1156
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->sms_NSRI_decryptsms(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B
    .locals 0

    .line 1161
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist sms_NSRI_encryptsms(ILjava/lang/String;[B)[B
    .locals 0

    .line 1151
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->sms_NSRI_encryptsms(ILjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist supplyPerso(Ljava/lang/String;)Z
    .locals 1

    .line 875
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 876
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->supplyPersoForSubId(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist supplyPersoForSubId(ILjava/lang/String;)Z
    .locals 2

    .line 881
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supplyPersoForSubId subId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 884
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 886
    const-string p1, "supplyPersoForSubId : invalid phone"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 889
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->supplyPerso(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
