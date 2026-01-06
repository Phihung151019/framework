.class public Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "MovingAggregator.java"


# static fields
.field public static final PEDESTRIAN_MOVE:I = 0x0

.field public static final PEDESTRIAN_STOP:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VEHICLE_MOVE:I = 0x2

.field public static final VEHICLE_STOP:I = 0x3


# instance fields
.field private mOldMode:I

.field private mOldMove:I

.field private mOldTransMethod:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
    .param p1, "version"    # I
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .line 74
    .local p2, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "version":I
    .end local p2    # "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    .end local p3    # "observable":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .local v1, "version":I
    .local v4, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    .local v5, "observable":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 75
    return-void
.end method

.method private notifyMovingContext(III)V
    .locals 3
    .param p1, "move"    # I
    .param p2, "transMethod"    # I
    .param p3, "mode"    # I

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 218
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 219
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 221
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 223
    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    .line 224
    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    .line 225
    iput p3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 226
    return-void
.end method

.method private updateMovingMode(I)I
    .locals 2
    .param p1, "transMethod"    # I

    .line 177
    const/4 v0, -0x1

    .line 179
    .local v0, "movingMode":I
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    packed-switch v1, :pswitch_data_0

    .line 196
    const/4 v0, -0x1

    goto :goto_0

    .line 193
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 194
    goto :goto_0

    .line 182
    :pswitch_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 183
    const/4 v0, 0x6

    goto :goto_0

    .line 185
    :cond_0
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 187
    nop

    .line 200
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePedestrianStatus(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/os/Bundle;

    .line 123
    const-string v0, "PedestrianStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "pedestrianStatus":I
    const/4 v1, 0x0

    .line 125
    .local v1, "move":I
    const/4 v2, 0x0

    .line 127
    .local v2, "transMethod":I
    packed-switch v0, :pswitch_data_0

    .line 149
    const/4 v1, -0x1

    .line 150
    const/4 v2, -0x1

    goto :goto_0

    .line 145
    :pswitch_0
    const/4 v1, 0x0

    .line 146
    const/4 v2, 0x1

    .line 147
    goto :goto_0

    .line 141
    :pswitch_1
    const/4 v1, 0x1

    .line 142
    const/4 v2, 0x1

    .line 143
    goto :goto_0

    .line 137
    :pswitch_2
    const/4 v1, 0x0

    .line 138
    const/4 v2, 0x0

    .line 139
    goto :goto_0

    .line 133
    :pswitch_3
    const/4 v1, 0x1

    .line 134
    const/4 v2, 0x0

    .line 135
    goto :goto_0

    .line 129
    :pswitch_4
    const/4 v1, -0x1

    .line 130
    const/4 v2, -0x1

    .line 131
    nop

    .line 154
    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updateMovingMode(I)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->notifyMovingContext(III)V

    .line 155
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePedometerData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/os/Bundle;

    .line 164
    const-string v0, "StepStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 165
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    .line 166
    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updateMovingMode(I)I

    move-result v2

    .line 165
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->notifyMovingContext(III)V

    .line 167
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 100
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 101
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    .line 104
    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    .line 105
    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 110
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 111
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 113
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 114
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 294
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 295
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 289
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 290
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 235
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .line 267
    const-string v0, "transMethod"

    const-string v1, "mode"

    const-string v2, "move"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 246
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 256
    return-object p0
.end method

.method protected final initializeAggregator()V
    .locals 3

    .line 85
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;

    .line 87
    .local v0, "locatoinAggregator":Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;
    if-eqz v0, :cond_0

    .line 88
    nop

    .line 89
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->setPropertyValue(ILjava/lang/Object;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .line 279
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updatePedestrianStatus(Landroid/os/Bundle;)V

    goto :goto_0

    .line 281
    :cond_0
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 282
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updatePedometerData(Landroid/os/Bundle;)V

    .line 285
    :cond_1
    :goto_0
    return-void
.end method
