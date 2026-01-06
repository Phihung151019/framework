.class public Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public classifierParams:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;

.field public dscp:B

.field public policyId:B

.field public requestType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->policyId:B

    .line 6
    .line 7
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->dscp:B

    .line 8
    .line 9
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->classifierParams:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->describeContents(Ljava/lang/Object;)I

    move-result p0

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
    .locals 5

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->policyId:B

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 45
    .line 46
    .line 47
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    sub-int/2addr v2, v0

    .line 49
    if-lt v2, v1, :cond_3

    .line 50
    .line 51
    sub-int/2addr v4, v1

    .line 52
    if-gt v0, v4, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 56
    .line 57
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->requestType:B

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 68
    .line 69
    .line 70
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    sub-int/2addr v2, v0

    .line 72
    if-lt v2, v1, :cond_5

    .line 73
    .line 74
    sub-int/2addr v4, v1

    .line 75
    if-gt v0, v4, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 79
    .line 80
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->dscp:B

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 91
    .line 92
    .line 93
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    sub-int/2addr v2, v0

    .line 95
    if-lt v2, v1, :cond_7

    .line 96
    .line 97
    sub-int/2addr v4, v1

    .line 98
    if-gt v0, v4, :cond_6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 102
    .line 103
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_7
    :try_start_4
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;

    .line 114
    .line 115
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->classifierParams:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    .line 117
    sub-int/2addr v4, v1

    .line 118
    if-gt v0, v4, :cond_8

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 122
    .line 123
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    goto :goto_1

    .line 129
    :cond_9
    :try_start_5
    new-instance p0, Landroid/os/BadParcelableException;

    .line 130
    .line 131
    const-string v2, "Parcelable too small"

    .line 132
    .line 133
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    :goto_1
    sub-int/2addr v4, v1

    .line 138
    if-le v0, v4, :cond_a

    .line 139
    .line 140
    new-instance p0, Landroid/os/BadParcelableException;

    .line 141
    .line 142
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_a
    add-int/2addr v0, v1

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 148
    .line 149
    .line 150
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

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
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->policyId:B

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    .line 13
    .line 14
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->requestType:B

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    .line 18
    .line 19
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->dscp:B

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->classifierParams:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;

    .line 25
    .line 26
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
