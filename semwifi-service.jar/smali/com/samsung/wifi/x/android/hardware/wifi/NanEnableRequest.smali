.class public Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public configParams:Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;

.field public debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;

.field public hopCountMax:B

.field public operateInBand:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->hopCountMax:B

    .line 6
    .line 7
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getStability()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const-string v3, "Overflow in the size of parcelable"

    .line 11
    .line 12
    const v4, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-lt v1, v2, :cond_9

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    if-lt v2, v1, :cond_1

    .line 23
    .line 24
    sub-int/2addr v4, v1

    .line 25
    if-gt v0, v4, :cond_0

    .line 26
    .line 27
    :goto_0
    add-int/2addr v0, v1

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 33
    .line 34
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :try_start_1
    const-class v2, [Z

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    filled-new-array {v5}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, [Z

    .line 50
    .line 51
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->operateInBand:[Z

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 54
    .line 55
    .line 56
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    sub-int/2addr v2, v0

    .line 58
    if-lt v2, v1, :cond_3

    .line 59
    .line 60
    sub-int/2addr v4, v1

    .line 61
    if-gt v0, v4, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 65
    .line 66
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->hopCountMax:B

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 77
    .line 78
    .line 79
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    sub-int/2addr v2, v0

    .line 81
    if-lt v2, v1, :cond_5

    .line 82
    .line 83
    sub-int/2addr v4, v1

    .line 84
    if-gt v0, v4, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 88
    .line 89
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_5
    :try_start_3
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;

    .line 100
    .line 101
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 104
    .line 105
    .line 106
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    sub-int/2addr v2, v0

    .line 108
    if-lt v2, v1, :cond_7

    .line 109
    .line 110
    sub-int/2addr v4, v1

    .line 111
    if-gt v0, v4, :cond_6

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 115
    .line 116
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_7
    :try_start_4
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 121
    .line 122
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;

    .line 127
    .line 128
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    .line 130
    sub-int/2addr v4, v1

    .line 131
    if-gt v0, v4, :cond_8

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 135
    .line 136
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto :goto_1

    .line 142
    :cond_9
    :try_start_5
    new-instance p0, Landroid/os/BadParcelableException;

    .line 143
    .line 144
    const-string v2, "Parcelable too small"

    .line 145
    .line 146
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    :goto_1
    sub-int/2addr v4, v1

    .line 151
    if-le v0, v4, :cond_a

    .line 152
    .line 153
    new-instance p0, Landroid/os/BadParcelableException;

    .line 154
    .line 155
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :cond_a
    add-int/2addr v0, v1

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 161
    .line 162
    .line 163
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->operateInBand:[Z

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    filled-new-array {v2}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 17
    .line 18
    .line 19
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->hopCountMax:B

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->configParams:Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;

    .line 25
    .line 26
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanEnableRequest;->debugConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;

    .line 30
    .line 31
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
