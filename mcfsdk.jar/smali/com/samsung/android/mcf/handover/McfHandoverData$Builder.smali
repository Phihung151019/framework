.class public final Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
.super Ljava/lang/Object;
.source "McfHandoverData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/handover/McfHandoverData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bleSID:I

.field private connectionType:I

.field private jsonString:Ljava/lang/String;

.field private targetDeviceBluetoothAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->NONE:Lcom/samsung/android/mcf/handover/ConnectionType;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/handover/ConnectionType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/handover/McfHandoverData;
    .locals 7

    .line 149
    iget v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->bleSID:I

    if-eqz v0, :cond_0

    .line 152
    new-instance v1, Lcom/samsung/android/mcf/handover/McfHandoverData;

    iget v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->bleSID:I

    iget-object v3, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->jsonString:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mcf/handover/McfHandoverData;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/handover/McfHandoverData$1;)V

    return-object v1

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setAdvertiseData is requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConnectionType(I)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .locals 0
    .param p1, "connectionType"    # I

    .line 143
    iput p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    .line 144
    return-object p0
.end method

.method public setConnectionType(Lcom/samsung/android/mcf/handover/ConnectionType;)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .locals 1
    .param p1, "connectionType"    # Lcom/samsung/android/mcf/handover/ConnectionType;

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/ConnectionType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    .line 139
    return-object p0
.end method

.method public setHandoverData(I)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .locals 2
    .param p1, "appid"    # I

    .line 117
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->bleSID:I

    .line 118
    return-object p0
.end method

.method public setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 130
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->jsonString:Ljava/lang/String;

    .line 134
    return-object p0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong json data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .locals 2
    .param p1, "device"    # Lcom/samsung/android/mcf/McfDevice;

    .line 122
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    .line 126
    return-object p0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target device address is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
