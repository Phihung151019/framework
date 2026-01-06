.class public Lcom/samsung/android/mcf/messaging/McfMessage;
.super Ljava/lang/Object;
.source "McfMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    }
.end annotation


# static fields
.field private static final KEY_DEVICE_ADDR:Ljava/lang/String; = "deviceAddr"

.field private static final KEY_DEVICE_BLE_ADDR:Ljava/lang/String; = "deviceBleAddr"

.field private static final KEY_JSON_CONTENTS:Ljava/lang/String; = "contents"

.field private static final KEY_MESSAGE_NET:Ljava/lang/String; = "messageNet"

.field private static final KEY_NEED_RESPONSE:Ljava/lang/String; = "needResponse"

.field private static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field public static final NET_TYPE_BLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "McfMessage"


# instance fields
.field private final mBleSID:I

.field private mJsonContent:Lorg/json/JSONObject;

.field private final mJsonString:Ljava/lang/String;

.field private mNeedResponse:Z

.field private final mNetworkType:I

.field private final mTargetBleAddress:Ljava/lang/String;

.field private final mTargetBluetoothAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "bleSID"    # I
    .param p2, "networkType"    # I
    .param p3, "bleAddress"    # Ljava/lang/String;
    .param p4, "bluetoothAddress"    # Ljava/lang/String;
    .param p5, "jsonString"    # Ljava/lang/String;
    .param p6, "needResponse"    # Z

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    .line 140
    iput p2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    .line 141
    iput-object p3, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    .line 143
    iput-object p5, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    .line 144
    iput-boolean p6, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/os/BaseBundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/BaseBundle;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    .line 162
    const-string v0, "messageNet"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    .line 163
    const-string v0, "deviceBleAddr"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    .line 164
    const-string v0, "deviceAddr"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    .line 165
    const-string v0, "contents"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonContent:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "McfMessage "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "McfMessage"

    invoke-static {v4, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    const-string v0, "needResponse"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    .line 174
    return-void
.end method

.method public static createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/messaging/McfMessage;
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 213
    if-eqz p0, :cond_0

    .line 214
    new-instance v0, Lcom/samsung/android/mcf/messaging/McfMessage;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/messaging/McfMessage;-><init>(Landroid/os/BaseBundle;)V

    return-object v0

    .line 216
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBleSid()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    return v0
.end method

.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p1, v0

    .line 230
    :cond_0
    const-string v0, "serviceID"

    iget v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "contents"

    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 235
    const-string v0, "deviceAddr"

    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 238
    const-string v0, "deviceBleAddr"

    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_3
    const-string v0, "messageNet"

    iget v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v0, "needResponse"

    iget-boolean v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    return-object p1
.end method

.method public getBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 252
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 253
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "serviceID"

    iget v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 254
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 255
    const-string v1, "contents"

    iget-object v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 258
    const-string v1, "deviceAddr"

    iget-object v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 261
    const-string v1, "deviceBleAddr"

    iget-object v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_2
    const-string v1, "messageNet"

    iget v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 264
    return-object v0
.end method

.method public getJsonContent()Lorg/json/JSONObject;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJsonString()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageNetType()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    return v0
.end method

.method public getTargetDeviceBleAddr()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetDeviceBluetoothAddr()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public needResponse()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "mac":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    const/16 v2, 0x11

    const/16 v3, 0xc

    const/16 v4, 0x10

    const/4 v5, 0x1

    const-string v6, "ro.product_ship"

    if-eqz v1, :cond_1

    .line 181
    invoke-static {v6, v5}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "($m)"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 188
    .local v1, "bleMac":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 189
    invoke-static {v6, v5}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 190
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    goto :goto_1

    .line 191
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_3

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "($m-ble)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "McfMessage { i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", bt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ble="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    invoke-static {v6, v5}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    return-object v2
.end method
