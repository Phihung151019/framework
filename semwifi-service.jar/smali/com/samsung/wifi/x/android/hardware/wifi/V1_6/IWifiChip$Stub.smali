.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 1
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->arch:I

    .line 18
    .line 19
    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    new-array v2, v0, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    new-array v3, v0, [B

    .line 16
    .line 17
    fill-array-data v3, :array_2

    .line 18
    .line 19
    .line 20
    new-array v4, v0, [B

    .line 21
    .line 22
    fill-array-data v4, :array_3

    .line 23
    .line 24
    .line 25
    new-array v5, v0, [B

    .line 26
    .line 27
    fill-array-data v5, :array_4

    .line 28
    .line 29
    .line 30
    new-array v6, v0, [B

    .line 31
    .line 32
    fill-array-data v6, :array_5

    .line 33
    .line 34
    .line 35
    new-array v7, v0, [B

    .line 36
    .line 37
    fill-array-data v7, :array_6

    .line 38
    .line 39
    .line 40
    new-array v8, v0, [B

    .line 41
    .line 42
    fill-array-data v8, :array_7

    .line 43
    .line 44
    .line 45
    filled-new-array/range {v1 .. v8}, [[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :array_0
    .array-data 1
        -0x18t
        -0x31t
        0x25t
        0x70t
        -0x2et
        -0xdt
        -0x28t
        -0x31t
        0x7at
        0x72t
        0x51t
        -0x18t
        0x5at
        -0x79t
        -0x35t
        -0xat
        0x33t
        -0x30t
        -0x41t
        -0xdt
        -0x3et
        -0x72t
        0x1ct
        -0x65t
        -0x41t
        0x33t
        -0x63t
        -0x16t
        0x4t
        -0x4et
        0x54t
        -0x6t
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 1
        -0x5ft
        0x19t
        0x3dt
        0x37t
        -0x9t
        -0x1ft
        0x32t
        0x22t
        -0x41t
        0x79t
        -0x11t
        0x4bt
        0x73t
        -0x25t
        -0x53t
        0x15t
        -0x50t
        -0x10t
        -0x5dt
        0x30t
        -0x30t
        0x33t
        0x56t
        -0x2ft
        0x22t
        0x26t
        -0x24t
        -0x26t
        0x20t
        -0x22t
        0x44t
        -0x59t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_2
    .array-data 1
        0x2et
        0x7t
        -0x68t
        0x3at
        0x70t
        -0x5ft
        -0x47t
        0x63t
        -0x42t
        -0x18t
        -0x52t
        -0x32t
        0x5t
        0xet
        0x5et
        -0x5bt
        0x3t
        -0x5dt
        -0x23t
        -0x1dt
        0x1et
        0x21t
        -0x57t
        -0x8t
        0x35t
        0x2ct
        -0xft
        0x7et
        -0x6ft
        0x13t
        -0x2dt
        0x47t
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :array_3
    .array-data 1
        0x64t
        -0x42t
        0x8t
        0x4bt
        0x6et
        0x1et
        -0xdt
        0x30t
        -0x49t
        0x5ft
        -0x57t
        0x16t
        0x59t
        0x3dt
        -0x40t
        -0x47t
        0x4bt
        0xet
        -0x39t
        -0x5ft
        0x6dt
        0x5ct
        -0x6t
        -0x5bt
        -0x5dt
        0x1et
        0x6ct
        -0x6ft
        0x43t
        -0x38t
        0x28t
        -0x73t
    .end array-data

    :array_4
    .array-data 1
        0x78t
        0xct
        0x16t
        -0x3t
        -0x13t
        -0x5ft
        0x3bt
        0x77t
        -0x63t
        -0x67t
        0x39t
        0x53t
        -0x5at
        0x7ft
        0x7ct
        -0x5bt
        0x78t
        -0x37t
        0x38t
        -0x5ft
        0x72t
        -0x57t
        0x42t
        0x4ct
        0x1ct
        0x71t
        0x5at
        -0x18t
        0x1bt
        -0x3ct
        0xft
        -0x29t
    .end array-data

    :array_5
    .array-data 1
        -0x50t
        0x56t
        -0x1ft
        -0x22t
        -0x6t
        -0x4ct
        0x7t
        0x15t
        -0x7ct
        0x21t
        0x45t
        -0x7ct
        0x5t
        0x7dt
        0xbt
        -0x39t
        0x3at
        0x61t
        0x30t
        -0x7ft
        -0x41t
        0x11t
        0x52t
        0x59t
        0x5t
        0x49t
        0x64t
        -0x63t
        0x45t
        -0x7et
        -0x3ft
        0x3ct
    .end array-data

    :array_6
    .array-data 1
        -0xdt
        -0x12t
        -0x34t
        0x48t
        -0x63t
        -0x15t
        0x4ct
        0x74t
        -0x77t
        0x2ft
        0x59t
        -0x15t
        0x7at
        -0x25t
        0x76t
        -0x70t
        0x63t
        -0x43t
        0x5ct
        0x35t
        0x4at
        -0x3ft
        0x32t
        -0x4at
        0x26t
        -0x5bt
        -0xct
        0x2bt
        0x36t
        0x3dt
        0x36t
        -0x44t
    .end array-data

    :array_7
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v6, "android.hardware.wifi@1.0::IWifiChip"

    .line 4
    .line 5
    const-string v7, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v0, "android.hardware.wifi@1.6::IWifiChip"

    .line 8
    .line 9
    const-string v1, "android.hardware.wifi@1.5::IWifiChip"

    .line 10
    .line 11
    const-string v2, "android.hardware.wifi@1.4::IWifiChip"

    .line 12
    .line 13
    const-string v3, "android.hardware.wifi@1.3::IWifiChip"

    .line 14
    .line 15
    const-string v4, "android.hardware.wifi@1.2::IWifiChip"

    .line 16
    .line 17
    const-string v5, "android.hardware.wifi@1.1::IWifiChip"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hardware.wifi@1.6::IWifiChip"

    .line 2
    .line 3
    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string p4, "android.hardware.wifi@1.1::IWifiChip"

    .line 2
    .line 3
    const-string v0, "android.hardware.wifi@1.2::IWifiChip"

    .line 4
    .line 5
    const-string v1, "android.hardware.wifi@1.4::IWifiChip"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const-string v4, "android.hardware.wifi@1.3::IWifiChip"

    .line 10
    .line 11
    const-string v5, "android.hardware.wifi@1.6::IWifiChip"

    .line 12
    .line 13
    const-string v6, "android.hardware.wifi@1.5::IWifiChip"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v8, "android.hardware.wifi@1.0::IWifiChip"

    .line 17
    .line 18
    packed-switch p1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    const-string p4, "android.hidl.base@1.0::IBase"

    .line 22
    .line 23
    sparse-switch p1, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->notifySyspropsChanged()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->ping()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->setHALInstrumentation()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Landroid/os/HwBlob;

    .line 82
    .line 83
    const/16 p2, 0x10

    .line 84
    .line 85
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    const-wide/16 v0, 0x8

    .line 93
    .line 94
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 95
    .line 96
    .line 97
    const-wide/16 v0, 0xc

    .line 98
    .line 99
    invoke-virtual {p1, v0, v1, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 100
    .line 101
    .line 102
    new-instance p4, Landroid/os/HwBlob;

    .line 103
    .line 104
    mul-int/lit8 v0, p2, 0x20

    .line 105
    .line 106
    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 107
    .line 108
    .line 109
    :goto_0
    if-ge v7, p2, :cond_1

    .line 110
    .line 111
    mul-int/lit8 v0, v7, 0x20

    .line 112
    .line 113
    int-to-long v0, v0

    .line 114
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, [B

    .line 119
    .line 120
    if-eqz v4, :cond_0

    .line 121
    .line 122
    array-length v5, v4

    .line 123
    const/16 v6, 0x20

    .line 124
    .line 125
    if-ne v5, v6, :cond_0

    .line 126
    .line 127
    invoke-virtual {p4, v0, v1, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string p1, "Array element is not of the expected length"

    .line 136
    .line 137
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_1
    invoke-virtual {p1, v2, v3, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :sswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :pswitch_0
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$31;

    .line 210
    .line 211
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$31;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;->getSupportedRadioCombinationsMatrix(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$getSupportedRadioCombinationsMatrixCallback;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$30;

    .line 222
    .line 223
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$30;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 224
    .line 225
    .line 226
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;->getAvailableModes_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$getAvailableModes_1_6Callback;)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :pswitch_2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 238
    .line 239
    .line 240
    move-result p4

    .line 241
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$29;

    .line 246
    .line 247
    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$29;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p0, p1, p4, p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;->getUsableChannels_1_6(IIILcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$getUsableChannels_1_6Callback;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$28;

    .line 266
    .line 267
    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$28;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;->createRttController_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$createRttController_1_6Callback;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :pswitch_4
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->triggerSubsystemRestart()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :pswitch_5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 299
    .line 300
    .line 301
    move-result p4

    .line 302
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 303
    .line 304
    .line 305
    move-result p2

    .line 306
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$27;

    .line 307
    .line 308
    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$27;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 309
    .line 310
    .line 311
    invoke-interface {p0, p1, p4, p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->getUsableChannels(IIILcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$getUsableChannelsCallback;)V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :pswitch_6
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const/4 p1, 0x2

    .line 319
    new-array p4, p1, [B

    .line 320
    .line 321
    const-wide/16 v0, 0x2

    .line 322
    .line 323
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 324
    .line 325
    .line 326
    move-result-object p2

    .line 327
    invoke-virtual {p2, v2, v3, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 328
    .line 329
    .line 330
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setCountryCode([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    :pswitch_7
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 352
    .line 353
    .line 354
    move-result p2

    .line 355
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setCoexUnsafeChannels(Ljava/util/ArrayList;I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 366
    .line 367
    .line 368
    return-void

    .line 369
    :pswitch_8
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :pswitch_9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$26;

    .line 398
    .line 399
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$26;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 400
    .line 401
    .line 402
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->createBridgedApIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$createBridgedApIfaceCallback;)V

    .line 403
    .line 404
    .line 405
    return-void

    .line 406
    :pswitch_a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setMultiStaUseCase(B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 414
    .line 415
    .line 416
    move-result-object p0

    .line 417
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :pswitch_b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setMultiStaPrimaryConnection(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 445
    .line 446
    .line 447
    return-void

    .line 448
    :pswitch_c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$25;

    .line 452
    .line 453
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$25;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 454
    .line 455
    .line 456
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->getCapabilities_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$getCapabilities_1_5Callback;)V

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$24;

    .line 472
    .line 473
    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$24;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 474
    .line 475
    .line 476
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip;->createRttController_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$createRttController_1_4Callback;)V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip;->registerEventCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 492
    .line 493
    .line 494
    move-result-object p0

    .line 495
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 502
    .line 503
    .line 504
    return-void

    .line 505
    :pswitch_f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->flushRingBufferToFile()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 509
    .line 510
    .line 511
    move-result-object p0

    .line 512
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :pswitch_10
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 526
    .line 527
    .line 528
    move-result p1

    .line 529
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->setLatencyMode(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 530
    .line 531
    .line 532
    move-result-object p0

    .line 533
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
    :pswitch_11
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$23;

    .line 547
    .line 548
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$23;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 549
    .line 550
    .line 551
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->getCapabilities_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$getCapabilities_1_3Callback;)V

    .line 552
    .line 553
    .line 554
    return-void

    .line 555
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 559
    .line 560
    .line 561
    move-result-object p1

    .line 562
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 567
    .line 568
    .line 569
    move-result-object p0

    .line 570
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 577
    .line 578
    .line 579
    return-void

    .line 580
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 584
    .line 585
    .line 586
    move-result p1

    .line 587
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->selectTxPowerScenario_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 588
    .line 589
    .line 590
    move-result-object p0

    .line 591
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 598
    .line 599
    .line 600
    return-void

    .line 601
    :pswitch_14
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->resetTxPowerScenario()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 605
    .line 606
    .line 607
    move-result-object p0

    .line 608
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 615
    .line 616
    .line 617
    return-void

    .line 618
    :pswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 622
    .line 623
    .line 624
    move-result p1

    .line 625
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->selectTxPowerScenario(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 626
    .line 627
    .line 628
    move-result-object p0

    .line 629
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 636
    .line 637
    .line 638
    return-void

    .line 639
    :pswitch_16
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 643
    .line 644
    .line 645
    move-result p1

    .line 646
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 647
    .line 648
    .line 649
    move-result-object p0

    .line 650
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 657
    .line 658
    .line 659
    return-void

    .line 660
    :pswitch_17
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$22;

    .line 664
    .line 665
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$22;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 666
    .line 667
    .line 668
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugHostWakeReasonStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    .line 669
    .line 670
    .line 671
    return-void

    .line 672
    :pswitch_18
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->stopLoggingToDebugRingBuffer()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 676
    .line 677
    .line 678
    move-result-object p0

    .line 679
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 686
    .line 687
    .line 688
    return-void

    .line 689
    :pswitch_19
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 697
    .line 698
    .line 699
    move-result-object p0

    .line 700
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 707
    .line 708
    .line 709
    return-void

    .line 710
    :pswitch_1a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object p1

    .line 717
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 718
    .line 719
    .line 720
    move-result p4

    .line 721
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 722
    .line 723
    .line 724
    move-result v0

    .line 725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 726
    .line 727
    .line 728
    move-result p2

    .line 729
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 730
    .line 731
    .line 732
    move-result-object p0

    .line 733
    invoke-static {p3, v7, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 734
    .line 735
    .line 736
    return-void

    .line 737
    :pswitch_1b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$21;

    .line 741
    .line 742
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$21;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 743
    .line 744
    .line 745
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugRingBuffersStatus(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V

    .line 746
    .line 747
    .line 748
    return-void

    .line 749
    :pswitch_1c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 753
    .line 754
    .line 755
    move-result-object p1

    .line 756
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    .line 757
    .line 758
    .line 759
    move-result-object p1

    .line 760
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$20;

    .line 761
    .line 762
    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$20;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 763
    .line 764
    .line 765
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createRttController(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V

    .line 766
    .line 767
    .line 768
    return-void

    .line 769
    :pswitch_1d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object p1

    .line 776
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 777
    .line 778
    .line 779
    move-result-object p0

    .line 780
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 787
    .line 788
    .line 789
    return-void

    .line 790
    :pswitch_1e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$19;

    .line 798
    .line 799
    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$19;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 800
    .line 801
    .line 802
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    .line 803
    .line 804
    .line 805
    return-void

    .line 806
    :pswitch_1f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$18;

    .line 810
    .line 811
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$18;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 812
    .line 813
    .line 814
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    .line 815
    .line 816
    .line 817
    return-void

    .line 818
    :pswitch_20
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$17;

    .line 822
    .line 823
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$17;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 824
    .line 825
    .line 826
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createStaIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V

    .line 827
    .line 828
    .line 829
    return-void

    .line 830
    :pswitch_21
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object p1

    .line 837
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 838
    .line 839
    .line 840
    move-result-object p0

    .line 841
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 848
    .line 849
    .line 850
    return-void

    .line 851
    :pswitch_22
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object p1

    .line 858
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$16;

    .line 859
    .line 860
    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$16;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 861
    .line 862
    .line 863
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    .line 864
    .line 865
    .line 866
    return-void

    .line 867
    :pswitch_23
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$15;

    .line 871
    .line 872
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$15;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 873
    .line 874
    .line 875
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    .line 876
    .line 877
    .line 878
    return-void

    .line 879
    :pswitch_24
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$14;

    .line 883
    .line 884
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 885
    .line 886
    .line 887
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createP2pIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    .line 888
    .line 889
    .line 890
    return-void

    .line 891
    :pswitch_25
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object p1

    .line 898
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 899
    .line 900
    .line 901
    move-result-object p0

    .line 902
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 909
    .line 910
    .line 911
    return-void

    .line 912
    :pswitch_26
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object p1

    .line 919
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$13;

    .line 920
    .line 921
    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 922
    .line 923
    .line 924
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    .line 925
    .line 926
    .line 927
    return-void

    .line 928
    :pswitch_27
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$12;

    .line 932
    .line 933
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 934
    .line 935
    .line 936
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    .line 937
    .line 938
    .line 939
    return-void

    .line 940
    :pswitch_28
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$11;

    .line 944
    .line 945
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 946
    .line 947
    .line 948
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createNanIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    .line 949
    .line 950
    .line 951
    return-void

    .line 952
    :pswitch_29
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object p1

    .line 959
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeApIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 960
    .line 961
    .line 962
    move-result-object p0

    .line 963
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 970
    .line 971
    .line 972
    return-void

    .line 973
    :pswitch_2a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object p1

    .line 980
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$10;

    .line 981
    .line 982
    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 983
    .line 984
    .line 985
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    .line 986
    .line 987
    .line 988
    return-void

    .line 989
    :pswitch_2b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$9;

    .line 993
    .line 994
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 995
    .line 996
    .line 997
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    .line 998
    .line 999
    .line 1000
    return-void

    .line 1001
    :pswitch_2c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$8;

    .line 1005
    .line 1006
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 1007
    .line 1008
    .line 1009
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createApIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    .line 1010
    .line 1011
    .line 1012
    return-void

    .line 1013
    :pswitch_2d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$7;

    .line 1017
    .line 1018
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 1019
    .line 1020
    .line 1021
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestFirmwareDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V

    .line 1022
    .line 1023
    .line 1024
    return-void

    .line 1025
    :pswitch_2e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$6;

    .line 1029
    .line 1030
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestDriverDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V

    .line 1034
    .line 1035
    .line 1036
    return-void

    .line 1037
    :pswitch_2f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$5;

    .line 1041
    .line 1042
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestChipDebugInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V

    .line 1046
    .line 1047
    .line 1048
    return-void

    .line 1049
    :pswitch_30
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$4;

    .line 1053
    .line 1054
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 1055
    .line 1056
    .line 1057
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getMode(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    .line 1058
    .line 1059
    .line 1060
    return-void

    .line 1061
    :pswitch_31
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 1065
    .line 1066
    .line 1067
    move-result p1

    .line 1068
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->configureChip(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 1069
    .line 1070
    .line 1071
    move-result-object p0

    .line 1072
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1079
    .line 1080
    .line 1081
    return-void

    .line 1082
    :pswitch_32
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$3;

    .line 1086
    .line 1087
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 1088
    .line 1089
    .line 1090
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getAvailableModes(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    .line 1091
    .line 1092
    .line 1093
    return-void

    .line 1094
    :pswitch_33
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$2;

    .line 1098
    .line 1099
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 1100
    .line 1101
    .line 1102
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V

    .line 1103
    .line 1104
    .line 1105
    return-void

    .line 1106
    :pswitch_34
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 1110
    .line 1111
    .line 1112
    move-result-object p1

    .line 1113
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;

    .line 1114
    .line 1115
    .line 1116
    move-result-object p1

    .line 1117
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 1118
    .line 1119
    .line 1120
    move-result-object p0

    .line 1121
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1128
    .line 1129
    .line 1130
    return-void

    .line 1131
    :pswitch_35
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$1;

    .line 1135
    .line 1136
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    .line 1137
    .line 1138
    .line 1139
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getId(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V

    .line 1140
    .line 1141
    .line 1142
    return-void

    .line 1143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    const-string v0, "android.hardware.wifi@1.6::IWifiChip"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "@Stub"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
