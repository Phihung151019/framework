.class public final Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
.super Ljava/lang/Object;
.source "McfAdvertiseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accessPermission:I

.field private bleSID:I

.field private byteString:Ljava/lang/String;

.field private jsonString:Ljava/lang/String;

.field private targetDeviceBluetoothAddr:Ljava/lang/String;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->accessPermission:I

    .line 197
    const/16 v0, 0x7530

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->timeout:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
    .locals 9

    .line 257
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->bleSID:I

    if-eqz v0, :cond_0

    .line 260
    new-instance v1, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->bleSID:I

    iget-object v3, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->byteString:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->jsonString:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->accessPermission:I

    iget v7, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->timeout:I

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/samsung/android/mcf/discovery/McfAdvertiseData$1;)V

    return-object v1

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setAdvertiseData is requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAccessPermission(I)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .locals 2
    .param p1, "accessPermission"    # I

    .line 232
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 235
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->accessPermission:I

    .line 236
    return-object p0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accessPermission is invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .locals 2
    .param p1, "appid"    # I
    .param p2, "general"    # Z
    .param p3, "extend"    # Z

    .line 200
    if-eq p2, p3, :cond_0

    .line 203
    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->bleSID:I

    .line 204
    return-object p0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong advertise data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setByteContent([B)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .locals 1
    .param p1, "bytes"    # [B

    .line 216
    if-nez p1, :cond_0

    .line 217
    return-object p0

    .line 219
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->byteString:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 224
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->jsonString:Ljava/lang/String;

    .line 228
    return-object p0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong json data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/mcf/McfDevice;

    .line 208
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    .line 212
    return-object p0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target device address is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeout(I)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .locals 2
    .param p1, "timeout"    # I

    .line 249
    if-ltz p1, :cond_0

    const v0, 0x5265c00

    if-gt p1, v0, :cond_0

    .line 252
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->timeout:I

    .line 253
    return-object p0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
