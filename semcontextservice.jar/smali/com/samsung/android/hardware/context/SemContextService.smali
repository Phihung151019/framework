.class public Lcom/samsung/android/hardware/context/SemContextService;
.super Lcom/samsung/android/hardware/context/ISemContextService$Stub;
.source "SemContextService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;,
        Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;,
        Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;,
        Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;,
        Lcom/samsung/android/hardware/context/SemContextService$Service;,
        Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;,
        Lcom/samsung/android/hardware/context/SemContextService$Listener;,
        Lcom/samsung/android/hardware/context/SemContextService$EventInfo;
    }
.end annotation


# static fields
.field private static final FEATURE_SEMCONTEXT_LITE:Ljava/lang/String; = "com.sec.feature.scontext_lite"

.field private static final FEATURE_SENSORHUB:Ljava/lang/String; = "com.sec.feature.sensorhub"

.field private static final INTENT_ACTIVITY_RECOGNIZER:Ljava/lang/String; = "android.intent.action.ACTIVITY_RECOGNIZER"

.field public static final MSG_SEND_LAST_EVENT:I = 0x55

.field private static final SENSOR_PERMISSION_ACTIVITY_RECOGNITION:Ljava/lang/String; = "android.permission.ACTIVITY_RECOGNITION"

.field private static final TAG:Ljava/lang/String; = "SemContextService"

.field private static final TYPE_SCONTEXT:I = 0x10032


# instance fields
.field private final NS_FLP_UID:I

.field private mAccSensorVersion:I

.field private final mActionMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowList:Lcom/samsung/android/hardware/context/SemContextConnectionList;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAttributionContext:Landroid/content/Context;

.field mAvailableServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;

.field private final mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field public mPrevRegistrations:Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;

.field private final mProviderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/hardware/context/provider/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorHubLastEventTime:J

