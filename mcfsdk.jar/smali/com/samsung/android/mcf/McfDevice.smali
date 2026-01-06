.class public Lcom/samsung/android/mcf/McfDevice;
.super Ljava/lang/Object;
.source "McfDevice.java"


# static fields
.field private static final CONTACTS_REQUEST:Ljava/lang/String; = "ContactRequest"

.field public static final DEVICE_ADDED:I = 0x0

.field public static final DEVICE_EVENT:I = 0x3

.field public static final DEVICE_REMOVED:I = 0x1

.field public static final DEVICE_UPDATED:I = 0x2

.field public static final INFO_TYPE_IPv4:Ljava/lang/String; = "Inet4Address"

.field public static final INFO_TYPE_IPv6:Ljava/lang/String; = "Inet6Address"

.field public static final IN_CONTACT:I = 0x1

.field static final KEY_ADDITIONAL_AUTH_PAYLOAD:Ljava/lang/String; = "additionalAuthPayload"

.field static final KEY_ADDITIONAL_INFO:Ljava/lang/String; = "additionalInfo"

.field static final KEY_BLE_ADDRESS:Ljava/lang/String; = "bleAddress"

.field static final KEY_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetoothAddress"

.field static final KEY_BLUETOOTH_DEVICE_NAME:Ljava/lang/String; = "bluetoothDeviceName"

.field static final KEY_CONNECTION_TYPE:Ljava/lang/String; = "connectionType"

.field static final KEY_CONTACT_KEY:Ljava/lang/String; = "contactKey"

.field static final KEY_CONTACT_NAME:Ljava/lang/String; = "contactName"

.field static final KEY_CONTENTS_BYTE:Ljava/lang/String; = "contentsByte"

.field static final KEY_CONTENTS_STRING:Ljava/lang/String; = "contentsString"

.field static final KEY_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field static final KEY_INFO_TYPE:Ljava/lang/String; = "infoType"

.field static final KEY_IS_INCONTACT:Ljava/lang/String; = "isInContact"

.field public static final MY_DEVICE:I = 0x2

.field public static final NOT_IN_CONTACT:I = 0x0

.field private static final SERVICE_ACTIVATE_PERMISSION:Ljava/lang/String; = "ServiceActivate"

.field private static final STATUS_TAG:Ljava/lang/String; = "McfDeviceStatus"

.field private static final TAG:Ljava/lang/String; = "McfDevice"


# instance fields
.field private mAdditionalAuthPayload:Ljava/lang/String;

.field private mAdditionalInfo:Ljava/lang/String;

.field private mBleAddress:Ljava/lang/String;

.field private mBluetoothAddress:Ljava/lang/String;

.field private mBluetoothDeviceName:Ljava/lang/String;

.field private mConnectionType:I

.field private mContactKey:Ljava/lang/String;

.field private mContactName:Ljava/lang/String;

.field private mContentsByte:Ljava/lang/String;

.field private mContentsJson:Lorg/json/JSONObject;

.field private mDeviceID:Ljava/lang/String;

.field private mInfoType:Ljava/lang/String;

