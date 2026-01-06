.class public Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
.super Ljava/lang/Object;
.source "McfUWBRangingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "[MCFSDK]_McfUWBRangingData"


# instance fields
.field private final mAntennaPairInfo:I

.field private final mAoaLandscape:I

.field private final mAoaPortrait:I

.field private final mBluetoothAddress:Ljava/lang/String;

.field private final mDeviceId:Ljava/lang/String;

.field private final mDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;

    invoke-direct {v0}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "bluetoothAddress"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "distance"    # I
    .param p4, "aoaPortrait"    # I
    .param p5, "aoaLandscape"    # I
    .param p6, "antennaPairInfo"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    .line 51
    iput p4, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    .line 52
    iput p5, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    .line 53
    iput p6, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "result":Z
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 175
    return v1

    .line 178
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 179
    return v1

    .line 182
    :cond_1
    instance-of v2, p1, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    if-nez v2, :cond_2

    .line 183
    return v1

    .line 187
    :cond_2
    :try_start_0
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    .line 189
    .local v2, "that":Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
    iget-object v3, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 190
    return v1

    .line 193
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    .line 194
    return v1

    .line 200
    .end local v2    # "that":Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
    :cond_4
    nop

    .line 202
    const/4 v1, 0x1

    return v1

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/Exception;
    return v1

    .line 196
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public getAntennaPairInfo()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    return v0
.end method

.method public getAoaLandscape()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    return v0
.end method

.method public getAoaPortrait()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    return v0
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cm|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "degree|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void
.end method
