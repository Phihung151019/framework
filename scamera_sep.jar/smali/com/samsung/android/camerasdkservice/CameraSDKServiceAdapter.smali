.class public Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
.super Ljava/lang/Object;
.source "CameraSDKServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$CameraServiceConnection;
    }
.end annotation


# static fields
.field private static final ADAPTER_STATE_BINDING:I = 0x1

.field private static final ADAPTER_STATE_BOUND:I = 0x2

.field private static final ADAPTER_STATE_UNBOUND:I = 0x3

.field private static final CAMERA_SDK_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.camerasdkservice"

.field public static final ERROR_SERVICE_DIED:I = 0x4

.field public static final ERROR_SERVICE_ENGINE_FAIL:I = 0x7

.field public static final ERROR_SERVICE_INIT:I = 0x5

.field public static final ERROR_SERVICE_PROCESS:I = 0x2

.field public static final ERROR_SERVICE_SET_PROCESSOR_PARAM:I = 0x6

.field private static final ERROR_STRING_SERVICE_DIED:Ljava/lang/String; = "Service Died"

.field private static final SERVICE_BIND_COUNTER:I = 0x2

.field private static final SERVICE_BIND_TIMEOUT:J = 0x3e8L

.field private static final SERVICE_INTENT_ACTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CameraSDKServiceAdapter"

.field private static sInstance:Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;


# instance fields
.field private final mClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

.field private final mServiceConnection:Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$CameraServiceConnection;

.field private mState:I


