.class public final Lcom/samsung/android/mcf/ble/BleAdvertiseData;
.super Ljava/lang/Object;
.source "BleAdvertiseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    }
.end annotation


# static fields
.field private static final KEY_ADV_INCLUDE_DEVICENAME:Ljava/lang/String; = "AdvIncludeDeviceName"

.field private static final KEY_ADV_INCLUDE_RSP:Ljava/lang/String; = "AdvIncludeRsp"

.field private static final KEY_ADV_MANUFACTURER_DATA:Ljava/lang/String; = "AdvManufacturerData"

.field private static final KEY_ADV_MANUFACTURER_ID:Ljava/lang/String; = "AdvManufacturerId"

.field private static final KEY_ADV_SVC_DATA:Ljava/lang/String; = "AdvSvcData"

.field private static final KEY_ADV_SVC_DATA_UUID:Ljava/lang/String; = "AdvSvcDataUuid"

.field private static final KEY_ADV_SVC_UUID:Ljava/lang/String; = "AdvSvcUuid"

.field private static final KEY_RSP_INCLUDE_DEVICENAME:Ljava/lang/String; = "RspIncludeDeviceName"

.field private static final KEY_RSP_MANUFACTURER_DATA:Ljava/lang/String; = "RspManufacturerData"

.field private static final KEY_RSP_MANUFACTURER_ID:Ljava/lang/String; = "RspManufacturerId"

.field private static final KEY_RSP_SVC_DATA:Ljava/lang/String; = "RspSvcData"

.field private static final KEY_RSP_SVC_DATA_UUID:Ljava/lang/String; = "RspSvcDataUuid"

.field private static final KEY_RSP_SVC_UUID:Ljava/lang/String; = "RspSvcUuid"

.field public static final Type_ADV:I = 0x0

.field public static final Type_RSP:I = 0x1


# instance fields
.field private mHasResponseData:Z

.field private final mIncludeDeviceName:Z

.field private final mManufacturerId:I

.field private final mManufacturerSpecificData:[B

.field private final mServiceData:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "mAdvertiseType"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    .line 79
    if-nez p2, :cond_2

    .line 80
    const-string v1, "AdvSvcUuid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "uuid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 82
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 84
    :cond_0
    const-string v2, "AdvSvcDataUuid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 88
    :cond_1
    const-string v2, "AdvSvcData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    .line 89
    const-string v2, "AdvManufacturerId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    .line 90
    const-string v2, "AdvManufacturerData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    .line 91
    const-string v2, "AdvIncludeDeviceName"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    .line 92
    const-string v2, "AdvIncludeRsp"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    .line 93
    .end local v1    # "uuid":Ljava/lang/String;
    goto :goto_0

    .line 94
    :cond_2
    const-string v1, "RspSvcUuid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1    # "uuid":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 96
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 98
    :cond_3
    const-string v2, "RspSvcDataUuid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 102
    :cond_4
    const-string v2, "RspSvcData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    .line 103
    const-string v2, "RspManufacturerId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    .line 104
    const-string v2, "RspManufacturerData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    .line 105
    const-string v2, "RspIncludeDeviceName"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    .line 107
    .end local v1    # "uuid":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZ)V
    .locals 1
    .param p1, "serviceUuids"    # Landroid/os/ParcelUuid;
    .param p2, "manufacturerId"    # I
    .param p3, "manufacturerData"    # [B
    .param p4, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p5, "serviceData"    # [B
    .param p6, "includeDeviceName"    # Z

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    .line 67
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 68
    iput p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    .line 69
    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    .line 70
    iput-object p4, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 71
    iput-object p5, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    .line 72
    iput-boolean p6, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZLcom/samsung/android/mcf/ble/BleAdvertiseData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/ParcelUuid;
    .param p2, "x1"    # I
    .param p3, "x2"    # [B
    .param p4, "x3"    # Landroid/os/ParcelUuid;
    .param p5, "x4"    # [B
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lcom/samsung/android/mcf/ble/BleAdvertiseData$1;

    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;-><init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZ)V

    return-void
.end method


# virtual methods
.method public getBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 4
    .param p1, "bd"    # Landroid/os/Bundle;
    .param p2, "mAdvertiseType"    # I

    .line 114
    move-object v0, p1

    .line 115
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 116
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 118
    :cond_0
    const-string v1, "AdvIncludeRsp"

    if-nez p2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdvSvcUuid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdvSvcDataUuid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "AdvSvcData"

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    if-eqz v2, :cond_3

    .line 127
    const-string v2, "AdvManufacturerId"

    iget v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v2, "AdvManufacturerData"

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 130
    :cond_3
    const-string v2, "AdvIncludeDeviceName"

    iget-boolean v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    return-object v0

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v2, :cond_5

    .line 136
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RspSvcUuid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v2, :cond_6

    .line 139
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RspSvcDataUuid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "RspSvcData"

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 142
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    if-eqz v2, :cond_7

    .line 143
    const-string v2, "RspManufacturerId"

    iget v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v2, "RspManufacturerData"

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 146
    :cond_7
    const-string v2, "RspIncludeDeviceName"

    iget-boolean v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    return-object v0
.end method

.method public getIncludeDeviceName()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    return v0
.end method

.method public getManufacturerId()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    return v0
.end method

.method public getManufacturerSpecificData()[B
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    return-object v0
.end method

.method public getServiceData()[B
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    return-object v0
.end method

.method public getServiceDataUuid()Landroid/os/ParcelUuid;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public hasResponseData()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    return v0
.end method

.method synthetic lambda$toAdvertiseData$0$com-samsung-android-mcf-ble-BleAdvertiseData(Landroid/bluetooth/le/AdvertiseData$Builder;[B)V
    .locals 1
    .param p1, "builder"    # Landroid/bluetooth/le/AdvertiseData$Builder;
    .param p2, "data"    # [B

    .line 161
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    return-void
.end method

.method synthetic lambda$toAdvertiseData$1$com-samsung-android-mcf-ble-BleAdvertiseData(Landroid/bluetooth/le/AdvertiseData$Builder;[B)V
    .locals 1
    .param p1, "builder"    # Landroid/bluetooth/le/AdvertiseData$Builder;
    .param p2, "md"    # [B

    .line 162
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    return-void
.end method

.method public toAdvertiseData()Landroid/bluetooth/le/AdvertiseData;
    .locals 3

    .line 159
    new-instance v0, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 160
    .local v0, "builder":Landroid/bluetooth/le/AdvertiseData$Builder;
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/le/AdvertiseData$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Landroid/bluetooth/le/AdvertiseData$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 162
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Landroid/bluetooth/le/AdvertiseData$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 163
    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleAdvertiseData{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    const-string v2, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

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

    .line 171
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SDUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

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

    .line 172
    sget-boolean v1, Lcom/samsung/android/mcf/common/DLog;->PRINT_SECURE_LOG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SD="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    sget-boolean v1, Lcom/samsung/android/mcf/common/DLog;->PRINT_SECURE_LOG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    if-eqz v1, :cond_3

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    .line 174
    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IDN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method
