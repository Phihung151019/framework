.class public Lcom/samsung/android/contextaware/manager/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"


# instance fields
.field private final mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/utilbundle/IUtilManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "version"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "sensorHubParserConcreteCreator":Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;

    .line 72
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3, p3}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3, p3}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    .line 73
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v3, v1

    .line 77
    .local v3, "creator":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v6

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "looper":Landroid/os/Looper;
    .end local p3    # "version":I
    .local v4, "context":Landroid/content/Context;
    .local v5, "looper":Landroid/os/Looper;
    .local v7, "version":I
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    .line 79
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    iget-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/manager/ContextManager;->initializeUtil(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method private initializeUtil(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 315
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/utilbundle/IUtilManager;

    .line 316
    .local v1, "i":Lcom/samsung/android/contextaware/utilbundle/IUtilManager;
    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/utilbundle/IUtilManager;->initializeManager(Landroid/content/Context;)V

    .line 317
    .end local v1    # "i":Lcom/samsung/android/contextaware/utilbundle/IUtilManager;
    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method


# virtual methods
.method protected final getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .line 176
    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 177
    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 179
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    .line 180
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 181
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 183
    :cond_0
    return-void
.end method

.method protected final getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 4
    .param p1, "service"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    .line 282
    .local v2, "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 284
    goto :goto_1

    .line 286
    .end local v2    # "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    :cond_0
    goto :goto_0

    .line 288
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    :cond_1
    :goto_1
    return-object v0
.end method

.method protected final getCreator()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final notifyInitContext(Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Ljava/lang/String;

    .line 263
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 264
    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyInitContext()V

    .line 267
    :cond_0
    return-void
.end method

.method protected removeContextProviderObj(Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 299
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    .line 301
    .local v1, "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->removeContextObj(Ljava/lang/String;)V

    .line 303
    goto :goto_1

    .line 305
    .end local v1    # "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    :cond_0
    goto :goto_0

    .line 306
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method protected final reset(Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Ljava/lang/String;

    .line 230
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 231
    .local v0, "component":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-nez v0, :cond_0

    .line 232
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 234
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v1

    .line 233
    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 235
    return-void

    .line 238
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    .line 239
    .local v1, "provider":Lcom/samsung/android/contextaware/manager/ContextProvider;
    if-nez v1, :cond_1

    .line 240
    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 242
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v2

    .line 241
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 243
    return-void

    .line 246
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 247
    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 249
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v2

    .line 248
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 250
    return-void

    .line 253
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->clearAccordingToRequest()V

    .line 254
    return-void
.end method

.method protected final setProperty(Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 2
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "ITE;)Z"
        }
    .end annotation

    .line 216
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 217
    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->setProperty(ILjava/lang/Object;)Z

    move-result v1

    return v1

    .line 220
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected final setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .line 337
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 338
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->setVersion(I)V

    goto :goto_0

    .line 341
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    :cond_0
    return-void
.end method

.method public final start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;I)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;
    .param p4, "operation"    # I

    .line 115
    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 116
    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 118
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    .line 119
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 120
    invoke-virtual {v0, p1, p4}, Lcom/samsung/android/contextaware/manager/ContextComponent;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 122
    :cond_0
    return-void
.end method

.method public final stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;I)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;
    .param p4, "resultObserver"    # Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;
    .param p5, "operation"    # I

    .line 141
    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 142
    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0, p1, p5}, Lcom/samsung/android/contextaware/manager/ContextComponent;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 144
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    .line 145
    invoke-virtual {v1, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v1

    .line 146
    .local v1, "key":I
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    if-eqz p4, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v2

    .line 152
    invoke-virtual {v2, p4}, Lcom/samsung/android/contextaware/manager/ContextProvider;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v2

    .line 156
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v3

    .line 155
    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 159
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->removeContextProviderObj(Ljava/lang/String;)V

    .line 161
    .end local v1    # "key":I
    :cond_2
    return-void
.end method

.method protected final unregisterObservers(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V
    .locals 3
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .line 195
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 196
    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    .line 199
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 201
    :cond_0
    return-void
.end method
