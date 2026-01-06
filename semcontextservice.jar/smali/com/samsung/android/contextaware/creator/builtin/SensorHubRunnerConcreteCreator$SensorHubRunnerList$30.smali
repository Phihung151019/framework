.class final enum Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$30;
.super Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.source "SensorHubRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 769
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$30;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 1

    .line 786
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->PEDOMETER_CURRENT_INFO:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 6

    .line 773
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$18000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$30;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$18400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 775
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$30;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerCurrentInfoRunner;

    .line 776
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$18100()I

    move-result v3

    .line 777
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$18200()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$18300()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/PedometerCurrentInfoRunner;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 774
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$30;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$30;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$30;->setOptionForExtLib(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$18500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$30;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextComponent;

    return-object v0
.end method
