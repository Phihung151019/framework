.class public Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;
.super Ljava/lang/Object;
.source "SemInputExternalListener.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;


# static fields
.field private static final DEX_LISTENER:Ljava/lang/String; = "DexListenerWrapper"

.field private static final DISPLAY_LISTENER:Ljava/lang/String; = "DisplayListenerWrapper"

.field private static final DISPLAY_STATE_LISTENER:Ljava/lang/String; = "DisplayStateListenerWrapper"

.field private static final EXTERNAL_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.hardware.secinputdev.external."

.field private static final FOLD_STATE_LISTENER:Ljava/lang/String; = "FoldStateListenerWrapper"

.field private static final SEM_UEVENT_OBSERVER:Ljava/lang/String; = "SemUEventObserverWrapper"

.field private static final SENSOR_PROX_LP_LISTENER:Ljava/lang/String; = "SensorProxLpScanListenerWrapper"

.field private static final SENSOR_WATCH_LISTENER:Ljava/lang/String; = "SensorListenerWatchWrapper"

.field private static final TAG:Ljava/lang/String; = "SemInputExternalListener"


# instance fields
.field private context:Landroid/content/Context;

.field private dumpLog:Ljava/lang/StringBuilder;

.field private mainHandler:Landroid/os/Handler;

.field private final registeredList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceListener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

.field private final supportList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->registeredList:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$1;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->supportList:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->registeredList:Ljava/util/HashMap;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->context:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->mainHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->dumpLog:Ljava/lang/StringBuilder;

    .line 133
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$2;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->serviceListener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->mainHandler:Landroid/os/Handler;

    .line 43
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    if-eqz v0, :cond_0

    .line 44
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_AWD:Z

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->supportList:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_SENSOR_WATCH:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v2, "SensorListenerWatchWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->supportList:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v2, "DisplayListenerWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->supportList:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->OBSERVER_UEVENT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v2, "SemUEventObserverWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->supportList:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_FOLD_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v2, "FoldStateListenerWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->supportList:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DEX:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v2, "DexListenerWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->supportList:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_PROX_LP_SCAN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v2, "SensorProxLpScanListenerWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method private createListener(Ljava/lang/String;)Z
    .locals 12
    .param p1, "className"    # Ljava/lang/String;

    .line 98
    const-string v0, ": "

    const-string v1, "Exception at "

    const-string v2, "SemInputExternalListener"

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 99
    const-string v0, "createListener: className is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v3

    .line 103
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v4, "logBuffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 106
    .local v5, "result":Z
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.samsung.android.hardware.secinputdev.external."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 107
    .local v6, "classObject":Ljava/lang/Class;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    const-class v8, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Landroid/os/Handler;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 108
    .local v7, "constructor":Ljava/lang/reflect/Constructor;
    iget-object v8, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->serviceListener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    iget-object v10, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->mainHandler:Landroid/os/Handler;

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hardware/secinputdev/external/ExternalService;

    .line 109
    .local v8, "instance":Lcom/samsung/android/hardware/secinputdev/external/ExternalService;
    const-string v9, "register"

    new-array v10, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 111
    .local v9, "method":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v9, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    .local v3, "ret":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 113
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " NOT registered: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_1
    const/4 v5, 0x1

    .line 124
    .end local v3    # "ret":Ljava/lang/String;
    .end local v6    # "classObject":Ljava/lang/Class;
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v8    # "instance":Lcom/samsung/android/hardware/secinputdev/external/ExternalService;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 121
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 120
    .local v6, "throwable":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v6    # "throwable":Ljava/lang/Throwable;
    goto :goto_0

    .line 116
    :catch_2
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 126
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->dumpLog:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_2
    return v5
.end method


# virtual methods
.method public getLog()Ljava/lang/String;
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->dumpLog:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "log":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->dumpLog:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->dumpLog:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 63
    return-object v0
.end method

.method public getSupportList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->supportList:Ljava/util/Map;

    return-object v0
.end method

.method public registerBroadcastReceiver(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;)Z
    .locals 1
    .param p1, "event"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;
    .param p2, "receiver"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public registerServiceListener(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;)Z
    .locals 5
    .param p1, "event"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;
    .param p2, "listener"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->supportList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SemInputExternalListener"

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Not Supported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->registeredList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 79
    .local v0, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;>;"
    const/4 v2, 0x0

    .line 80
    .local v2, "created":Z
    if-nez v0, :cond_1

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 82
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->supportList:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->createListener(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 84
    :cond_1
    const/4 v2, 0x1

    .line 86
    :goto_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 91
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->registeredList:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerServiceListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v2
.end method