# direct methods
.method public static synthetic $r8$lambda$qTZn4lBiBnDDbYiPg6rWt7GEM0A(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->lambda$handleServiceDeath$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleServiceConnected(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleServiceDeath(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleServiceDeath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleServiceDisconnected(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleServiceDisconnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    .locals 1

    sget-object v0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->sInstance:Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->SERVICE_INTENT_ACTION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mClients:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$CameraServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$CameraServiceConnection;-><init>(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter-IA;)V

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mServiceConnection:Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$CameraServiceConnection;

    .line 68
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setState(I)V

    .line 69
    return-void
.end method

.method private declared-synchronized activateEngine(ILandroid/os/Bundle;Z)V
    .locals 8
    .param p1, "clientId"    # I
    .param p2, "engineBundle"    # Landroid/os/Bundle;
    .param p3, "activate"    # Z

    monitor-enter p0

    .line 559
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 560
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    const-string v1, "disable"

    .line 561
    .local v1, "activationType":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 562
    const-string v2, "enable"

    move-object v1, v2

    .line 565
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateClientAndState(ILjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 566
    monitor-exit p0

    return-void

    .line 568
    .restart local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 569
    .local v2, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v3

    .line 571
    .local v3, "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z

    move-result v4

    const/4 v5, 0x7

    if-nez v4, :cond_2

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "Engine - service/serviceCallback is null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v5, v4}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    .line 577
    .end local v4    # "errorMsg":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_2
    if-eqz p3, :cond_3

    .line 578
    :try_start_2
    invoke-interface {v2, v3, p2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->enableEngine(Landroid/os/IBinder;Landroid/os/Bundle;)V

    goto :goto_0

    .line 580
    :cond_3
    invoke-interface {v2, v3, p2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->disableEngine(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    :goto_0
    goto :goto_1

    .line 582
    :catch_0
    move-exception v4

    .line 583
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Engine - service."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Engine is failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v5, v6}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 587
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "errorMsg":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-void

    .line 558
    .end local v0    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .end local v1    # "activationType":Ljava/lang/String;
    .end local v2    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local v3    # "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .end local p1    # "clientId":I
    .end local p2    # "engineBundle":Landroid/os/Bundle;
    .end local p3    # "activate":Z
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private addClient(ILcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 4
    .param p1, "clientId"    # I
    .param p2, "client"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 775
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mClients:Ljava/util/Map;

    monitor-enter v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mClients:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 777
    .local v1, "oldClient":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    if-eqz v1, :cond_0

    .line 779
    const-string v0, "CameraSDKServiceAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add client<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> - old client overwritten!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    return-void

    .line 777
    .end local v1    # "oldClient":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized bindToService()Z
    .locals 9

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 96
    invoke-interface {v0}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 97
    monitor-exit p0

    return v2

    .line 101
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x3

    :try_start_1
    const-string v4, "CameraSDKServiceAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindToService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->SERVICE_INTENT_ACTION:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.camerasdkservice"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-direct {p0, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setState(I)V

    .line 105
    const/4 v5, 0x0

    .line 107
    .local v5, "mServiceBindCurrentCounter":I
    iget-object v6, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mServiceConnection:Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$CameraServiceConnection;

    .line 109
    const/16 v8, 0x41

    invoke-virtual {v6, v4, v7, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    .line 113
    .local v6, "bound":Z
    if-nez v6, :cond_1

    .line 114
    const-string v1, "CameraSDKServiceAdapter"

    const-string v2, "binding to service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0, v3}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setState(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit p0

    return v0

    .line 120
    :cond_1
    :try_start_2
    const-string v7, "CameraSDKServiceAdapter"

    const-string v8, "binding to service..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    iget v7, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mState:I

    if-ne v7, v2, :cond_2

    if-ge v5, v1, :cond_2

    .line 124
    const-wide/16 v7, 0x3e8

    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 125
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 136
    const-string v1, "CameraSDKServiceAdapter"

    goto :goto_1

    .line 129
    :pswitch_0
    const-string v1, "CameraSDKServiceAdapter"

    const-string v2, "Client connected to Framework."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    goto :goto_2

    .line 132
    :pswitch_1
    const-string v1, "CameraSDKServiceAdapter"

    const-string v2, "service connection bind timed out!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v6, 0x0

    .line 134
    goto :goto_2

    .line 136
    :goto_1
    const-string v2, "service connection bind failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    const/4 v6, 0x0

    .line 144
    :goto_2
    goto :goto_3

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "CameraSDKServiceAdapter"

    const-string v7, "service binding interrupted!"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    const/4 v6, 0x0

    .line 149
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "mServiceBindCurrentCounter":I
    :goto_3
    nop

    .line 151
    monitor-exit p0

    return v6

    .line 145
    .end local v6    # "bound":Z
    :catch_1
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_4
    const-string v2, "CameraSDKServiceAdapter"

    const-string v4, "binding to service failed! - permission denied!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0, v3}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setState(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    monitor-exit p0

    return v0

    .line 93
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized checkClient(ILjava/lang/String;)Z
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "message"    # Ljava/lang/String;

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    const-string v0, "CameraSDKServiceAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get client for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "- called in invalid state!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 166
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 161
    .end local p1    # "clientId":I
    .end local p2    # "message":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    .locals 2

    const-class v0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->sInstance:Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    invoke-direct {v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;-><init>()V

    sput-object v1, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->sInstance:Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    .line 83
    :cond_0
    sget-object v1, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->sInstance:Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 79
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 487
    :try_start_0
    iget v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 487
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleOnError(IILjava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 682
    const-string v0, "CameraSDKServiceAdapter"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 684
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    if-nez v0, :cond_0

    .line 685
    const-string v1, "error callback"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->logMethodFailure(Ljava/lang/String;I)V

    .line 686
    return-void

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2, p3}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 689
    return-void
.end method

.method private declared-synchronized handleServiceConnected(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "iBinder"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 730
    if-nez p1, :cond_0

    .line 731
    :try_start_0
    const-string v0, "CameraSDKServiceAdapter"

    const-string v1, "onServiceConnected: invalid binder received!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    monitor-exit p0

    return-void

    .line 736
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 737
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setState(I)V

    .line 738
    const-string v0, "CameraSDKServiceAdapter"

    const-string v1, "bound to service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    monitor-exit p0

    return-void

    .line 729
    .end local p1    # "iBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized handleServiceDeath()V
    .locals 2

    monitor-enter p0

    .line 693
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 694
    monitor-exit p0

    return-void

    .line 696
    :cond_0
    :try_start_1
    const-string v0, "CameraSDKServiceAdapter"

    const-string v1, "Service Died!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    monitor-exit p0

    return-void

    .line 692
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private declared-synchronized handleServiceDisconnected()V
    .locals 3

    monitor-enter p0

    .line 715
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 716
    monitor-exit p0

    return-void

    .line 718
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mServiceConnection:Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter$CameraServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 719
    invoke-direct {p0, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setState(I)V

    .line 720
    const-string v0, "CameraSDKServiceAdapter"

    const-string v1, "SDK service unbound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    monitor-exit p0

    return-void

    .line 714
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private isClientListEmpty()Z
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mClients:Ljava/util/Map;

    monitor-enter v0

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mClients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized isServiceBound()Z
    .locals 2

    monitor-enter p0

    .line 175
    :try_start_0
    iget v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 176
    const-string v0, "CameraSDKServiceAdapter"

    const-string v1, "adapter state is not valid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 179
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic lambda$handleOnError$0(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;ILjava/lang/String;)V
    .locals 1
    .param p0, "client"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 688
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getCallback()Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleServiceDeath$1()V
    .locals 6

    .line 704
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mClients:Ljava/util/Map;

    monitor-enter v0

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mClients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 706
    .local v1, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 708
    .local v2, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getCallback()Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    move-result-object v3

    const/4 v4, 0x4

    const-string v5, "Service Died"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onError(ILjava/lang/String;)V

    .line 709
    .end local v2    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    goto :goto_0

    .line 710
    :cond_0
    return-void

    .line 706
    .end local v1    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private logMethodFailure(Ljava/lang/String;I)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "clientId"    # I

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "- client<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSDKServiceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method private declared-synchronized setState(I)V
    .locals 0
    .param p1, "state"    # I

    monitor-enter p0

    .line 478
    :try_start_0
    iput p1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit p0

    return-void

    .line 477
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    .end local p1    # "state":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized validateClientAndState(ILjava/lang/String;)Z
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "message"    # Ljava/lang/String;

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->checkClient(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->isServiceBound()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 190
    .end local p1    # "clientId":I
    .end local p2    # "message":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z
    .locals 1
    .param p1, "serviceCallback"    # Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .param p2, "service"    # Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    monitor-enter p0

    .line 202
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 203
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized SALogInsert(ILjava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "clientId"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p5, "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 624
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    move-object v1, v0

    .line 625
    .local v1, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    goto :goto_1

    .line 630
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 631
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "HashMap"

    invoke-virtual {v7, v0, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 632
    iget-object v2, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 633
    .local v2, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v3

    .line 635
    .local v3, "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 636
    const-string v0, "CameraSDKServiceAdapter"

    const-string v4, "SALogInsert - service/serviceCallback is null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    monitor-exit p0

    return-void

    .line 640
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_1
    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .end local p2    # "feature":Ljava/lang/String;
    .end local p3    # "value":I
    .end local p4    # "extra":Ljava/lang/String;
    .local v4, "feature":Ljava/lang/String;
    .local v5, "value":I
    .local v6, "extra":Ljava/lang/String;
    :try_start_1
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->SALogInsert(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    move-object p2, v0

    .line 642
    .local p2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string p3, "CameraSDKServiceAdapter"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SALogCapture(): Exception occurred!"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 644
    .end local p2    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 625
    .end local v2    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local v3    # "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .end local v4    # "feature":Ljava/lang/String;
    .end local v5    # "value":I
    .end local v6    # "extra":Ljava/lang/String;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .local p2, "feature":Ljava/lang/String;
    .restart local p3    # "value":I
    .restart local p4    # "extra":Ljava/lang/String;
    :cond_2
    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 626
    .end local p2    # "feature":Ljava/lang/String;
    .end local p3    # "value":I
    .end local p4    # "extra":Ljava/lang/String;
    .restart local v4    # "feature":Ljava/lang/String;
    .restart local v5    # "value":I
    .restart local v6    # "extra":Ljava/lang/String;
    :goto_1
    :try_start_3
    const-string p2, "SALogCapture"

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->logMethodFailure(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    .line 623
    .end local v1    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .end local v4    # "feature":Ljava/lang/String;
    .end local v5    # "value":I
    .end local v6    # "extra":Ljava/lang/String;
    .end local p1    # "clientId":I
    .end local p5    # "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized abortNightCapture(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "clientId"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 652
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 654
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "abortNightCapture"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateClientAndState(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 655
    monitor-exit p0

    return-void

    .line 657
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 658
    .local v1, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v2

    .line 660
    .local v2, "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 661
    const-string v3, "CameraSDKServiceAdapter"

    const-string v4, "abortNightCapture - service/serviceCallback is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    monitor-exit p0

    return-void

    .line 665
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_1
    :try_start_2
    invoke-interface {v1, v2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->abortNightCaptureProcess(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 671
    goto :goto_0

    .line 666
    :catch_0
    move-exception v3

    .line 667
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "CameraSDKServiceAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "abortNightCapture - service.abortNightCapture is failed, Exception occurred!, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 672
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 651
    .end local v0    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .end local v1    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local v2    # "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .end local p1    # "clientId":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized deInitialize(I)V
    .locals 7
    .param p1, "clientId"    # I

    monitor-enter p0

    .line 268
    :try_start_0
    const-string v0, "CameraSDKServiceAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deInitialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 271
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    const-string v1, "deInitialize"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateClientAndState(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    const-string v1, "deInitialize"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->logMethodFailure(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 275
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 276
    .local v1, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v2

    .line 278
    .local v2, "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    const-string v3, "CameraSDKServiceAdapter"

    const-string v4, "deInitialize - service/serviceCallback is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 284
    :cond_1
    :try_start_2
    invoke-interface {v1, v2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->deInitialize(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    goto :goto_0

    .line 285
    :catch_0
    move-exception v3

    .line 286
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "CameraSDKServiceAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deInitialize - service.deinitialize is failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 267
    .end local v0    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .end local v1    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local v2    # "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .end local p1    # "clientId":I
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized disableEngine(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "engineBundle"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 606
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->activateEngine(ILandroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    monitor-exit p0

    return-void

    .line 605
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    .end local p1    # "clientId":I
    .end local p2    # "engineBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized enableEngine(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "engineBundle"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 596
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->activateEngine(ILandroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    monitor-exit p0

    return-void

    .line 595
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    .end local p1    # "clientId":I
    .end local p2    # "engineBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .locals 3
    .param p1, "clientId"    # I

    .line 790
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mClients:Ljava/util/Map;

    monitor-enter v0

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mClients:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-exit v0

    return-object v1

    .line 792
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getCurrentSystemSelfieTone(I)I
    .locals 8
    .param p1, "clientId"    # I

    monitor-enter p0

    .line 415
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 416
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    const-string v1, "getCurrentSystemSelfieTone "

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateClientAndState(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 417
    monitor-exit p0

    return v2

    .line 420
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 421
    .local v1, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v3

    .line 423
    .local v3, "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 424
    const-string v4, "CameraSDKServiceAdapter"

    const-string v5, " getCurrentSystemSelfieTone - service/serviceCallback is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    monitor-exit p0

    return v2

    .line 428
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_1
    :try_start_2
    invoke-interface {v1, v3}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->getCurrentSystemSelfieTone(Landroid/os/IBinder;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    .line 429
    :catch_0
    move-exception v4

    .line 430
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "CameraSDKServiceAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentSystemSelfieTone - service.getCurrentSystemSelfieTone is failed, Exception occurred!, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 435
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    monitor-exit p0

    return v2

    .line 414
    .end local v0    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .end local v1    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local v3    # "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .end local p1    # "clientId":I
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized getServicePictureSurface(IIII)Landroid/view/Surface;
    .locals 8
    .param p1, "clientId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I

    monitor-enter p0

    .line 446
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 448
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    const-string v1, "getServicePictureSurface"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateClientAndState(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 449
    monitor-exit p0

    return-object v2

    .line 452
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 453
    .local v1, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v3

    .line 455
    .local v3, "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 456
    const-string v4, "CameraSDKServiceAdapter"

    const-string v5, "getServicePictureSurface - service/serviceCallback is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    monitor-exit p0

    return-object v2

    .line 461
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_1
    :try_start_2
    invoke-interface {v1, v3, p2, p3, p4}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->getServicePictureSurface(Landroid/os/IBinder;III)Landroid/view/Surface;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 462
    :catch_0
    move-exception v4

    .line 463
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "CameraSDKServiceAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getServicePictureSurface - service.getServicePictureSurface is failed, Exception occurred!, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 469
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    monitor-exit p0

    return-object v2

    .line 445
    .end local v0    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .end local v1    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local v3    # "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .end local p1    # "clientId":I
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "format":I
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized getServicePreviewSurface(I)Landroid/view/Surface;
    .locals 8
    .param p1, "clientId"    # I

    monitor-enter p0

    .line 383
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 385
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    const-string v1, "getServicePreviewSurface"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateClientAndState(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 386
    monitor-exit p0

    return-object v2

    .line 389
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 390
    .local v1, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v3

    .line 392
    .local v3, "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 393
    const-string v4, "CameraSDKServiceAdapter"

    const-string v5, "getServicePreviewSurface - service/serviceCallback is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    monitor-exit p0

    return-object v2

    .line 397
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_1
    :try_start_2
    invoke-interface {v1, v3}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->getServicePreviewSurface(Landroid/os/IBinder;)Landroid/view/Surface;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 398
    :catch_0
    move-exception v4

    .line 399
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "CameraSDKServiceAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getServicePreviewSurface - service.getServicePreviewSurface is failed, Exception occurred!, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    monitor-exit p0

    return-object v2

    .line 382
    .end local v0    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .end local v1    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local v3    # "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .end local p1    # "clientId":I
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized initialize(ILandroid/content/Context;Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;Landroid/os/Handler;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 6
    .param p1, "clientId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "config"    # Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "processor"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-enter p0

    .line 223
    :try_start_0
    const-string v0, "CameraSDKServiceAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize clientId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput-object p2, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mContext:Landroid/content/Context;

    .line 225
    iput-object p4, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mHandler:Landroid/os/Handler;

    .line 226
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->addClient(ILcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ClientCallback"

    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->bindToService()Z

    move-result v1

    const/4 v2, 0x5

    if-nez v1, :cond_0

    .line 230
    const-string v1, "initialize - binding to service is failed"

    .line 231
    .local v1, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v2, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V

    .line 232
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 236
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 237
    .local v1, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    if-nez v1, :cond_1

    .line 238
    const-string v3, "initialize - service is null"

    .line 239
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 244
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v3, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;

    invoke-direct {v3, p3}, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;-><init>(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V

    .line 245
    .local v3, "newConfig":Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;
    invoke-interface {v1, p1, v3, v0}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->initialize(ILcom/samsung/android/camerasdkservice/data/SInitializeConfig;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    .end local v3    # "newConfig":Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;
    goto :goto_0

    .line 246
    :catch_0
    move-exception v3

    .line 247
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize - service.initialize is failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v2, v4}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 222
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local p1    # "clientId":I
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "config":Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "processor":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized prepareImageCaptureResult(ILcom/samsung/android/camerasdkservice/data/CaptureResultConfig;)V
    .locals 7
    .param p1, "clientId"    # I
    .param p2, "captureResultConfig"    # Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    monitor-enter p0

    .line 498
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 500
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    const-string v1, "prepareImageCaptureResult"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateClientAndState(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 501
    monitor-exit p0

    return-void

    .line 504
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 505
    .local v1, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v2

    .line 507
    .local v2, "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_1

    .line 508
    const-string v3, "prepareImageCaptureResult - service/serviceCallback is null"

    .line 509
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v3}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    monitor-exit p0

    return-void

    .line 514
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v1, v2, v3, p2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->prepareImageCaptureResult(Landroid/os/IBinder;ILcom/samsung/android/camerasdkservice/data/CaptureResultConfig;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 518
    goto :goto_0

    .line 515
    :catch_0
    move-exception v3

    .line 516
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareProcess - service.prepareProcess is failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "errorMsg":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 497
    .end local v0    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .end local v1    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local v2    # "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .end local p1    # "clientId":I
    .end local p2    # "captureResultConfig":Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized prepareProcess(ILandroid/hardware/camera2/CaptureResult;IZ)V
    .locals 7
    .param p1, "clientId"    # I
    .param p2, "previewCaptureResult"    # Landroid/hardware/camera2/CaptureResult;
    .param p3, "orientation"    # I
    .param p4, "isYuvSingleCapture"    # Z

    monitor-enter p0

    .line 316
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 318
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    const-string v1, "prepareProcess"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateClientAndState(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 319
    monitor-exit p0

    return-void

    .line 322
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 323
    .local v1, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v2

    .line 324
    .local v2, "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_1

    .line 325
    const-string v3, "prepareProcess - service/serviceCallback is null"

    .line 326
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v3}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 331
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_1
    :try_start_2
    new-instance v3, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    invoke-direct {v3}, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;-><init>()V

    .line 332
    .local v3, "config":Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    if-eqz p2, :cond_2

    .line 333
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->setSequenceId(I)V

    .line 334
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->setMetadataNative(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 336
    :cond_2
    invoke-interface {v1, v2, v3, p3, p4}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->prepareCaptureProcess(Landroid/os/IBinder;Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    .end local v3    # "config":Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    goto :goto_0

    .line 337
    :catch_0
    move-exception v3

    .line 338
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareProcess - service.prepareProcess is failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "errorMsg":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 315
    .end local v0    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .end local v1    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local v2    # "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .end local p1    # "clientId":I
    .end local p2    # "previewCaptureResult":Landroid/hardware/camera2/CaptureResult;
    .end local p3    # "orientation":I
    .end local p4    # "isYuvSingleCapture":Z
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public release(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 296
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->removeClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->isClientListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 298
    const-string v0, "CameraSDKServiceAdapter"

    const-string v1, "client list empty; unbinding from the vision service..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleServiceDisconnected()V

    .line 301
    :cond_0
    return-void
.end method

.method removeClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .locals 3
    .param p1, "clientId"    # I

    .line 802
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mClients:Ljava/util/Map;

    monitor-enter v0

    .line 803
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mClients:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    monitor-exit v0

    return-object v1

    .line 804
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized setProcessorParameter(ILcom/samsung/android/camerasdkservice/data/ProcessParameters;)V
    .locals 7
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(I",
            "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<",
            "TT;>;)V"
        }
    .end annotation

    .local p2, "parameter":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    monitor-enter p0

    .line 352
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 354
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    const-string v1, "setProcessorParameter"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateClientAndState(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 355
    monitor-exit p0

    return-void

    .line 358
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 359
    .local v1, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v2

    .line 361
    .local v2, "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z

    move-result v3

    const/4 v4, 0x6

    if-nez v3, :cond_1

    .line 362
    const-string v3, "setProcessorParameter - service/serviceCallback is null"

    .line 363
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v3}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 368
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_1
    :try_start_2
    invoke-interface {v1, v2, p2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->setProcessorParameter(Landroid/os/IBinder;Lcom/samsung/android/camerasdkservice/data/ProcessParameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    goto :goto_0

    .line 369
    :catch_0
    move-exception v3

    .line 370
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setProcessorParameter - service.setProcessorParameter is failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "errorMsg":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 351
    .end local v0    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .end local v1    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local v2    # "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .end local p1    # "clientId":I
    .end local p2    # "parameter":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateEngineParameters(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "clientId"    # I
    .param p2, "engineBundle"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 528
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getClient(I)Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    move-result-object v0

    .line 530
    .local v0, "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    const-string v1, "updateEngineParameters"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateClientAndState(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 531
    monitor-exit p0

    return-void

    .line 534
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    .line 535
    .local v1, "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getServiceCallback()Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    move-result-object v2

    .line 537
    .local v2, "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->validateServiceConnection(Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;Lcom/samsung/android/camerasdkservice/ICameraSDKService;)Z

    move-result v3

    const/4 v4, 0x7

    if-nez v3, :cond_1

    .line 538
    const-string v3, "failed to updateEngineParameters - service/serviceCallback is null"

    .line 539
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v3}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    .line 544
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;
    :cond_1
    :try_start_2
    invoke-interface {v1, v2, p2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->updateEngineParameters(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    goto :goto_0

    .line 545
    :catch_0
    move-exception v3

    .line 546
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service failed to updateEngineParameters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 547
    .local v5, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->handleOnError(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 549
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "errorMsg":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 527
    .end local v0    # "client":Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
    .end local v1    # "service":Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .end local v2    # "serviceCallback":Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
    .end local p1    # "clientId":I
    .end local p2    # "engineBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
