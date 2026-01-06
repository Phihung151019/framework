.class public Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SemWifiPackageInfo"

.field public static final WIFI_APPLICATION_CATEGORY_NONE_QUERY_MAX:I = 0x2

.field public static final WIFI_DATA_USAGE_HIGH:I = 0x3

.field public static final WIFI_DATA_USAGE_LOW:I = 0x1

.field public static final WIFI_DATA_USAGE_MID:I = 0x2

.field public static final WIFI_DATA_USAGE_NONE:I = 0x0

.field public static final WIFI_USAGE_PATTERN_BROWSER:I = 0x3

.field public static final WIFI_USAGE_PATTERN_CHAT:I = 0x2

.field public static final WIFI_USAGE_PATTERN_NONE:I = 0x0

.field public static final WIFI_USAGE_PATTERN_RADIO:I = 0x1

.field public static final WIFI_USAGE_PATTERN_STREAMING:I = 0x4


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCategoryUpdateFailCount:I

.field private mDataUsage:I

.field private mDetectedCount:I

.field private mHasInternetPermission:Z

.field private mIsBrowsingApp:Z

.field private mIsChattingApp:Z

.field private mIsGamingApp:Z

.field private mIsLaunchableApp:Z

.field private mIsSwitchable:Z

.field private mIsSystemApp:Z

.field private mIsVoip:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I

