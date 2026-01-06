.class public Lcom/samsung/android/mcf/ble/BleScanFilter;
.super Ljava/lang/Object;
.source "BleScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_TYPE_PUBLIC:I = 0x0

.field public static final ADDRESS_TYPE_RANDOM:I = 0x1

.field private static final KEY_BLE_SCAN_FILTER_ADDRESS_TYPE:Ljava/lang/String; = "ble_Scan_AddressType"

.field private static final KEY_BLE_SCAN_FILTER_DEVICE_ADDR:Ljava/lang/String; = "ble_Scan_DeviceAddr"

.field private static final KEY_BLE_SCAN_FILTER_DEVICE_NAME:Ljava/lang/String; = "ble_Scan_DeviceName"

.field private static final KEY_BLE_SCAN_FILTER_IRK:Ljava/lang/String; = "ble_Scan_IRK"

.field private static final KEY_BLE_SCAN_FILTER_MF_DATA:Ljava/lang/String; = "ble_Scan_Mf_Data"

.field private static final KEY_BLE_SCAN_FILTER_MF_DATA_MASK:Ljava/lang/String; = "ble_Scan_Mf_DataMask"

.field private static final KEY_BLE_SCAN_FILTER_MF_ID:Ljava/lang/String; = "ble_Scan_Mf_Id"

.field private static final KEY_BLE_SCAN_FILTER_PASSIVE_SCAN:Ljava/lang/String; = "ble_Scan_passiveScan"

.field private static final KEY_BLE_SCAN_FILTER_SDATA:Ljava/lang/String; = "ble_Scan_SData"

.field private static final KEY_BLE_SCAN_FILTER_SDATA_MASK:Ljava/lang/String; = "ble_Scan_SDataMask"

.field private static final KEY_BLE_SCAN_FILTER_SDATA_UUID:Ljava/lang/String; = "ble_Scan_DataUuid"

.field private static final KEY_BLE_SCAN_FILTER_UUID:Ljava/lang/String; = "ble_Scan_Uuid"

.field private static final KEY_BLE_SCAN_FILTER_UUID_MASK:Ljava/lang/String; = "ble_Scan_UuidMask"

.field private static final TAG:Ljava/lang/String; = "BleScanFilter"


# instance fields
.field private final mAddressType:I

