.class public Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
.super Ljava/lang/Object;
.source "ActivityRecognitionProviderWatcher.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProviderWatcher"

.field private static sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

.field private static final sWatcherLock:Ljava/lang/Object;


# instance fields
.field private mActivityRecognitionProvider:Lcom/android/location/provider/ActivityRecognitionProvider;

.field private mWatcherStub:Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;


# direct methods
.method static bridge synthetic -$$Nest$fputmActivityRecognitionProvider(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;Lcom/android/location/provider/ActivityRecognitionProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mActivityRecognitionProvider:Lcom/android/location/provider/ActivityRecognitionProvider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcherLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;-><init>(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;)V

    iput-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mWatcherStub:Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
    .locals 2

    .line 47
    sget-object v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcherLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    invoke-direct {v1}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;-><init>()V

    sput-object v1, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    .line 51
    :cond_0
    sget-object v1, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    monitor-exit v0

    return-object v1

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getActivityRecognitionProvider()Lcom/android/location/provider/ActivityRecognitionProvider;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mActivityRecognitionProvider:Lcom/android/location/provider/ActivityRecognitionProvider;

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mWatcherStub:Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;

    return-object v0
.end method
