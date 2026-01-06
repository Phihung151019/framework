.class public Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper$RequestorWsPriority;
    }
.end annotation


# static fields
.field private static final APP_INFO_FLAGS_SYSTEM_APP:I = 0x81

.field public static final PRIORITY_BG:I = 0x1

.field public static final PRIORITY_FG_APP:I = 0x3

.field public static final PRIORITY_FG_SERVICE:I = 0x2

.field public static final PRIORITY_INTERNAL:I = 0x0

.field public static final PRIORITY_MAX:I = 0x5

.field public static final PRIORITY_MIN:I = 0x0

.field public static final PRIORITY_PRIVILEGED:I = 0x5

.field public static final PRIORITY_SYSTEM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SemWorkSourceHelper"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mResources:Landroid/content/res/Resources;

.field private final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(Landroid/os/WorkSource;Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->mWorkSource:Landroid/os/WorkSource;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->mResources:Landroid/content/res/Resources;

    .line 11
    .line 12
    return-void
.end method

.method private isForegroundService(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const/16 p1, 0x64

    .line 9
    .line 10
    if-ge p1, p0, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x7d

    .line 13
    .line 14
    if-gt p0, p1, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    return v0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string p1, "SemWorkSourceHelper"

    .line 21
    .line 22
    const-string v1, "Failed to check the app state"

    .line 23
    .line 24
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    return v0
.end method

.method private isSystem(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    and-int/lit16 p0, p0, 0x81

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    return v0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string v1, "Failed to retrieve app info for packageName="

    .line 26
    .line 27
    const-string v2, " uid="

    .line 28
    .line 29
    invoke-static {p2, v1, p1, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "SemWorkSourceHelper"

    .line 34
    .line 35
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    return v0
.end method


# virtual methods
.method public getRequestorWsPriority()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->mWorkSource:Landroid/os/WorkSource;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_3

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->mWorkSource:Landroid/os/WorkSource;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->mWorkSource:Landroid/os/WorkSource;

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Landroid/os/WorkSource;->getUid(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->isSystem(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->isForegroundService(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v2, 0x1

    .line 40
    :goto_1
    if-le v2, v1, :cond_2

    .line 41
    .line 42
    move v1, v2

    .line 43
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return v1
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->mWorkSource:Landroid/os/WorkSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemWorkSourceHelper;->mWorkSource:Landroid/os/WorkSource;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/WorkSource;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
