.class public final Lcom/samsung/android/mcf/ble/BleScanSettings;
.super Ljava/lang/Object;
.source "BleScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final INFINITE_TIMEOUT:I = 0x0

.field private static final KEY_BLE_SCAN_MODE:Ljava/lang/String; = "ble_ScanMode"

.field private static final KEY_BLE_SCAN_RSSI:Ljava/lang/String; = "ble_ScanRssi"

.field private static final KEY_PHY:Ljava/lang/String; = "phy"

.field private static final KEY_SCAN_INTERVAL:Ljava/lang/String; = "scanInterval"

.field private static final KEY_SCAN_WINDOW:Ljava/lang/String; = "scanWindow"

.field private static final KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final MAX_TIMEOUT:I = 0x36ee80

.field public static final RSSI_MAX:I = 0x14

.field public static final RSSI_MIN:I = -0x80

.field public static final SCAN_MODE_BALANCED:I = 0x2

.field public static final SCAN_MODE_FMM:I = 0x1

.field public static final SCAN_MODE_LOW_LATENCY:I = 0x3

.field public static final SCAN_MODE_LOW_POWER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BleScanSettings"


# instance fields
.field private final mPhy:I

.field private final mScanFilterRssiValue:I

.field private mScanInterval:I

.field private mScanMode:I

.field private mScanWindow:I

.field private final mTimeout:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "scanMode"    # I
    .param p2, "scanFilterRssiValue"    # I
    .param p3, "timeout"    # I
    .param p4, "phy"    # I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    .line 177
    iput p2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    .line 178
    iput p3, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mTimeout:I

    .line 179
    iput p4, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    .line 180
    return-void
.end method

.method synthetic constructor <init>(IIIILcom/samsung/android/mcf/ble/BleScanSettings$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/samsung/android/mcf/ble/BleScanSettings$1;

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/ble/BleScanSettings;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string v0, "ble_ScanMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    .line 187
    const-string v0, "ble_ScanRssi"

    const/16 v2, -0x80

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    .line 188
    const-string v0, "timeout"

    const/16 v2, 0x7530

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mTimeout:I

    .line 189
    const-string v0, "phy"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    .line 190
    const-string v0, "scanInterval"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanInterval:I

    .line 191
    const-string v0, "scanWindow"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanWindow:I

    .line 192
    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanSettings;
    .locals 7
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 219
    const-string v0, "phy"

    const/4 v1, 0x0

    .line 221
    .local v1, "scanPhy":I
    :try_start_0
    new-instance v2, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    invoke-direct {v2}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;-><init>()V

    .line 222
    .local v2, "builder":Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v4, "ble_ScanMode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 224
    .local v4, "scanMode":I
    const-string v5, "ble_ScanRssi"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 225
    .local v5, "scanFilterRssiValue":I
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 229
    :cond_0
    invoke-virtual {v2, v4}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setScanMode(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setScanFilterRssiThreshold(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    .line 230
    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {v2, v1}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setPhy(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    .line 233
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanSettings;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 234
    .end local v2    # "builder":Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "scanMode":I
    .end local v5    # "scanFilterRssiValue":I
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BleScanSettings - "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BleScanSettings"

    invoke-static {v4, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "bd"    # Landroid/os/Bundle;

    .line 198
    move-object v0, p1

    .line 199
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 200
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 202
    :cond_0
    const-string v1, "ble_ScanMode"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v1, "ble_ScanRssi"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const-string v1, "timeout"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mTimeout:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v1, "phy"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string v1, "scanInterval"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v1, "scanWindow"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanWindow:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    return-object v0
.end method

.method public getPhy()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    return v0
.end method

.method public getScanFilterRssiValue()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    return v0
.end method

.method public getScanInterval()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanInterval:I

    return v0
.end method

.method public getScanMode()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    return v0
.end method

.method public getScanWindow()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanWindow:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mTimeout:I

    return v0
.end method

.method public setScanMode(I)V
    .locals 0
    .param p1, "scanMode"    # I

    .line 120
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    .line 121
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 5

    .line 245
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "ble_ScanMode"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    const-string v1, "ble_ScanRssi"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    const-string v1, "phy"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "toJsonObject : "

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BleScanSettings"

    invoke-static {v4, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v1    # "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleScanSettings{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phy ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