.field private mUsagePattern:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->DBG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZZZZZZIIIIZ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUid:I

    .line 33
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 35
    iput-boolean p4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 36
    iput-boolean p5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 37
    iput-boolean p6, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 38
    iput-boolean p7, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 39
    iput-boolean p8, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    .line 40
    iput-boolean p9, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 41
    iput-boolean p10, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    .line 42
    iput p11, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 43
    iput p12, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 44
    iput p13, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 45
    iput p14, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 46
    iput-boolean p15, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 14
    iput-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUid:I

    .line 16
    const-string p2, "NONE"

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 17
    invoke-static {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isChatApp(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 19
    invoke-static {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSemGamePackage(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    const-string v1, "GAME"

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 20
    invoke-static {p1, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isBrowserApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 21
    invoke-static {p1, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    if-eqz p2, :cond_2

    .line 22
    const-string p2, "SYSTEM"

    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 23
    :cond_2
    invoke-static {p1, p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isLauchablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->updateSwitchable()V

    .line 25
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 29
    const-string p2, "android.permission.INTERNET"

    invoke-static {p1, p3, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    .line 30
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CREATED - "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiPackageInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    .line 56
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 57
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    .line 59
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 60
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUid:I

    .line 62
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isVoip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isGamingApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isBrowsingApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isLaunchable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSwitchable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDetectedCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDataUsage()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUsagePattern()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategoryUpdateFailCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->hasInternetPermission()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    return-void
.end method

.method private getSwitchable()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isLaunchable()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isBrowsingApp()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isGamingApp()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSkipCategory(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSamsungPackage()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isGooglePackage()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->hasInternetPermission()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return v1

    .line 63
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method private isGooglePackage()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v1, "com.android"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "com.google"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private isSamsungPackage()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v1, "com.samsung"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "com.sec"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private isSkipCategory(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 p0, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sparse-switch v2, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :sswitch_0
    const-string v2, "FAILED"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    const/16 v1, 0x8

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :sswitch_1
    const-string v2, "NEWS_AND_MAGAZINES"

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x7

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v2, "MAPS_AND_NAVIGATION"

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x6

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v2, "VIDEO_PLAYERS"

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v1, 0x5

    .line 62
    goto :goto_0

    .line 63
    :sswitch_4
    const-string v2, "NONE"

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/4 v1, 0x4

    .line 73
    goto :goto_0

    .line 74
    :sswitch_5
    const-string v2, "GAME"

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_5

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    const/4 v1, 0x3

    .line 84
    goto :goto_0

    .line 85
    :sswitch_6
    const-string v2, "PHOTOGRAPHY"

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_6

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    const/4 v1, 0x2

    .line 95
    goto :goto_0

    .line 96
    :sswitch_7
    const-string v2, "PRODUCTIVITY"

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_7

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    move v1, p0

    .line 106
    goto :goto_0

    .line 107
    :sswitch_8
    const-string v2, "SYSTEM"

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_8

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_8
    move v1, v0

    .line 117
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 118
    .line 119
    .line 120
    return v0

    .line 121
    :pswitch_0
    const-string v0, "isSkipCategory - skip:"

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v0, "SemWifiPackageInfo"

    .line 128
    .line 129
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    return p0

    .line 133
    :sswitch_data_0
    .sparse-switch
        -0x6d5099d1 -> :sswitch_8
        -0x38da472e -> :sswitch_7
        -0x1c08b283 -> :sswitch_6
        0x2143f2 -> :sswitch_5
        0x24a738 -> :sswitch_4
        0x114585ae -> :sswitch_3
        0x5250f444 -> :sswitch_2
        0x7242be4b -> :sswitch_1
        0x7b29883d -> :sswitch_0
    .end sparse-switch

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addCategoryUpdateFailCount()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 6
    .line 7
    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCategoryUpdateFailCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getDataUsage()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 2
    .line 3
    return p0
.end method

.method public getDetectedCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUid:I

    .line 2
    .line 3
    return p0
.end method

.method public getUsagePattern()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 2
    .line 3
    return p0
.end method

.method public hasInternetPermission()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    .line 2
    .line 3
    return p0
.end method

.method public isBrowsingApp()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 2
    .line 3
    return p0
.end method

.method public isChatApp()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 2
    .line 3
    return p0
.end method

.method public isGamingApp()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 2
    .line 3
    return p0
.end method

.method public isLaunchable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 2
    .line 3
    return p0
.end method

.method public isSwitchable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    .line 2
    .line 3
    return p0
.end method

.method public isSystemApp()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    .line 2
    .line 3
    return p0
.end method

.method public isVoip()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 2
    .line 3
    return p0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->updateSwitchable()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDetectedCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsVoip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "UID:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUid:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, ", PackageName:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    const-string v1, ", Category:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    const-string v1, ", ChattingApp:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    const-string v1, ", VoIP:"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsVoip:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    const-string v1, ", Game:"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    const-string v1, ", Browsing:"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    const-string v1, ", SystemApp:"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    const-string v1, ", Launchable:"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    const-string v1, ", Switchable:"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    .line 98
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    const-string v1, ", DetectedCount:"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDetectedCount:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    const-string v1, ", DataUsage:"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mDataUsage:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    const-string v1, ", UsagePattern:"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    .line 127
    .line 128
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mUsagePattern:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 131
    .line 132
    .line 133
    const-string v1, ", CategoryUpdateFailCount:"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    .line 137
    .line 138
    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategoryUpdateFailCount:I

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 141
    .line 142
    .line 143
    const-string v1, ", HasInternetPermission:"

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .line 147
    .line 148
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 151
    .line 152
    .line 153
    const-string v1, ", IsSamsungPackage:"

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSamsungPackage()Z

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0
.end method

.method public updatePackageInfo(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiPackageInfo"

    .line 6
    .line 7
    const-string v1, "updatePackageInfo"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isChatApp(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsChattingApp:Z

    .line 23
    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v0, :cond_4

    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSemGamePackage(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 39
    .line 40
    const-string v3, "GAME"

    .line 41
    .line 42
    if-ne v0, v3, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v0, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    move v0, v1

    .line 48
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsGamingApp:Z

    .line 49
    .line 50
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 51
    .line 52
    if-nez v0, :cond_6

    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isBrowserApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_5
    move v1, v2

    .line 64
    :cond_6
    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsBrowsingApp:Z

    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSystemApp:Z

    .line 73
    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    const-string v0, "SYSTEM"

    .line 77
    .line 78
    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mCategory:Ljava/lang/String;

    .line 79
    .line 80
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isLauchablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsLaunchableApp:Z

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->updateSwitchable()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mPackageName:Ljava/lang/String;

    .line 92
    .line 93
    const-string v1, "android.permission.INTERNET"

    .line 94
    .line 95
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mHasInternetPermission:Z

    .line 100
    .line 101
    return-void
.end method

.method public updateSwitchable()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getSwitchable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->mIsSwitchable:Z

    .line 6
    .line 7
    return-void
.end method