.field private final mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/hardware/context/SemContextService$Service;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidIdleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionMap(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mActionMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/SemContextService;)Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mHandler:Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerManager(Lcom/samsung/android/hardware/context/SemContextService;)Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMutex(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProviderMap(Lcom/samsung/android/hardware/context/SemContextService;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mProviderMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorHubLastEventTime(Lcom/samsung/android/hardware/context/SemContextService;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mSensorHubLastEventTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceMap(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidIdleList(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mUidIdleList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSensorHubLastEventTime(Lcom/samsung/android/hardware/context/SemContextService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mSensorHubLastEventTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$misFreeFallAlwaysOn(Lcom/samsung/android/hardware/context/SemContextService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextService;->isFreeFallAlwaysOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRegistered(Lcom/samsung/android/hardware/context/SemContextService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextService;->isRegistered(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .line 116
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/hardware/context/SemContextService;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/hardware/context/SemContextService;->mActionMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/hardware/context/SemContextService;->mProviderMap:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;-><init>(Lcom/samsung/android/hardware/context/SemContextService;)V

    iput-object v0, v1, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAvailableServiceMap:Ljava/util/Map;

    .line 93
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/samsung/android/hardware/context/SemContextService;->mHandler:Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;

    .line 95
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/samsung/android/hardware/context/SemContextService;->mSensorHubLastEventTime:J

    .line 96
    const/4 v3, 0x0

    iput v3, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAccSensorVersion:I

    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/samsung/android/hardware/context/SemContextService;->mUidIdleList:Ljava/util/ArrayList;

    .line 101
    new-instance v4, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;

    invoke-direct {v4}, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;-><init>()V

    iput-object v4, v1, Lcom/samsung/android/hardware/context/SemContextService;->mPrevRegistrations:Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;

    .line 103
    const/16 v4, 0x1395

    iput v4, v1, Lcom/samsung/android/hardware/context/SemContextService;->NS_FLP_UID:I

    .line 105
    new-instance v4, Lcom/samsung/android/hardware/context/SemContextService$1;

    invoke-direct {v4, v1}, Lcom/samsung/android/hardware/context/SemContextService$1;-><init>(Lcom/samsung/android/hardware/context/SemContextService;)V

    iput-object v4, v1, Lcom/samsung/android/hardware/context/SemContextService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1473
    new-instance v4, Lcom/samsung/android/hardware/context/SemContextService$3;

    invoke-direct {v4, v1}, Lcom/samsung/android/hardware/context/SemContextService$3;-><init>(Lcom/samsung/android/hardware/context/SemContextService;)V

    iput-object v4, v1, Lcom/samsung/android/hardware/context/SemContextService;->mUidObserver:Landroid/app/IUidObserver;

    .line 117
    iput-object v2, v1, Lcom/samsung/android/hardware/context/SemContextService;->mContext:Landroid/content/Context;

    .line 118
    const-string v4, "SemContextService"

    invoke-virtual {v2, v4}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAttributionContext:Landroid/content/Context;

    .line 119
    iget-object v5, v1, Lcom/samsung/android/hardware/context/SemContextService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 120
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, v1, Lcom/samsung/android/hardware/context/SemContextService;->mContext:Landroid/content/Context;

    const-string v7, "sensor"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    .line 122
    .local v6, "mSensorManager":Landroid/hardware/SensorManager;
    const-string v7, "com.sec.feature.scontext_lite"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "com.sec.feature.sensorhub"

    const/4 v10, 0x1

    if-nez v8, :cond_1

    .line 123
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v19, v5

    goto/16 :goto_6

    .line 124
    :cond_1
    :goto_0
    new-instance v8, Landroid/os/HandlerThread;

    const-string v11, "scontext"

    invoke-direct {v8, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 125
    .local v8, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 126
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    .line 127
    .local v11, "looper":Landroid/os/Looper;
    if-nez v11, :cond_2

    .line 128
    const-string v0, "SemContextService : The looper is null."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 131
    :cond_2
    new-instance v12, Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;

    invoke-direct {v12, v1, v11}, Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;-><init>(Lcom/samsung/android/hardware/context/SemContextService;Landroid/os/Looper;)V

    iput-object v12, v1, Lcom/samsung/android/hardware/context/SemContextService;->mHandler:Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;

    .line 132
    new-instance v12, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v12, v10}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v12, v1, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 136
    const/4 v12, 0x0

    .line 137
    .local v12, "sctxSensor":Landroid/hardware/Sensor;
    const/4 v13, 0x0

    .line 139
    .local v13, "serviceFromDevice":Z
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v14, "filter":Landroid/content/IntentFilter;
    const-string v15, "android.intent.action.ACTIVITY_RECOGNIZER"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v15, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAttributionContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/samsung/android/hardware/context/SemContextService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v10, v1, Lcom/samsung/android/hardware/context/SemContextService;->mHandler:Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;

    const/16 v21, 0x2

    const/16 v19, 0x0

    move-object/from16 v16, v0

    move-object/from16 v20, v10

    move-object/from16 v18, v14

    .end local v14    # "filter":Landroid/content/IntentFilter;
    .local v18, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {v15 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 143
    if-eqz v6, :cond_3

    .line 145
    const v0, 0x10032

    invoke-virtual {v6, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v12

    .line 146
    if-eqz v12, :cond_3

    .line 147
    invoke-virtual {v12}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_3

    .line 148
    const/4 v13, 0x1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read service list from the device. Sctx ver. = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Landroid/hardware/Sensor;->getVersion()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_3
    const/4 v10, 0x0

    .line 156
    .local v10, "serviceListFromDevice":[I
    if-eqz v13, :cond_5

    .line 158
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;

    invoke-direct {v0, v12}, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;-><init>(Landroid/hardware/Sensor;)V

    move-object v14, v0

    .line 159
    .local v14, "svcListChecker":Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;
    invoke-virtual {v14, v3}, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->reset(Z)V

    .line 160
    const/4 v0, 0x3

    iget-object v15, v1, Lcom/samsung/android/hardware/context/SemContextService;->mHandler:Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;

    invoke-virtual {v6, v14, v12, v0, v15}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 162
    :try_start_0
    invoke-virtual {v14}, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->request()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    const-string v0, "Request callback service list from the device."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->reset(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {v6, v14}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 168
    nop

    .line 169
    invoke-virtual {v14}, Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;->getResult()[I

    move-result-object v10

    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    invoke-virtual {v6, v14}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 168
    throw v0

    .line 172
    .end local v14    # "svcListChecker":Lcom/samsung/android/hardware/context/SemContextService$ServiceListChecker;
    :cond_5
    :goto_1
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 173
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "version":I
    if-eqz v10, :cond_6

    .line 175
    const-string v3, " Parse a service list from the device."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v3, Lcom/samsung/android/hardware/context/SemContextVersion;

    invoke-direct {v3, v10}, Lcom/samsung/android/hardware/context/SemContextVersion;-><init>([I)V

    .local v3, "contextVersion":Lcom/samsung/android/hardware/context/SemContextVersion;
    goto :goto_2

    .line 178
    .end local v3    # "contextVersion":Lcom/samsung/android/hardware/context/SemContextVersion;
    :cond_6
    new-instance v3, Lcom/samsung/android/hardware/context/SemContextVersion;

    const/4 v7, 0x1

    invoke-direct {v3, v0, v7}, Lcom/samsung/android/hardware/context/SemContextVersion;-><init>(IZ)V

    .restart local v3    # "contextVersion":Lcom/samsung/android/hardware/context/SemContextVersion;
    goto :goto_2

    .line 181
    .end local v0    # "version":I
    .end local v3    # "contextVersion":Lcom/samsung/android/hardware/context/SemContextVersion;
    :cond_7
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 182
    .restart local v0    # "version":I
    new-instance v7, Lcom/samsung/android/hardware/context/SemContextVersion;

    invoke-direct {v7, v0, v3}, Lcom/samsung/android/hardware/context/SemContextVersion;-><init>(IZ)V

    move-object v3, v7

    .line 185
    .restart local v3    # "contextVersion":Lcom/samsung/android/hardware/context/SemContextVersion;
    :goto_2
    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextVersion;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v7

    iput-object v7, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAvailableServiceMap:Ljava/util/Map;

    .line 186
    iget-object v7, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAvailableServiceMap:Ljava/util/Map;

    if-nez v7, :cond_8

    return-void

    .line 189
    :cond_8
    new-instance v7, Lcom/samsung/android/hardware/context/SemContextService$2;

    invoke-direct {v7, v1}, Lcom/samsung/android/hardware/context/SemContextService$2;-><init>(Lcom/samsung/android/hardware/context/SemContextService;)V

    .line 210
    .local v7, "eventListener":Lcom/samsung/android/hardware/context/provider/EventListener;
    new-instance v9, Lcom/samsung/android/hardware/context/SemContextProvider;

    iget-object v14, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAvailableServiceMap:Ljava/util/Map;

    invoke-direct {v9, v2, v14, v7, v0}, Lcom/samsung/android/hardware/context/SemContextProvider;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/samsung/android/hardware/context/provider/EventListener;I)V

    .line 212
    .local v9, "contextProvider":Lcom/samsung/android/hardware/context/SemContextProvider;
    iget-object v14, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAvailableServiceMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 213
    .local v15, "next":I
    move/from16 v16, v0

    .end local v0    # "version":I
    .local v16, "version":I
    invoke-virtual {v9, v15}, Lcom/samsung/android/hardware/context/SemContextProvider;->getProvider(I)Lcom/samsung/android/hardware/context/provider/Provider;

    move-result-object v0

    .line 214
    .local v0, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-nez v0, :cond_9

    return-void

    .line 215
    :cond_9
    move-object/from16 v17, v3

    .end local v3    # "contextVersion":Lcom/samsung/android/hardware/context/SemContextVersion;
    .local v17, "contextVersion":Lcom/samsung/android/hardware/context/SemContextVersion;
    new-instance v3, Lcom/samsung/android/hardware/context/SemContextService$Service;

    invoke-direct {v3, v1, v15}, Lcom/samsung/android/hardware/context/SemContextService$Service;-><init>(Lcom/samsung/android/hardware/context/SemContextService;I)V

    .line 216
    .local v3, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    move-object/from16 v19, v5

    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, v1, Lcom/samsung/android/hardware/context/SemContextService;->mProviderMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v15, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 217
    iget-object v5, v1, Lcom/samsung/android/hardware/context/SemContextService;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v20, v7

    .end local v7    # "eventListener":Lcom/samsung/android/hardware/context/provider/EventListener;
    .local v20, "eventListener":Lcom/samsung/android/hardware/context/provider/EventListener;
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/16 v5, 0x1b

    if-ne v15, v5, :cond_b

    .line 219
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    const/4 v7, 0x5

    if-gt v5, v7, :cond_a

    .line 220
    iget-object v7, v1, Lcom/samsung/android/hardware/context/SemContextService;->mActionMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v21, v3

    .end local v3    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .local v21, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v22, v8

    .end local v8    # "handlerThread":Landroid/os/HandlerThread;
    .local v22, "handlerThread":Landroid/os/HandlerThread;
    new-instance v8, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;

    invoke-direct {v8, v1, v5, v0}, Lcom/samsung/android/hardware/context/SemContextService$ActionInfo;-><init>(Lcom/samsung/android/hardware/context/SemContextService;ILcom/samsung/android/hardware/context/provider/Provider;)V

    invoke-virtual {v7, v3, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v21

    move-object/from16 v8, v22

    goto :goto_4

    .end local v21    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .end local v22    # "handlerThread":Landroid/os/HandlerThread;
    .restart local v3    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .restart local v8    # "handlerThread":Landroid/os/HandlerThread;
    :cond_a
    move-object/from16 v21, v3

    move-object/from16 v22, v8

    .end local v3    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .end local v8    # "handlerThread":Landroid/os/HandlerThread;
    .restart local v21    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .restart local v22    # "handlerThread":Landroid/os/HandlerThread;
    goto :goto_5

    .line 218
    .end local v5    # "j":I
    .end local v21    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .end local v22    # "handlerThread":Landroid/os/HandlerThread;
    .restart local v3    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .restart local v8    # "handlerThread":Landroid/os/HandlerThread;
    :cond_b
    move-object/from16 v21, v3

    move-object/from16 v22, v8

    .line 223
    .end local v0    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    .end local v3    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .end local v8    # "handlerThread":Landroid/os/HandlerThread;
    .end local v15    # "next":I
    .restart local v22    # "handlerThread":Landroid/os/HandlerThread;
    :goto_5
    move/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v22

    goto :goto_3

    .line 212
    .end local v16    # "version":I
    .end local v17    # "contextVersion":Lcom/samsung/android/hardware/context/SemContextVersion;
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "eventListener":Lcom/samsung/android/hardware/context/provider/EventListener;
    .end local v22    # "handlerThread":Landroid/os/HandlerThread;
    .local v0, "version":I
    .local v3, "contextVersion":Lcom/samsung/android/hardware/context/SemContextVersion;
    .local v5, "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "eventListener":Lcom/samsung/android/hardware/context/provider/EventListener;
    .restart local v8    # "handlerThread":Landroid/os/HandlerThread;
    :cond_c
    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    .line 226
    .end local v0    # "version":I
    .end local v3    # "contextVersion":Lcom/samsung/android/hardware/context/SemContextVersion;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "eventListener":Lcom/samsung/android/hardware/context/provider/EventListener;
    .end local v8    # "handlerThread":Landroid/os/HandlerThread;
    .end local v9    # "contextProvider":Lcom/samsung/android/hardware/context/SemContextProvider;
    .end local v10    # "serviceListFromDevice":[I
    .end local v11    # "looper":Landroid/os/Looper;
    .end local v12    # "sctxSensor":Landroid/hardware/Sensor;
    .end local v13    # "serviceFromDevice":Z
    .end local v18    # "filter":Landroid/content/IntentFilter;
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    :goto_6
    if-eqz v6, :cond_d

    .line 227
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 228
    .local v0, "mAccSensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_d

    .line 229
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v3

    iput v3, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAccSensorVersion:I

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccSensorVersion : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAccSensorVersion:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0    # "mAccSensor":Landroid/hardware/Sensor;
    :cond_d
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/hardware/context/SemContextService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v5, 0xe

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-interface {v0, v3, v5, v7, v8}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    goto :goto_7

    .line 238
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextConnectionList;

    invoke-direct {v0, v2}, Lcom/samsung/android/hardware/context/SemContextConnectionList;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAllowList:Lcom/samsung/android/hardware/context/SemContextConnectionList;

    .line 243
    iget-object v0, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAttributionContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/samsung/android/hardware/context/SemContextService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 245
    const-string v0, "SemContextService()"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method private checkPermission(ILjava/lang/String;)Z
    .locals 10
    .param p1, "serviceType"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 560
    const/4 v0, -0x1

    const-string v1, "SemContextService"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPT_SERVICE_ALL does not support. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return v2

    .line 565
    :cond_0
    const/4 v0, 0x2

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_3

    const/16 v0, 0x22

    if-eq p1, v0, :cond_3

    const/16 v0, 0x35

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 606
    :cond_1
    const/16 v0, 0x36

    if-ne p1, v0, :cond_2

    .line 607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v4, 0x1395

    if-eq v0, v4, :cond_2

    const-string v0, "com.samsung.semcontext_test"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device Activity Detector : Client is NOT NS-FLP, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return v2

    .line 613
    :cond_2
    return v3

    .line 577
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 580
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v5, "android:activity_recognition"

    invoke-virtual {v4, v5, v0, p2}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 582
    .local v4, "appOpMode":I
    if-nez v4, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v2

    .line 583
    .local v5, "appOpAllowed":Z
    :goto_1
    const/16 v6, 0x1d

    .line 585
    .local v6, "targetSdk":I
    const-string v7, " "

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 587
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/hardware/context/SemContextService;->mAttributionContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 588
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v8

    .line 591
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_2

    .line 589
    :catch_0
    move-exception v7

    .line 590
    .local v7, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed looking up ApplicationInfo for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v7    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/hardware/context/SemContextService;->mAttributionContext:Landroid/content/Context;

    const-string v8, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6

    .line 596
    return v3

    .line 598
    :cond_6
    if-eqz v5, :cond_7

    const/16 v7, 0x1d

    if-ge v6, v7, :cond_7

    .line 599
    return v3

    .line 601
    :cond_7
    const-string v3, "Permission activity recognition should be required."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v2
.end method

.method private isFreeFallAlwaysOn()Z
    .locals 2

    .line 1020
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mAccSensorVersion:I

    const/16 v1, 0x3e3c

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mAccSensorVersion:I

    const/16 v1, 0x3e3d

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1022
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1021
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isRegistered(I)Z
    .locals 2
    .param p1, "serviceType"    # I

    .line 664
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextService$Service;

    .line 666
    .local v0, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 667
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextService$Service;->isListenerEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method


# virtual methods
.method public changeParameters(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "serviceType"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    const-string v0, "unlock : changeParameters"

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return v1

    .line 353
    :cond_0
    const-string v2, "lock : changeParameters"

    const-string v3, "SemContextService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService;->mProviderMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/provider/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    .local v2, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-nez v2, :cond_1

    .line 375
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 376
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v1

    .line 358
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v4, p1}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->get(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/SemContextService$Listener;

    move-result-object v4

    .line 359
    .local v4, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-nez v4, :cond_2

    .line 360
    const-string v5, "    .changeParameters() : This listener was not registered "

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    nop

    .line 375
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 376
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return v1

    .line 363
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 364
    :try_start_2
    invoke-virtual {p3, v1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v1

    .line 365
    .local v1, "pedometerattribute":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 366
    const-string v5, "exercise_mode"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mExerciseMode:I

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    .changeParameters() : exercise mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/samsung/android/hardware/context/SemContextService$Listener;->mExerciseMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local v1    # "pedometerattribute":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v4, p2}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->addServiceLocked(I)V

    .line 372
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->put(Landroid/os/IBinder;Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    .line 373
    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/hardware/context/provider/Provider;->setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    .end local v2    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    .end local v4    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 376
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    nop

    .line 378
    const/4 v0, 0x1

    return v0

    .line 375
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 376
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 624
    const-string v0, "android.permission.DUMP"

    const-string v1, "unlock : dump"

    const-string v2, "lock : dump"

    const-string v3, "SemContextService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 627
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService;->mAttributionContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump SemContextService from from pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 630
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " without permission "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 659
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-void

    .line 635
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "===== SemContext All Available Service List ====\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/SemContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v2

    .line 638
    .local v2, "allServices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 639
    .local v5, "next":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    nop

    .end local v5    # "next":I
    goto :goto_0

    .line 641
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 644
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->getInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    const-string v4, "===== SemContext All Service List ====="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextService;->mProviderMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 648
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextService;->mProviderMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hardware/context/provider/Provider;

    .line 649
    .local v5, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-eqz v5, :cond_2

    .line 650
    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/provider/Provider;->getLastEvent()Ljava/lang/String;

    move-result-object v6

    .line 651
    .local v6, "result":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    .end local v5    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    .end local v6    # "result":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 655
    .end local v4    # "i":I
    :cond_3
    const-string v4, "===== SemContext Previous Registrations ====="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mPrevRegistrations:Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;

    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "allServices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 659
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    nop

    .line 661
    return-void

    .line 658
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 659
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    throw v0
.end method

.method public getAvailableServiceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService;->mAvailableServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCurrentServiceList()Ljava/lang/String;
    .locals 4

    .line 546
    const-string v0, "unlock : getCurrentServiceList"

    const-string v1, "lock : getCurrentServiceList"

    const-string v2, "SemContextService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->getServiceList()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    .local v1, "list":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 553
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    nop

    .line 556
    return-object v1

    .line 552
    .end local v1    # "list":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 553
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    throw v1
.end method

.method public initializeService(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "serviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    const-string v0, "unlock : initializeService"

    const-string v1, "lock : initializeService"

    const-string v2, "SemContextService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mProviderMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/provider/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .local v1, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-nez v1, :cond_0

    .line 416
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 396
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->get(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/SemContextService$Listener;

    move-result-object v3

    .line 397
    .local v3, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-nez v3, :cond_1

    .line 398
    const-string v4, "    .initializeService() : This listener was not registered."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void

    .line 401
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hardware/context/SemContextService$Service;

    .line 402
    .local v4, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    if-nez v4, :cond_2

    .line 403
    const-string v5, "    .initializeService() : The service is null."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 406
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/provider/Provider;->remove()V

    .line 407
    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/SemContextService$Service;->getAttribute()Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v5

    .line 408
    .local v5, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/provider/Provider;->add()V

    .line 409
    if-eqz v5, :cond_3

    .line 410
    invoke-virtual {v1, p2, v5}, Lcom/samsung/android/hardware/context/provider/Provider;->setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 412
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   .initializeService() : service = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 414
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 412
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    nop

    .end local v1    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    .end local v3    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    .end local v4    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .end local v5    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    nop

    .line 419
    return-void

    .line 416
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    throw v1
.end method

.method public registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;Ljava/lang/String;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "serviceType"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    const-string v0, "unlock : registerCallback"

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    invoke-direct {p0, p2, p4}, Lcom/samsung/android/hardware/context/SemContextService;->checkPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    const-string v1, "lock : registerCallback"

    const-string v2, "SemContextService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->get(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/SemContextService$Listener;

    move-result-object v1

    .line 264
    .local v1, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-nez v1, :cond_1

    .line 265
    new-instance v3, Lcom/samsung/android/hardware/context/SemContextService$Listener;

    invoke-direct {v3, p0, p1, p4}, Lcom/samsung/android/hardware/context/SemContextService$Listener;-><init>(Lcom/samsung/android/hardware/context/SemContextService;Landroid/os/IBinder;Ljava/lang/String;)V

    move-object v1, v3

    .line 266
    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 268
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/context/SemContextService$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .local v3, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    if-nez v3, :cond_2

    .line 276
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 277
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 270
    :cond_2
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->addServiceLocked(I)V

    .line 271
    invoke-virtual {v3, v1, p3}, Lcom/samsung/android/hardware/context/SemContextService$Service;->addListenerLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;Lcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 272
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v4, p1, v1}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->put(Landroid/os/IBinder;Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    .line 273
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    const-string v5, "registerCallback"

    invoke-virtual {v4, p1, v5, p2}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    .end local v1    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    .end local v3    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 277
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    nop

    .line 279
    return-void

    .line 276
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 277
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    throw v1

    .line 259
    :cond_3
    :goto_0
    return-void
.end method

.method public requestHistoryData(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "serviceType"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    const-string v0, "unlock : requestHistoryData"

    const-string v1, "lock : requestHistoryData"

    const-string v2, "SemContextService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextService;->checkPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mProviderMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/provider/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .local v1, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-nez v1, :cond_1

    .line 504
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 505
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 481
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->get(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/SemContextService$Listener;

    move-result-object v3

    .line 482
    .local v3, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-eqz v3, :cond_2

    .line 483
    const-string v4, "    .requestHistoryData() : This listener is currently using other services. You must create a new listener to request history data."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 505
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void

    .line 487
    :cond_2
    :try_start_2
    new-instance v4, Lcom/samsung/android/hardware/context/SemContextService$Listener;

    invoke-direct {v4, p0, p1, p3}, Lcom/samsung/android/hardware/context/SemContextService$Listener;-><init>(Lcom/samsung/android/hardware/context/SemContextService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 488
    .end local v3    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    .local v4, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    const/4 v3, 0x0

    invoke-interface {p1, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 489
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/context/SemContextService$Service;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    .local v3, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    if-nez v3, :cond_3

    .line 504
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 505
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void

    .line 493
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextService$Service;->getAttribute()Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v5

    .line 494
    .local v5, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {v4, p2}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->addServiceLocked(I)V

    .line 495
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hardware/context/SemContextService$Service;->addListenerLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;Lcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 496
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v6, p1, v4}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->put(Landroid/os/IBinder;Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    .line 497
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    const-string v7, "registerCallback (for history data)"

    invoke-virtual {v6, p1, v7, p2}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 500
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/provider/Provider;->requestHistoryData()V

    .line 501
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   .requestHistoryData() : service = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 502
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 501
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    nop

    .end local v1    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    .end local v3    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .end local v4    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    .end local v5    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 505
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    nop

    .line 507
    return-void

    .line 504
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 505
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    throw v1
.end method

.method public requestToUpdate(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "serviceType"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    const-string v0, "unlock : requestToUpdate"

    const-string v1, "lock : requestToUpdate"

    const-string v2, "SemContextService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextService;->checkPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mProviderMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/provider/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    .local v1, "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    if-nez v1, :cond_1

    .line 460
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 461
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void

    .line 448
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/context/SemContextService$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    .local v3, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    if-nez v3, :cond_2

    .line 460
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 461
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void

    .line 452
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v4, p1}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->get(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/SemContextService$Listener;

    move-result-object v4

    .line 453
    .local v4, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-nez v4, :cond_3

    .line 454
    const-string v5, "    .requestToUpdate() : This listener is not registered."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 461
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void

    .line 457
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/provider/Provider;->requestToUpdate()V

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    .requestToUpdate() : service = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    nop

    .end local v1    # "provider":Lcom/samsung/android/hardware/context/provider/Provider;
    .end local v3    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .end local v4    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 461
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    nop

    .line 463
    return-void

    .line 460
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 461
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    throw v1
.end method

.method public setReferenceData(II[B)Z
    .locals 5
    .param p1, "serviceType"    # I
    .param p2, "data_type"    # I
    .param p3, "data"    # [B

    .line 519
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 520
    :cond_0
    const-string v1, "lock : setReferenceData"

    const-string v2, "SemContextService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 523
    const/16 v1, 0x30

    const-string v3, "unlock : setReferenceData"

    if-ne p1, v1, :cond_1

    .line 524
    nop

    .line 534
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 535
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return v0

    .line 526
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextService$Service;

    .line 527
    .local v1, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    if-nez v1, :cond_2

    .line 528
    const-string v4, "    .setReferenceData() : The service is null."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    nop

    .line 534
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 535
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return v0

    .line 531
    :cond_2
    :try_start_1
    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextService$Service;->setReferenceData(I[B)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    .end local v1    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    .local v0, "res":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 535
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    nop

    .line 537
    return v0

    .line 534
    .end local v0    # "res":Z
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 535
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    throw v0
.end method

.method public unregisterCallback(Landroid/os/IBinder;I)Z
    .locals 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "serviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const-string v0, "unlock : unregisterCallback"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 292
    :cond_0
    const-string v2, "lock : unregisterCallback"

    const-string v3, "SemContextService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 294
    const/4 v2, 0x0

    .line 296
    .local v2, "isDeletableListener":Z
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v4, p1}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->get(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/SemContextService$Listener;

    move-result-object v4

    .line 297
    .local v4, "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    if-nez v4, :cond_1

    .line 298
    const-string v5, "    .unregisterCallback() : This listener was not registered "

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    nop

    .line 335
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v1

    .line 301
    :cond_1
    const/4 v5, -0x1

    if-ne p2, v5, :cond_6

    .line 302
    :try_start_1
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 303
    .local v5, "serviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/Integer;>;"
    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/hardware/context/SemContextService$Listener;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 304
    .local v7, "type":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 305
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v7    # "type":I
    :cond_2
    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 308
    .restart local v7    # "type":I
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextService;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hardware/context/SemContextService$Service;

    .line 309
    .local v8, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    if-eqz v8, :cond_4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 310
    invoke-virtual {v4, v7}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->removeServiceLocked(I)V

    .line 311
    invoke-virtual {v8, v4}, Lcom/samsung/android/hardware/context/SemContextService$Service;->removeListenerLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    .line 313
    .end local v7    # "type":I
    .end local v8    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    :cond_4
    goto :goto_1

    .line 314
    :cond_5
    const/4 v2, 0x1

    .line 315
    .end local v5    # "serviceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 316
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextService;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hardware/context/SemContextService$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    .local v5, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    if-nez v5, :cond_7

    .line 335
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v1

    .line 318
    :cond_7
    :try_start_2
    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/hardware/context/SemContextService$Listener;)Ljava/util/Set;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 319
    invoke-virtual {v4, p2}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->removeServiceLocked(I)V

    .line 321
    :cond_8
    invoke-virtual {v5, v4}, Lcom/samsung/android/hardware/context/SemContextService$Service;->removeListenerLocked(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    .line 322
    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/hardware/context/SemContextService$Listener;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 323
    const/4 v2, 0x1

    .line 326
    .end local v5    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    const-string v6, "unregisterCallback"

    invoke-virtual {v5, p1, v6, p2}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 327
    if-eqz v2, :cond_a

    .line 328
    invoke-interface {p1, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 329
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 331
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mListenerManager:Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/hardware/context/SemContextService$ListenerManager;->put(Landroid/os/IBinder;Lcom/samsung/android/hardware/context/SemContextService$Listener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    .end local v4    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    nop

    .line 338
    return v2

    .line 335
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    throw v1
.end method
