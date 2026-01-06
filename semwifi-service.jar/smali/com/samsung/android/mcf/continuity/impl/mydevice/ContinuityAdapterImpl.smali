.class public final Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;
.super Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$SingletonHolder;
    }
.end annotation


# instance fields
.field private final mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;

.field private final mContinuityMyDeviceSdkHelperImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityMyDeviceSdkHelperImpl;

.field private final mContinuityRpcManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityRpcManagerImpl;

.field private final mContinuitySessionManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuitySessionManagerImpl;


# direct methods
.method constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;

    .line 9
    .line 10
    invoke-direct {v2, v0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;

    .line 14
    .line 15
    invoke-direct {v3, v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySimpleMessageManagerImpl;)V

    .line 16
    .line 17
    .line 18
    iput-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 23
    .line 24
    new-instance v6, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;

    .line 25
    .line 26
    invoke-direct {v6, v0, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;

    .line 30
    .line 31
    invoke-direct {v0, v6}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;)V

    .line 32
    .line 33
    .line 34
    new-instance v5, Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;

    .line 35
    .line 36
    invoke-direct {v5, v0}, Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityRtpStreamingCommandManagerImpl;)V

    .line 37
    .line 38
    .line 39
    new-instance v7, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityPreConnectionManager;

    .line 40
    .line 41
    invoke-direct {v7}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityPreConnectionManager;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionMessageManagerImpl;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v4, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;

    .line 50
    .line 51
    invoke-direct {v4, v6}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuitySessionManagerImpl;

    .line 55
    .line 56
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuitySessionManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionMessageManagerImpl;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/streaming/ContinuitySessionStreamManagerImpl;Lcom/samsung/android/mcf/continuity/impl/common/ContinuitySession;Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityPreConnectionManager;)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->mContinuitySessionManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuitySessionManagerImpl;

    .line 60
    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 68
    .line 69
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityRpcManagerImpl;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityRpcManagerImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->mContinuityRpcManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityRpcManagerImpl;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 77
    .line 78
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityMyDeviceSdkHelperImpl;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityMyDeviceSdkHelperImpl;-><init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->mContinuityMyDeviceSdkHelperImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityMyDeviceSdkHelperImpl;

    .line 84
    .line 85
    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(ILandroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z
    .locals 0

    .line 1
    invoke-virtual {p3, p0, p4, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->registerCallback(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->handleServiceConnected(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method protected final destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;->destroy()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->mContinuitySessionManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuitySessionManagerImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuitySessionManagerImpl;->destroy()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->mContinuityMyDeviceSdkHelperImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityMyDeviceSdkHelperImpl;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityMyDeviceSdkHelperImpl;->destroy()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->mContinuityRpcManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityRpcManagerImpl;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityRpcManagerImpl;->destroy()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->isServiceConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "invalid state "

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->getServiceState()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "ContinuityAdapterImpl"

    .line 27
    .line 28
    const-string v2, "ContinuityMyDeviceDiscoveryManager"

    .line 29
    .line 30
    invoke-static {v0, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object p0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;->mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityDiscoveryManagerImpl;

    .line 36
    .line 37
    :goto_0
    if-eqz p0, :cond_1

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    return-object v1
.end method

.method protected final isMainControllerStarted(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;)Z
    .locals 11

    .line 1
    const/4 v1, 0x0

    .line 2
    const-string v2, "RemoteException "

    .line 3
    .line 4
    const-string v3, "ContinuityCommandManager"

    .line 5
    .line 6
    const-string v4, "isMainControllerStarted"

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCommandManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 18
    .line 19
    const/16 v5, 0xbba

    .line 20
    .line 21
    iput v5, v0, Landroid/os/Message;->what:I

    .line 22
    .line 23
    sget v5, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 24
    .line 25
    new-instance v5, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v0, v5}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v6, "SecurityException "

    .line 45
    .line 46
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v3, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v3, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    :goto_2
    new-instance v5, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;

    .line 84
    .line 85
    move-object v9, p0

    .line 86
    move v6, p1

    .line 87
    move-object v10, p2

    .line 88
    move-object v7, p3

    .line 89
    move-object v8, p4

    .line 90
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$1;-><init>(ILandroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v7}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->getServiceVersionCode(Landroid/content/Context;)J

    .line 94
    .line 95
    .line 96
    move-result-wide p0

    .line 97
    const-wide/32 p2, 0x7270e0c

    .line 98
    .line 99
    .line 100
    cmp-long p0, p0, p2

    .line 101
    .line 102
    const-string p1, "ContinuityAdapterImpl"

    .line 103
    .line 104
    if-ltz p0, :cond_1

    .line 105
    .line 106
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    iput v6, p0, Landroid/os/Message;->arg1:I

    .line 111
    .line 112
    const/16 p2, 0x7e3

    .line 113
    .line 114
    iput p2, p0, Landroid/os/Message;->what:I

    .line 115
    .line 116
    sget p2, Lcom/samsung/android/mcf/continuity/common/Utils;->$r8$clinit:I

    .line 117
    .line 118
    new-instance p2, Landroid/os/Bundle;

    .line 119
    .line 120
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    .line 125
    const-string p3, "KEY_CALLBACK"

    .line 126
    .line 127
    invoke-virtual {p2, p3, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v10, p0}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommand(Landroid/os/Message;)I

    .line 131
    .line 132
    .line 133
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    if-nez p0, :cond_1

    .line 135
    .line 136
    const-string p0, "main controller is not started -> try sync cloud"

    .line 137
    .line 138
    invoke-static {p1, v4, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v1

    .line 142
    :catch_2
    move-exception v0

    .line 143
    move-object p0, v0

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const-string p2, "syncCloud"

    .line 161
    .line 162
    invoke-static {v3, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_1
    const-string p0, "fail to try sync cloud"

    .line 166
    .line 167
    invoke-static {p1, v4, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9, v7}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$$ExternalSyntheticLambda0;

    .line 174
    .line 175
    invoke-direct {p0, v8, v1}, Lcom/samsung/android/mcf/continuity/impl/mydevice/ContinuityAdapterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractAdapter$ServiceStateListener;I)V

    .line 176
    .line 177
    .line 178
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)V

    .line 179
    .line 180
    .line 181
    return v1
.end method
