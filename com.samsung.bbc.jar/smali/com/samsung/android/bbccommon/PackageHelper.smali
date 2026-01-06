.class public Lcom/samsung/android/bbccommon/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bbccommon/PackageHelper$ClearUserDataObserver;,
        Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BBC_PackageHelper"

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field public static mPackageDataSize:J

.field public static mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCrossProfileIntentFilter(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;II)V
    .locals 1

    const/4 v0, 0x2

    .line 51
    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/bbccommon/PackageHelper;->addCrossProfileIntentFilter(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;III)V

    return-void
.end method

.method public static addCrossProfileIntentFilter(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;III)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V

    return-void
.end method

.method public static clearApplicationUserData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 61
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 62
    new-instance v0, Lcom/samsung/android/bbccommon/PackageHelper$ClearUserDataObserver;

    invoke-direct {v0}, Lcom/samsung/android/bbccommon/PackageHelper$ClearUserDataObserver;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result p0

    return p0
.end method

.method public static deletePackageAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    .locals 6

    .line 67
    :try_start_0
    invoke-static {}, Lcom/samsung/android/bbccommon/PackageHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 69
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public static deletePackageAsUser2(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/bbccommon/PackageHelper$PackageDeleteObserver;II)V
    .locals 6

    .line 75
    :try_start_0
    invoke-static {}, Lcom/samsung/android/bbccommon/PackageHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 77
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public static final getAppId(I)I
    .locals 1

    const v0, 0x186a0

    .line 204
    rem-int/2addr p0, v0

    return p0
.end method

.method public static getDeleteStatus(I)I
    .locals 0

    .line 82
    invoke-static {p0}, Landroid/content/pm/PackageManager;->deleteStatusToPublicStatus(I)I

    move-result p0

    return p0
.end method

.method private static getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 92
    sget-object v0, Lcom/samsung/android/bbccommon/PackageHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "package"

    .line 94
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/bbccommon/PackageHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 97
    :cond_0
    sget-object v0, Lcom/samsung/android/bbccommon/PackageHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method public static getInstalledPackages(Landroid/content/Context;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-static {p0}, Lcom/samsung/android/bbccommon/PackageHelper;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageDataSize(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 3

    .line 175
    :try_start_0
    invoke-static {}, Lcom/samsung/android/bbccommon/PackageHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 177
    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/StorageStatsManager;

    .line 178
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/bbccommon/PackageHelper;->mPackageDataSize:J

    .line 181
    sput-object p1, Lcom/samsung/android/bbccommon/PackageHelper;->mPackageName:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 184
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 186
    :cond_0
    const-string p0, "BBC_PackageHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPackageDataSize - packagename: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/android/bbccommon/PackageHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", datasize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/samsung/android/bbccommon/PackageHelper;->mPackageDataSize:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static getPakcageForUID(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 145
    :try_start_0
    const-string v0, "package"

    .line 146
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 147
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 149
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPublicKey(Landroid/content/pm/Signature;)Ljava/security/PublicKey;
    .locals 0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getUid(II)I
    .locals 1

    const v0, 0x186a0

    mul-int/2addr p0, v0

    .line 196
    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static installApplications(Landroid/content/Context;ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object p0

    .line 119
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->installApplication(Ljava/lang/String;)Z

    move-result v0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static isPackageInstalled(Ljava/lang/String;I)Z
    .locals 5

    .line 128
    const-string v0, "BBC_PackageHelper"

    const/4 v1, 0x0

    .line 130
    :try_start_0
    invoke-static {}, Lcom/samsung/android/bbccommon/PackageHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v2, p0, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 136
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : package is not exist in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsPackageExistInSpecifictUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
