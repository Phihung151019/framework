.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;
.super Ljava/lang/Object;
.source "CurrentPositionRequestRunner.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
.implements Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    }
.end annotation


# static fields
.field private static final LOCATION_MODE_SLOCATION:I = 0x2


# instance fields
.field private final mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

.field private mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

.field private final mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .line 174
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    .line 175
    return-void
.end method


# virtual methods
.method public getPosition()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    return-object v0
.end method

.method public final getRequestType()I
    .locals 1

    .line 186
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->REQUEST_CURRENT_POSITION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    iget-byte v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->value:B

    return v0
.end method

.method public final notifyObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V
    .locals 1
    .param p1, "position"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    .line 293
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    invoke-interface {v0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;->updatePosition(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V

    .line 296
    :cond_0
    return-void
.end method

.method public final parse([BI)I
    .locals 4
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 198
    move v0, p2

    .line 200
    .local v0, "tmpNext":I
    array-length v1, p1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    .line 201
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 202
    const/4 v1, -0x1

    return v1

    .line 204
    :cond_0
    const/4 v1, 0x2

    .line 210
    .local v1, "msgType":I
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0xa

    .line 211
    .local v0, "accuracy":I
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->enable(II)V

    .line 213
    return v2
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    .line 266
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    .line 267
    return-void
.end method

.method public final unregisterObserver()V
    .locals 1

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    .line 279
    return-void
.end method

.method public final updateCurrentPosition(I[IDDDDFFI)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "utcTime"    # [I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "distance"    # D
    .param p11, "speed"    # F
    .param p12, "accuracy"    # F
    .param p13, "satelliteCount"    # I

    .line 232
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->-$$Nest$fputtype(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-static {v0, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->-$$Nest$fpututcTime(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;[I)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-static {v0, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->-$$Nest$fputlatitude(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-static {v0, p5, p6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->-$$Nest$fputlongitude(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-static {v0, p7, p8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->-$$Nest$fputaltitude(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-static {v0, p9, p10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->-$$Nest$fputdistance(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-static {v0, p11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->-$$Nest$fputspeed(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-static {v0, p12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->-$$Nest$fputaccuracy(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-static {v0, p13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->-$$Nest$fputsatelliteCount(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->notifyObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V

    .line 243
    return-void
.end method
