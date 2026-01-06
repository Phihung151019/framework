.class public Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
.super Ljava/lang/Object;
.source "McfAdvertiseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_CONTACT_ONLY:I = 0x1

.field public static final ACCESS_CUSTOM:I = 0x2

.field public static final ACCESS_EVERYONE:I = 0x0

.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final INFINITE_TIMEOUT:I = 0x0

.field private static final KEY_ADV_ACCESS_PERMISSION:Ljava/lang/String; = "advAccessPermission"

.field public static final KEY_BYTE_CONTENTS:Ljava/lang/String; = "byteContents"

.field private static final KEY_DEVICE_ADDR:Ljava/lang/String; = "deviceAddr"

.field private static final KEY_JSON_CONTENTS:Ljava/lang/String; = "contents"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field public static final KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final LONG_TIMEOUT:I = 0x36ee80

.field public static final MAX_TIMEOUT:I = 0x5265c00

.field private static final TAG:Ljava/lang/String; = "McfAdvertiseData"


# instance fields
.field private final accessPermission:I

.field private final bleSID:I

.field private byteContent:[B

.field private final byteString:Ljava/lang/String;

.field private jsonContent:Lorg/json/JSONObject;

.field private final jsonString:Ljava/lang/String;

.field private final targetDeviceBluetoothAddr:Ljava/lang/String;

.field private timeout:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "bleSID"    # I
    .param p2, "targetDeviceBtAddr"    # Ljava/lang/String;
    .param p3, "bytes"    # Ljava/lang/String;
    .param p4, "json"    # Ljava/lang/String;
    .param p5, "accessPermission"    # I
    .param p6, "timeout"    # I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    .line 108
    iput-object p2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    .line 111
    iput p5, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    .line 112
    iput p6, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    .line 113
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/samsung/android/mcf/discovery/McfAdvertiseData$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData$1;

    .line 15
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    .line 117
    const-string v0, "deviceAddr"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    .line 118
    const-string v0, "byteContents"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteContent:[B

    .line 122
    :cond_0
    const-string v0, "contents"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 125
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonContent:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "getKeyJsonContents "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "McfAdvertiseData"

    invoke-static {v4, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    const-string v0, "advAccessPermission"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    .line 131
    const-string v0, "timeout"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    .line 132
    return-void
.end method


# virtual methods
.method public getAccessPermission()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    return v0
.end method

.method public getBleSID()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 3

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "contents"

    iget-object v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    const-string v1, "serviceID"

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 180
    const-string v1, "deviceAddr"

    iget-object v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 183
    const-string v1, "byteContents"

    iget-object v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_2
    const-string v1, "advAccessPermission"

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    const-string v1, "timeout"

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    return-object v0
.end method

.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 157
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "contents"

    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 161
    const-string v0, "byteContents"

    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 164
    const-string v0, "deviceAddr"

    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_2
    const-string v0, "advAccessPermission"

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v0, "timeout"

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    return-object p1
.end method

.method public getByteContent()[B
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteContent:[B

    return-object v0
.end method

.method public getByteString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonContent()Lorg/json/JSONObject;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJsonString()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetDeviceBluetoothAddr()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    return v0
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 92
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "mac":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 139
    sget-boolean v1, Lcom/samsung/android/mcf/common/DLog;->PRINT_SECURE_LOG:Z

    if-eqz v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "($m)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    const/16 v3, 0xc

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{id=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const/16 v2, 0x27

    const-string v3, ""

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", target=\'"

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

    .line 149
    sget-boolean v4, Lcom/samsung/android/mcf/common/DLog;->PRINT_SECURE_LOG:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", byte=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    sget-boolean v4, Lcom/samsung/android/mcf/common/DLog;->PRINT_SECURE_LOG:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", json=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", access="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    return-object v1
.end method
