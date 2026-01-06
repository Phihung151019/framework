.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addBonjourService:I = 0x1

.field static final TRANSACTION_addGroup:I = 0x2

.field static final TRANSACTION_addGroupWithConfig:I = 0x3

.field static final TRANSACTION_addGroupWithConfigurationParams:I = 0x43

.field static final TRANSACTION_addNetwork:I = 0x4

.field static final TRANSACTION_addUpnpService:I = 0x5

.field static final TRANSACTION_cancelConnect:I = 0x6

.field static final TRANSACTION_cancelServiceDiscovery:I = 0x7

.field static final TRANSACTION_cancelWps:I = 0x8

.field static final TRANSACTION_configureEapolIpAddressAllocationParams:I = 0x3f

.field static final TRANSACTION_configureExtListen:I = 0x9

.field static final TRANSACTION_configureExtListenWithParams:I = 0x42

.field static final TRANSACTION_connect:I = 0xa

.field static final TRANSACTION_connectWithParams:I = 0x40

.field static final TRANSACTION_createGroupOwner:I = 0x44

.field static final TRANSACTION_createNfcHandoverRequestMessage:I = 0xb

.field static final TRANSACTION_createNfcHandoverSelectMessage:I = 0xc

.field static final TRANSACTION_enableWfd:I = 0xd

.field static final TRANSACTION_find:I = 0xe

.field static final TRANSACTION_findOnSocialChannels:I = 0x3c

.field static final TRANSACTION_findOnSpecificFrequency:I = 0x3d

.field static final TRANSACTION_findWithParams:I = 0x41

.field static final TRANSACTION_flush:I = 0xf

.field static final TRANSACTION_flushServices:I = 0x10

.field static final TRANSACTION_getDeviceAddress:I = 0x11

.field static final TRANSACTION_getEdmg:I = 0x12

.field static final TRANSACTION_getGroupCapability:I = 0x13

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getName:I = 0x14

.field static final TRANSACTION_getNetwork:I = 0x15

.field static final TRANSACTION_getSsid:I = 0x16

.field static final TRANSACTION_getType:I = 0x17

.field static final TRANSACTION_invite:I = 0x18

.field static final TRANSACTION_listNetworks:I = 0x19

.field static final TRANSACTION_provisionDiscovery:I = 0x1a

.field static final TRANSACTION_registerCallback:I = 0x1b

.field static final TRANSACTION_reinvoke:I = 0x1c

.field static final TRANSACTION_reject:I = 0x1d

.field static final TRANSACTION_removeBonjourService:I = 0x1e

.field static final TRANSACTION_removeClient:I = 0x30

.field static final TRANSACTION_removeGroup:I = 0x1f

.field static final TRANSACTION_removeNetwork:I = 0x20

.field static final TRANSACTION_removeUpnpService:I = 0x21

.field static final TRANSACTION_reportNfcHandoverInitiation:I = 0x22

.field static final TRANSACTION_reportNfcHandoverResponse:I = 0x23

.field static final TRANSACTION_requestServiceDiscovery:I = 0x24

.field static final TRANSACTION_saveConfig:I = 0x25

.field static final TRANSACTION_setDisallowedFrequencies:I = 0x26

.field static final TRANSACTION_setEdmg:I = 0x27

.field static final TRANSACTION_setGroupIdle:I = 0x28

.field static final TRANSACTION_setListenChannel:I = 0x29

.field static final TRANSACTION_setMacRandomization:I = 0x2a

.field static final TRANSACTION_setMiracastMode:I = 0x2b

.field static final TRANSACTION_setPowerSave:I = 0x2c

.field static final TRANSACTION_setSsidPostfix:I = 0x2d

.field static final TRANSACTION_setVendorElements:I = 0x3e

.field static final TRANSACTION_setWfdDeviceInfo:I = 0x2e

.field static final TRANSACTION_setWfdR2DeviceInfo:I = 0x2f

.field static final TRANSACTION_setWpsConfigMethods:I = 0x31

.field static final TRANSACTION_setWpsDeviceName:I = 0x32

