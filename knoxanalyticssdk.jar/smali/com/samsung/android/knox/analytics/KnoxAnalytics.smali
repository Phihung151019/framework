.class public Lcom/samsung/android/knox/analytics/KnoxAnalytics;
.super Ljava/lang/Object;
.source "KnoxAnalytics.java"


# static fields
.field public static final ANALYTICS_SERVICE:Ljava/lang/String; = "knox_analytics"

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalyticsSDK]"

.field public static mService:Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-string v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Z
    .locals 1

    .line 72
    sget-object v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->mService:Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    if-nez v0, :cond_0

    .line 73
    const-string v0, "knox_analytics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->mService:Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    .line 75
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->mService:Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 4

    .line 46
    sget-boolean v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->DEBUG:Z

    const-string v1, "[KnoxAnalyticsSDK]"

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->getService()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    .line 51
    const-string p0, "log(): service not running!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 57
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->mService:Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    .line 63
    :goto_0
    :try_start_1
    sget-boolean v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 64
    const-string v0, "log(): Security Exception in log - "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 59
    :goto_2
    :try_start_2
    sget-boolean v0, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 60
    const-string v0, "log(): Remote Exception in log - "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    :goto_3
    return-void

    .line 67
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    throw p0
.end method
