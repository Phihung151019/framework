.class public Lcom/samsung/android/mcf/handover/McfHandoverData;
.super Ljava/lang/Object;
.source "McfHandoverData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    }
.end annotation


# static fields
.field private static final KEY_CONNECTION_TYPE:Ljava/lang/String; = "connectionType"

.field private static final KEY_DEVICE_ADDR:Ljava/lang/String; = "deviceAddr"

.field private static final KEY_JSON_CONTENTS:Ljava/lang/String; = "contents"

.field private static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field private static final TAG:Ljava/lang/String; = "McfHandoverData"


# instance fields
.field private final bleSID:I

.field private final connectionType:I

.field private jsonContent:Lorg/json/JSONObject;

.field private final jsonString:Ljava/lang/String;

.field private final targetDeviceBluetoothAddr:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "bleSID"    # I
    .param p2, "targetDeviceBtAddr"    # Ljava/lang/String;
    .param p3, "json"    # Ljava/lang/String;
    .param p4, "connectionType"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->bleSID:I

    .line 56
    iput-object p2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    .line 58
    iput p4, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->connectionType:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/handover/McfHandoverData$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/samsung/android/mcf/handover/McfHandoverData$1;

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/handover/McfHandoverData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->bleSID:I

    .line 63
    const-string v0, "deviceAddr"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    .line 64
    const-string v0, "contents"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonContent:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "getKeyJsonContents "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "McfHandoverData"

    invoke-static {v4, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    const-string v0, "connectionType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->connectionType:I

    .line 73
    return-void
.end method


# virtual methods
.method public getBleSID()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->bleSID:I

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 3

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "contents"

    iget-object v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    const-string v1, "serviceID"

    iget v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->bleSID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    iget-object v1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "deviceAddr"

    iget-object v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    const-string v1, "connectionType"

    iget v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->connectionType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    return-object v0
.end method

.method public getConnectionType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->connectionType:I

    return v0
.end method

.method public getJsonContent()Lorg/json/JSONObject;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJsonString()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetDeviceBluetoothAddr()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "mac":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 80
    sget-boolean v1, Lcom/samsung/android/mcf/common/DLog;->PRINT_SECURE_LOG:Z

    if-eqz v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "($m)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    const/16 v3, 0xc

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "McfAdvertiseData{bleSID=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->bleSID:I

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    const/16 v2, 0x27

    const-string v3, ""

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", targetAddr=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    sget-boolean v4, Lcom/samsung/android/mcf/common/DLog;->PRINT_SECURE_LOG:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", json=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connectionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->connectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    return-object v1
.end method