.field static final TRANSACTION_setWpsDeviceType:I = 0x33

.field static final TRANSACTION_setWpsManufacturer:I = 0x34

.field static final TRANSACTION_setWpsModelName:I = 0x35

.field static final TRANSACTION_setWpsModelNumber:I = 0x36

.field static final TRANSACTION_setWpsSerialNumber:I = 0x37

.field static final TRANSACTION_startWpsPbc:I = 0x38

.field static final TRANSACTION_startWpsPinDisplay:I = 0x39

.field static final TRANSACTION_startWpsPinKeypad:I = 0x3a

.field static final TRANSACTION_stopFind:I = 0x3b


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->DESCRIPTOR:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->DESCRIPTOR:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0xffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v2, :cond_0

    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v3, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getInterfaceVersion()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_2
    const v0, 0xfffffe

    .line 37
    .line 38
    .line 39
    if-ne p1, v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getInterfaceHash()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :pswitch_0
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pCreateGroupOwnerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pCreateGroupOwnerInfo;

    .line 67
    .line 68
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->createGroupOwner(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pCreateGroupOwnerInfo;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :pswitch_1
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pAddGroupConfigurationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pAddGroupConfigurationParams;

    .line 83
    .line 84
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->addGroupWithConfigurationParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pAddGroupConfigurationParams;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :pswitch_2
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pExtListenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pExtListenInfo;

    .line 99
    .line 100
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->configureExtListenWithParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pExtListenInfo;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :pswitch_3
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDiscoveryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDiscoveryInfo;

    .line 115
    .line 116
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->findWithParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDiscoveryInfo;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :pswitch_4
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pConnectInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 125
    .line 126
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pConnectInfo;

    .line 131
    .line 132
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->connectWithParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pConnectInfo;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 149
    .line 150
    .line 151
    move-result p4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->configureEapolIpAddressAllocationParams(IIII)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setVendorElements(I[B)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->findOnSpecificFrequency(II)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->findOnSocialChannels(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :pswitch_9
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->stopFind()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->startWpsPinDisplay(Ljava/lang/String;[B)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->startWpsPbc(Ljava/lang/String;[B)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsSerialNumber(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsModelNumber(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsModelName(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsManufacturer(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsDeviceType([B)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsDeviceName(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_0

    .line 343
    .line 344
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsConfigMethods(I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 361
    .line 362
    .line 363
    move-result p2

    .line 364
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->removeClient([BZ)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWfdR2DeviceInfo([B)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_0

    .line 383
    .line 384
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWfdDeviceInfo([B)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setSsidPostfix([B)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_0

    .line 407
    .line 408
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 413
    .line 414
    .line 415
    move-result p2

    .line 416
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setPowerSave(Ljava/lang/String;Z)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_0

    .line 423
    .line 424
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setMiracastMode(B)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_0

    .line 435
    .line 436
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setMacRandomization(Z)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 453
    .line 454
    .line 455
    move-result p2

    .line 456
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setListenChannel(II)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_0

    .line 463
    .line 464
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 469
    .line 470
    .line 471
    move-result p2

    .line 472
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setGroupIdle(Ljava/lang/String;I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_0

    .line 479
    .line 480
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 481
    .line 482
    .line 483
    move-result p1

    .line 484
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setEdmg(Z)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_0

    .line 491
    .line 492
    :pswitch_1e
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/FreqRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 493
    .line 494
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    check-cast p1, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/FreqRange;

    .line 499
    .line 500
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setDisallowedFrequencies([Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/FreqRange;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    .line 505
    .line 506
    goto/16 :goto_0

    .line 507
    .line 508
    :pswitch_1f
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->saveConfig()V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    .line 513
    .line 514
    goto/16 :goto_0

    .line 515
    .line 516
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 521
    .line 522
    .line 523
    move-result-object p2

    .line 524
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->requestServiceDiscovery([B[B)J

    .line 525
    .line 526
    .line 527
    move-result-wide p0

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_0

    .line 535
    .line 536
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->reportNfcHandoverResponse([B)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_0

    .line 547
    .line 548
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->reportNfcHandoverInitiation([B)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_0

    .line 559
    .line 560
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 561
    .line 562
    .line 563
    move-result p1

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object p2

    .line 568
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->removeUpnpService(ILjava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_0

    .line 575
    .line 576
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 577
    .line 578
    .line 579
    move-result p1

    .line 580
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->removeNetwork(I)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    .line 585
    .line 586
    goto/16 :goto_0

    .line 587
    .line 588
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->removeGroup(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_0

    .line 599
    .line 600
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->removeBonjourService([B)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    .line 609
    .line 610
    goto/16 :goto_0

    .line 611
    .line 612
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->reject([B)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_0

    .line 623
    .line 624
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 625
    .line 626
    .line 627
    move-result p1

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 629
    .line 630
    .line 631
    move-result-object p2

    .line 632
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->reinvoke(I[B)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    .line 637
    .line 638
    goto/16 :goto_0

    .line 639
    .line 640
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 641
    .line 642
    .line 643
    move-result-object p1

    .line 644
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    .line 653
    .line 654
    goto/16 :goto_0

    .line 655
    .line 656
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 661
    .line 662
    .line 663
    move-result p2

    .line 664
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->provisionDiscovery([BI)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    .line 669
    .line 670
    goto/16 :goto_0

    .line 671
    .line 672
    :pswitch_2b
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->listNetworks()[I

    .line 673
    .line 674
    .line 675
    move-result-object p0

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    .line 678
    .line 679
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_0

    .line 683
    .line 684
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object p1

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 689
    .line 690
    .line 691
    move-result-object p4

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 693
    .line 694
    .line 695
    move-result-object p2

    .line 696
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->invite(Ljava/lang/String;[B[B)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    .line 701
    .line 702
    goto/16 :goto_0

    .line 703
    .line 704
    :pswitch_2d
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getType()I

    .line 705
    .line 706
    .line 707
    move-result p0

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    .line 710
    .line 711
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    .line 713
    .line 714
    goto/16 :goto_0

    .line 715
    .line 716
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getSsid([B)[B

    .line 721
    .line 722
    .line 723
    move-result-object p0

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    .line 726
    .line 727
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 728
    .line 729
    .line 730
    goto/16 :goto_0

    .line 731
    .line 732
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 733
    .line 734
    .line 735
    move-result p1

    .line 736
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;

    .line 737
    .line 738
    .line 739
    move-result-object p0

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 744
    .line 745
    .line 746
    goto/16 :goto_0

    .line 747
    .line 748
    :pswitch_30
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getName()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object p0

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    .line 754
    .line 755
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    goto/16 :goto_0

    .line 759
    .line 760
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 761
    .line 762
    .line 763
    move-result-object p1

    .line 764
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getGroupCapability([B)I

    .line 765
    .line 766
    .line 767
    move-result p0

    .line 768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    .line 770
    .line 771
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    .line 773
    .line 774
    goto/16 :goto_0

    .line 775
    .line 776
    :pswitch_32
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getEdmg()Z

    .line 777
    .line 778
    .line 779
    move-result p0

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    .line 782
    .line 783
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 784
    .line 785
    .line 786
    goto/16 :goto_0

    .line 787
    .line 788
    :pswitch_33
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getDeviceAddress()[B

    .line 789
    .line 790
    .line 791
    move-result-object p0

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    .line 794
    .line 795
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 796
    .line 797
    .line 798
    goto/16 :goto_0

    .line 799
    .line 800
    :pswitch_34
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->flushServices()V

    .line 801
    .line 802
    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    .line 805
    .line 806
    goto/16 :goto_0

    .line 807
    .line 808
    :pswitch_35
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->flush()V

    .line 809
    .line 810
    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    .line 813
    .line 814
    goto/16 :goto_0

    .line 815
    .line 816
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 817
    .line 818
    .line 819
    move-result p1

    .line 820
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->find(I)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    .line 825
    .line 826
    goto/16 :goto_0

    .line 827
    .line 828
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 829
    .line 830
    .line 831
    move-result p1

    .line 832
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->enableWfd(Z)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    .line 837
    .line 838
    goto/16 :goto_0

    .line 839
    .line 840
    :pswitch_38
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->createNfcHandoverSelectMessage()[B

    .line 841
    .line 842
    .line 843
    move-result-object p0

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    .line 846
    .line 847
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 848
    .line 849
    .line 850
    goto/16 :goto_0

    .line 851
    .line 852
    :pswitch_39
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->createNfcHandoverRequestMessage()[B

    .line 853
    .line 854
    .line 855
    move-result-object p0

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    .line 858
    .line 859
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 860
    .line 861
    .line 862
    goto/16 :goto_0

    .line 863
    .line 864
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 865
    .line 866
    .line 867
    move-result-object v4

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 869
    .line 870
    .line 871
    move-result v5

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v6

    .line 876
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 877
    .line 878
    .line 879
    move-result v7

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 881
    .line 882
    .line 883
    move-result v8

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 885
    .line 886
    .line 887
    move-result v9

    .line 888
    move-object v3, p0

    .line 889
    invoke-interface/range {v3 .. v9}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->connect([BILjava/lang/String;ZZI)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object p0

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    .line 895
    .line 896
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    goto/16 :goto_0

    .line 900
    .line 901
    :pswitch_3b
    move-object v3, p0

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 903
    .line 904
    .line 905
    move-result p0

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 907
    .line 908
    .line 909
    move-result p1

    .line 910
    invoke-interface {v3, p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->configureExtListen(II)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    .line 915
    .line 916
    goto/16 :goto_0

    .line 917
    .line 918
    :pswitch_3c
    move-object v3, p0

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object p0

    .line 923
    invoke-interface {v3, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->cancelWps(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    .line 928
    .line 929
    goto/16 :goto_0

    .line 930
    .line 931
    :pswitch_3d
    move-object v3, p0

    .line 932
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 933
    .line 934
    .line 935
    move-result-wide p0

    .line 936
    invoke-interface {v3, p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->cancelServiceDiscovery(J)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    .line 941
    .line 942
    goto :goto_0

    .line 943
    :pswitch_3e
    move-object v3, p0

    .line 944
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->cancelConnect()V

    .line 945
    .line 946
    .line 947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    .line 949
    .line 950
    goto :goto_0

    .line 951
    :pswitch_3f
    move-object v3, p0

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 953
    .line 954
    .line 955
    move-result p0

    .line 956
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object p1

    .line 960
    invoke-interface {v3, p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->addUpnpService(ILjava/lang/String;)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    .line 965
    .line 966
    goto :goto_0

    .line 967
    :pswitch_40
    move-object v3, p0

    .line 968
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->addNetwork()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;

    .line 969
    .line 970
    .line 971
    move-result-object p0

    .line 972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    .line 974
    .line 975
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 976
    .line 977
    .line 978
    goto :goto_0

    .line 979
    :pswitch_41
    move-object v3, p0

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 981
    .line 982
    .line 983
    move-result-object v4

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v5

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 989
    .line 990
    .line 991
    move-result v6

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 993
    .line 994
    .line 995
    move-result v7

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 997
    .line 998
    .line 999
    move-result-object v8

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1001
    .line 1002
    .line 1003
    move-result v9

    .line 1004
    invoke-interface/range {v3 .. v9}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->addGroupWithConfig([BLjava/lang/String;ZI[BZ)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    .line 1009
    .line 1010
    goto :goto_0

    .line 1011
    :pswitch_42
    move-object v3, p0

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1013
    .line 1014
    .line 1015
    move-result p0

    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1017
    .line 1018
    .line 1019
    move-result p1

    .line 1020
    invoke-interface {v3, p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->addGroup(ZI)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_0

    .line 1027
    :pswitch_43
    move-object v3, p0

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1029
    .line 1030
    .line 1031
    move-result-object p0

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1033
    .line 1034
    .line 1035
    move-result-object p1

    .line 1036
    invoke-interface {v3, p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->addBonjourService([B[B)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    .line 1041
    .line 1042
    :goto_0
    return v2

    .line 1043
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
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
.end method