.field private mIsInContact:I


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    if-nez p1, :cond_0

    .line 230
    const-string v0, "source bundle is null, create empty object"

    const-string v1, "McfDevice"

    invoke-static {v1, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void

    .line 233
    :cond_0
    const-string v0, "bluetoothAddress"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    .line 234
    const-string v0, "bluetoothDeviceName"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    .line 235
    const-string v0, "bleAddress"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBleAddress:Ljava/lang/String;

    .line 236
    const-string v0, "isInContact"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/McfDevice;->mIsInContact:I

    .line 237
    const-string v0, "contactKey"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContactKey:Ljava/lang/String;

    .line 238
    const-string v0, "contactName"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContactName:Ljava/lang/String;

    .line 239
    const-string v0, "deviceId"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    .line 240
    const-string v0, "connectionType"

    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    .line 241
    const-string v0, "infoType"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    .line 242
    const-string v0, "additionalInfo"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalInfo:Ljava/lang/String;

    .line 244
    const-string v0, "contentsString"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "contentsString":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 247
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 250
    iput-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;

    .line 253
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    const-string v2, "contentsByte"

    invoke-virtual {p1, v2, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    .line 254
    const-string v2, "additionalAuthPayload"

    invoke-virtual {p1, v2, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "byteData"    # Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "bluetoothAddress"    # Ljava/lang/String;
    .param p3, "bleAddress"    # Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    .line 205
    iput-object p2, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    .line 206
    iput-object p3, p0, Lcom/samsung/android/mcf/McfDevice;->mBleAddress:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bluetoothAddress"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "bleAddress"    # Ljava/lang/String;
    .param p4, "isInContact"    # I
    .param p5, "contactKey"    # Ljava/lang/String;
    .param p6, "contactName"    # Ljava/lang/String;
    .param p7, "deviceID"    # Ljava/lang/String;
    .param p8, "connectionType"    # I
    .param p9, "contents"    # Lorg/json/JSONObject;
    .param p10, "byteData"    # Ljava/lang/String;
    .param p11, "additionalAuthPayload"    # Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcom/samsung/android/mcf/McfDevice;->mBleAddress:Ljava/lang/String;

    .line 185
    iput p4, p0, Lcom/samsung/android/mcf/McfDevice;->mIsInContact:I

    .line 186
    iput-object p5, p0, Lcom/samsung/android/mcf/McfDevice;->mContactKey:Ljava/lang/String;

    .line 187
    iput-object p6, p0, Lcom/samsung/android/mcf/McfDevice;->mContactName:Ljava/lang/String;

    .line 188
    iput-object p7, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    .line 189
    iput p8, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    .line 190
    iput-object p9, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;

    .line 191
    iput-object p10, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    .line 192
    iput-object p11, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public static createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 266
    if-eqz p0, :cond_0

    .line 267
    new-instance v0, Lcom/samsung/android/mcf/McfDevice;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/McfDevice;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0

    .line 269
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public checkConnectionType(I)Z
    .locals 1
    .param p1, "net"    # I

    .line 409
    iget v0, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 538
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/mcf/McfDevice;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_1

    .line 539
    .end local v0    # "result":Z
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 543
    .restart local v0    # "result":Z
    :goto_1
    return v0
.end method

.method public getAdditionalAuthPayload()[B
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x0

    return-object v0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalAuthType()I
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalInfoType()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    return-object v0
.end method

.method public getBleAddress()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBleAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 280
    invoke-static {}, Lcom/samsung/android/mcf/common/Utils;->createPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 281
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 282
    const-string v1, "bluetoothAddress"

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "bluetoothDeviceName"

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mBleAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 291
    const-string v1, "bleAddress"

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mBleAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1
    const-string v1, "isInContact"

    iget v2, p0, Lcom/samsung/android/mcf/McfDevice;->mIsInContact:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 295
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mContactKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 296
    const-string v1, "contactKey"

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mContactKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mContactName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 299
    const-string v1, "contactName"

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mContactName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 302
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_4
    const-string v1, "connectionType"

    iget v2, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 305
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 306
    const-string v1, "infoType"

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalInfo:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 309
    const-string v1, "additionalInfo"

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_7

    .line 312
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentsString"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 315
    const-string v1, "contentsByte"

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 318
    const-string v1, "additionalAuthPayload"

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalAuthPayload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_9
    return-object v0

    .line 284
    :cond_a
    const-string v1, "getBundle"

    const-string v2, "bluetooth address is null, return null"

    const-string v3, "McfDevice"

    invoke-static {v3, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x0

    return-object v1
.end method

.method public getConnectionType()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    return v0
.end method

.method public getContactInfo()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getContactKey()[B
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContactKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x0

    return-object v0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContactKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContents()Lorg/json/JSONObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getContentsByte()[B
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 473
    const/4 v0, 0x0

    return-object v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsByte:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContentsJson()Lorg/json/JSONObject;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mContentsJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiAddress()Ljava/lang/String;
    .locals 2

    .line 429
    const-string v0, "Inet6Address"

    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Inet4Address"

    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 430
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInContact()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/samsung/android/mcf/McfDevice;->mIsInContact:I

    return v0
.end method

.method public setAdditionalInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 331
    iput-object p2, p0, Lcom/samsung/android/mcf/McfDevice;->mInfoType:Ljava/lang/String;

    .line 332
    iput-object p1, p0, Lcom/samsung/android/mcf/McfDevice;->mAdditionalInfo:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setConnectionType(I)V
    .locals 0
    .param p1, "connectionType"    # I

    .line 399
    iput p1, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    .line 400
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mDeviceID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mcf/McfDevice;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/McfDevice;->mConnectionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