.field private final mDeviceAddress:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private final mIrk:[B

.field private final mManufacturerData:[B

.field private final mManufacturerDataMask:[B

.field private final mManufacturerId:I

.field private final mPassiveScan:Z

.field private final mServiceData:[B

.field private final mServiceDataMask:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mServiceUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-string v0, "ble_Scan_DeviceName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    .line 132
    const-string v0, "ble_Scan_DeviceAddr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 134
    const-string v0, "ble_Scan_Uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "uuid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 136
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 138
    :cond_0
    const-string v1, "ble_Scan_UuidMask"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "uuidMask":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 140
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 143
    :cond_1
    const-string v2, "ble_Scan_DataUuid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "dataUuid":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 145
    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 147
    :cond_2
    const-string v3, "ble_Scan_SData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    .line 148
    const-string v3, "ble_Scan_SDataMask"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    .line 150
    const-string v3, "ble_Scan_Mf_Id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    .line 151
    const-string v3, "ble_Scan_Mf_Data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    .line 152
    const-string v3, "ble_Scan_Mf_DataMask"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    .line 153
    const-string v3, "ble_Scan_passiveScan"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    .line 155
    const-string v3, "ble_Scan_AddressType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    .line 156
    const-string v3, "ble_Scan_IRK"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    .line 157
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "uuidMask"    # Landroid/os/ParcelUuid;
    .param p5, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p6, "serviceData"    # [B
    .param p7, "serviceDataMask"    # [B
    .param p8, "manufacturerId"    # I
    .param p9, "manufacturerData"    # [B
    .param p10, "manufacturerDataMask"    # [B
    .param p11, "passiveScan"    # Z
    .param p12, "addressType"    # I
    .param p13, "irk"    # [B

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 102
    iput-object p4, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 104
    iput-object p5, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 105
    iput-object p6, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    .line 106
    iput-object p7, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    .line 108
    iput p8, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    .line 109
    iput-object p9, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    .line 110
    iput-object p10, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    .line 112
    iput-boolean p11, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    .line 113
    iput p12, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    .line 114
    iput-object p13, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[BLcom/samsung/android/mcf/ble/BleScanFilter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/ParcelUuid;
    .param p4, "x3"    # Landroid/os/ParcelUuid;
    .param p5, "x4"    # Landroid/os/ParcelUuid;
    .param p6, "x5"    # [B
    .param p7, "x6"    # [B
    .param p8, "x7"    # I
    .param p9, "x8"    # [B
    .param p10, "x9"    # [B
    .param p11, "x10"    # Z
    .param p12, "x11"    # I
    .param p13, "x12"    # [B
    .param p14, "x13"    # Lcom/samsung/android/mcf/ble/BleScanFilter$1;

    .line 36
    invoke-direct/range {p0 .. p13}, Lcom/samsung/android/mcf/ble/BleScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[B)V

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/le/ScanFilter$Builder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [B

    .line 36
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->setDeviceAddressWithIrk(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z

    move-result v0

    return v0
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter;
    .locals 21
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 254
    const-string v0, "ble_Scan_Mf_DataMask"

    const-string v1, "ble_Scan_Mf_Data"

    const-string v2, "ble_Scan_Mf_Id"

    const-string v3, "ble_Scan_SDataMask"

    const-string v4, "ble_Scan_SData"

    const-string v5, "ble_Scan_DataUuid"

    const-string v6, "ble_Scan_UuidMask"

    const-string v7, "ble_Scan_Uuid"

    const-string v8, "ble_Scan_DeviceAddr"

    const-string v9, "ble_Scan_DeviceName"

    const/4 v10, 0x0

    .line 255
    .local v10, "serviceUuid":Landroid/os/ParcelUuid;
    const/4 v11, 0x0

    .line 256
    .local v11, "serviceUuidMask":Landroid/os/ParcelUuid;
    const/4 v12, 0x0

    .line 257
    .local v12, "serviceDataUuid":Landroid/os/ParcelUuid;
    const/4 v13, 0x0

    .line 258
    .local v13, "serviceData":[B
    const/4 v14, 0x0

    .line 260
    .local v14, "serviceDataMask":[B
    const/4 v15, 0x0

    .line 261
    .local v15, "manufacturerData":[B
    const/16 v16, 0x0

    .line 264
    .local v16, "manufacturerDataMask":[B
    :try_start_0
    new-instance v17, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v18, v17

    .line 266
    .local v18, "builder":Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    move-object/from16 v17, v10

    .end local v10    # "serviceUuid":Landroid/os/ParcelUuid;
    .local v17, "serviceUuid":Landroid/os/ParcelUuid;
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v19, v11

    move-object/from16 v11, p0

    .end local v11    # "serviceUuidMask":Landroid/os/ParcelUuid;
    .local v19, "serviceUuidMask":Landroid/os/ParcelUuid;
    :try_start_2
    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    .local v10, "obj":Lorg/json/JSONObject;
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 268
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 269
    .local v9, "deviceName":Ljava/lang/String;
    move-object/from16 v11, v18

    .end local v18    # "builder":Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .local v11, "builder":Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    invoke-virtual {v11, v9}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    goto :goto_0

    .line 267
    .end local v9    # "deviceName":Ljava/lang/String;
    .end local v11    # "builder":Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .restart local v18    # "builder":Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    :cond_0
    move-object/from16 v11, v18

    .line 271
    .end local v18    # "builder":Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .restart local v11    # "builder":Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    :goto_0
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 272
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, "deviceAddress":Ljava/lang/String;
    invoke-virtual {v11, v8}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 277
    .end local v8    # "deviceAddress":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 278
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v17    # "serviceUuid":Landroid/os/ParcelUuid;
    .local v7, "serviceUuid":Landroid/os/ParcelUuid;
    goto :goto_1

    .line 277
    .end local v7    # "serviceUuid":Landroid/os/ParcelUuid;
    .restart local v17    # "serviceUuid":Landroid/os/ParcelUuid;
    :cond_2
    move-object/from16 v7, v17

    .line 281
    .end local v17    # "serviceUuid":Landroid/os/ParcelUuid;
    .restart local v7    # "serviceUuid":Landroid/os/ParcelUuid;
    :goto_1
    :try_start_3
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 282
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v19    # "serviceUuidMask":Landroid/os/ParcelUuid;
    .local v6, "serviceUuidMask":Landroid/os/ParcelUuid;
    goto :goto_2

    .line 281
    .end local v6    # "serviceUuidMask":Landroid/os/ParcelUuid;
    .restart local v19    # "serviceUuidMask":Landroid/os/ParcelUuid;
    :cond_3
    move-object/from16 v6, v19

    .line 285
    .end local v19    # "serviceUuidMask":Landroid/os/ParcelUuid;
    .restart local v6    # "serviceUuidMask":Landroid/os/ParcelUuid;
    :goto_2
    if-eqz v7, :cond_5

    .line 286
    if-eqz v6, :cond_4

    .line 287
    :try_start_4
    invoke-virtual {v11, v7, v6}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    goto :goto_3

    .line 289
    :cond_4
    invoke-virtual {v11, v7}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 294
    :cond_5
    :goto_3
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 295
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    move-object v12, v5

    .line 298
    :cond_6
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 299
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object v13, v4

    .line 302
    :cond_7
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 303
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    move-object v14, v3

    .line 306
    :cond_8
    if-eqz v12, :cond_a

    .line 307
    if-eqz v14, :cond_9

    .line 308
    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    goto :goto_4

    .line 310
    :cond_9
    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 315
    :cond_a
    :goto_4
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_5

    :cond_b
    const/4 v2, -0x1

    .line 317
    .local v2, "manufacturerId":I
    :goto_5
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 318
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    move-object v15, v1

    .line 320
    :cond_c
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 321
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v16, v0

    move-object/from16 v1, v16

    goto :goto_6

    .line 320
    :cond_d
    move-object/from16 v1, v16

    .line 324
    .end local v16    # "manufacturerDataMask":[B
    .local v1, "manufacturerDataMask":[B
    :goto_6
    if-ltz v2, :cond_f

    .line 325
    if-eqz v1, :cond_e

    .line 326
    :try_start_5
    invoke-virtual {v11, v2, v15, v1}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    goto :goto_7

    .line 328
    :cond_e
    invoke-virtual {v11, v2, v15}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 331
    :cond_f
    :goto_7
    invoke-static {}, Lcom/samsung/android/mcf/common/VersionUtil;->getBuildSDKVersion()I

    move-result v0

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_10

    const-string v0, "ble_Scan_passiveScan"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 332
    invoke-virtual {v11}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->enablePassiveScan()Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 334
    :cond_10
    invoke-virtual {v11}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v0

    .line 335
    .end local v2    # "manufacturerId":I
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v11    # "builder":Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    move-object v11, v6

    move-object v10, v7

    goto :goto_8

    .end local v1    # "manufacturerDataMask":[B
    .restart local v16    # "manufacturerDataMask":[B
    :catch_1
    move-exception v0

    move-object v11, v6

    move-object v10, v7

    goto :goto_8

    .end local v6    # "serviceUuidMask":Landroid/os/ParcelUuid;
    .restart local v19    # "serviceUuidMask":Landroid/os/ParcelUuid;
    :catch_2
    move-exception v0

    move-object v10, v7

    move-object/from16 v11, v19

    goto :goto_8

    .end local v7    # "serviceUuid":Landroid/os/ParcelUuid;
    .restart local v17    # "serviceUuid":Landroid/os/ParcelUuid;
    :catch_3
    move-exception v0

    move-object/from16 v10, v17

    move-object/from16 v11, v19

    goto :goto_8

    .end local v19    # "serviceUuidMask":Landroid/os/ParcelUuid;
    .local v11, "serviceUuidMask":Landroid/os/ParcelUuid;
    :catch_4
    move-exception v0

    move-object/from16 v19, v11

    move-object/from16 v10, v17

    .end local v11    # "serviceUuidMask":Landroid/os/ParcelUuid;
    .restart local v19    # "serviceUuidMask":Landroid/os/ParcelUuid;
    goto :goto_8

    .end local v17    # "serviceUuid":Landroid/os/ParcelUuid;
    .end local v19    # "serviceUuidMask":Landroid/os/ParcelUuid;
    .local v10, "serviceUuid":Landroid/os/ParcelUuid;
    .restart local v11    # "serviceUuidMask":Landroid/os/ParcelUuid;
    :catch_5
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v19, v11

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    const-string v1, "BleScanFilter - "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleScanFilter"

    invoke-static {v3, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v1, 0x0

    return-object v1
.end method

.method private static setDeviceAddressWithIrk(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z
    .locals 9
    .param p0, "builder"    # Landroid/bluetooth/le/ScanFilter$Builder;
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .param p3, "irk"    # [B

    .line 235
    const-string v0, "setDeviceAddressWithIrk : "

    const-string v1, "BleScanFilter"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setDeviceAddress"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, [B

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 237
    .local v3, "setDeviceAddressWithIrk":Ljava/lang/reflect/Method;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addressType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p1, v4, p3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    return v7

    .line 240
    .end local v3    # "setDeviceAddressWithIrk":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 241
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return v2
.end method


# virtual methods
.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "bd"    # Landroid/os/Bundle;

    .line 163
    move-object v0, p1

    .line 164
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 165
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 168
    const-string v1, "ble_Scan_DeviceName"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 171
    const-string v1, "ble_Scan_DeviceAddr"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ble_Scan_Uuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_4

    .line 177
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ble_Scan_UuidMask"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_5

    .line 180
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ble_Scan_DataUuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    if-eqz v1, :cond_6

    .line 184
    const-string v1, "ble_Scan_SData"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 186
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    if-eqz v1, :cond_7

    .line 187
    const-string v1, "ble_Scan_SDataMask"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 190
    :cond_7
    const-string v1, "ble_Scan_Mf_Id"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    if-eqz v1, :cond_8

    .line 192
    const-string v1, "ble_Scan_Mf_Data"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 194
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    if-eqz v1, :cond_9

    .line 195
    const-string v1, "ble_Scan_Mf_DataMask"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 197
    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz v1, :cond_a

    .line 198
    const-string v1, "ble_Scan_passiveScan"

    iget-boolean v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    :cond_a
    const-string v1, "ble_Scan_AddressType"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-eqz v1, :cond_b

    .line 203
    const-string v1, "ble_Scan_IRK"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 205
    :cond_b
    return-object v0
.end method

.method public getIrk()[B
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    return-object v0
.end method

.method public isOnlyIrkFilter()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$toScanFilter$0$com-samsung-android-mcf-ble-BleScanFilter(Landroid/bluetooth/le/ScanFilter$Builder;Landroid/os/ParcelUuid;)V
    .locals 1
    .param p1, "builder"    # Landroid/bluetooth/le/ScanFilter$Builder;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 214
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {p1, p2, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method

.method synthetic lambda$toScanFilter$1$com-samsung-android-mcf-ble-BleScanFilter(Landroid/bluetooth/le/ScanFilter$Builder;Landroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "builder"    # Landroid/bluetooth/le/ScanFilter$Builder;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 215
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    invoke-virtual {p1, p2, v0, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method

.method synthetic lambda$toScanFilter$2$com-samsung-android-mcf-ble-BleScanFilter(Landroid/bluetooth/le/ScanFilter$Builder;[B)V
    .locals 2
    .param p1, "builder"    # Landroid/bluetooth/le/ScanFilter$Builder;
    .param p2, "data"    # [B

    .line 217
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    invoke-virtual {p1, v0, p2, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 5

    .line 346
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 349
    const-string v1, "ble_Scan_DeviceName"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 352
    const-string v1, "ble_Scan_DeviceAddr"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_2

    .line 355
    const-string v1, "ble_Scan_Uuid"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_3

    .line 358
    const-string v1, "ble_Scan_UuidMask"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_4

    .line 361
    const-string v1, "ble_Scan_DataUuid"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    if-eqz v1, :cond_5

    .line 364
    const-string v1, "ble_Scan_SData"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    if-eqz v1, :cond_6

    .line 367
    const-string v1, "ble_Scan_SDataMask"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    :cond_6
    iget v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 370
    const-string v1, "ble_Scan_Mf_Id"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    if-eqz v1, :cond_8

    .line 373
    const-string v1, "ble_Scan_Mf_Data"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    if-eqz v1, :cond_9

    .line 376
    const-string v1, "ble_Scan_Mf_DataMask"

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz v1, :cond_a

    .line 379
    const-string v1, "ble_Scan_passiveScan"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 381
    :cond_a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "toJsonObject : "

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BleScanFilter"

    invoke-static {v4, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .end local v1    # "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public toScanFilter()Landroid/bluetooth/le/ScanFilter;
    .locals 4

    .line 213
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 214
    .local v0, "builder":Landroid/bluetooth/le/ScanFilter$Builder;
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 215
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 218
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 219
    invoke-static {}, Lcom/samsung/android/mcf/common/VersionUtil;->getBuildSDKVersion()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->semEnablePassiveScan()Landroid/bluetooth/le/ScanFilter$Builder;

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-nez v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 225
    :cond_1
    invoke-static {}, Lcom/samsung/android/mcf/common/VersionUtil;->getBuildSDKVersion()I

    move-result v1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->setDeviceAddressWithIrk(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z

    .line 228
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleScanFilter{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    const-string v2, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SUuidMask="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz v1, :cond_2

    const-string v1, ", Passive=true"

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SDUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "str":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/mcf/common/DLog;->PRINT_SECURE_LOG:Z

    if-eqz v1, :cond_c

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", SD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v2

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", SDMask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object v3, v2

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    iget v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", MId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object v3, v2

    :goto_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", MD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_7
    move-object v3, v2

    :goto_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    if-eqz v3, :cond_8

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", MDMask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_8
    move-object v3, v2

    :goto_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 402
    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", AddrType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_9
    move-object v3, v2

    :goto_9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 403
    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Irk="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_a
    move-object v3, v2

    :goto_a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v3, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
