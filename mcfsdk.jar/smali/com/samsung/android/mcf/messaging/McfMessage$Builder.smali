.class public final Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
.super Ljava/lang/Object;
.source "McfMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/messaging/McfMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final mNetworkType:I


# instance fields
.field private mBleSID:I

.field private mJsonString:Ljava/lang/String;

.field private mNeedResponse:Z

.field private mTargetBleAddress:Ljava/lang/String;

.field private mTargetBluetoothAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mBleSID:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/messaging/McfMessage;
    .locals 8

    .line 376
    iget v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mBleSID:I

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBluetoothAddress:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBleAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mJsonString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 385
    new-instance v1, Lcom/samsung/android/mcf/messaging/McfMessage;

    iget v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mBleSID:I

    iget-object v4, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBleAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBluetoothAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mJsonString:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mNeedResponse:Z

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/mcf/messaging/McfMessage;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    .line 383
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSON content is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ID is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .locals 2
    .param p1, "jsonContent"    # Lorg/json/JSONObject;

    .line 350
    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mJsonString:Ljava/lang/String;

    .line 354
    return-object p0

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid JSON content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessageId(I)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .locals 2
    .param p1, "appId"    # I

    .line 290
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mBleSID:I

    .line 291
    return-object p0
.end method

.method public setMessageId(IZZ)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .locals 2
    .param p1, "appId"    # I
    .param p2, "general"    # Z
    .param p3, "extend"    # Z

    .line 304
    if-eq p2, p3, :cond_0

    .line 307
    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mBleSID:I

    .line 308
    return-object p0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong message ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNeedResponse(Z)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .locals 0
    .param p1, "needResponse"    # Z

    .line 365
    iput-boolean p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mNeedResponse:Z

    .line 366
    return-object p0
.end method

.method public setTargetBleDevice(Ljava/lang/String;)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .locals 2
    .param p1, "bleAddress"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBluetoothAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 338
    iput-object p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBleAddress:Ljava/lang/String;

    .line 339
    return-object p0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target BLE address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/mcf/McfDevice;

    .line 320
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBleAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBluetoothAddress:Ljava/lang/String;

    .line 324
    return-object p0

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
