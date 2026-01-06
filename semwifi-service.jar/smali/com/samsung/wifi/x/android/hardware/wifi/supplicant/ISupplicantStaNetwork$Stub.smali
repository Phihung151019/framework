.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_disable:I = 0x1

.field static final TRANSACTION_disableEht:I = 0x60

.field static final TRANSACTION_enable:I = 0x2

.field static final TRANSACTION_enableSaePkOnlyMode:I = 0x3

.field static final TRANSACTION_enableSuiteBEapOpenSslCiphers:I = 0x4

.field static final TRANSACTION_enableTlsSuiteBEapPhase1Param:I = 0x5

.field static final TRANSACTION_getAuthAlg:I = 0x6

.field static final TRANSACTION_getBssid:I = 0x7

.field static final TRANSACTION_getEapAltSubjectMatch:I = 0x8

.field static final TRANSACTION_getEapAnonymousIdentity:I = 0x9

.field static final TRANSACTION_getEapCACert:I = 0xa

.field static final TRANSACTION_getEapCAPath:I = 0xb

.field static final TRANSACTION_getEapClientCert:I = 0xc

.field static final TRANSACTION_getEapDomainSuffixMatch:I = 0xd

.field static final TRANSACTION_getEapEngine:I = 0xe

.field static final TRANSACTION_getEapEngineId:I = 0xf

.field static final TRANSACTION_getEapIdentity:I = 0x10

.field static final TRANSACTION_getEapMethod:I = 0x11

.field static final TRANSACTION_getEapPassword:I = 0x12

.field static final TRANSACTION_getEapPhase2Method:I = 0x13

.field static final TRANSACTION_getEapPrivateKeyId:I = 0x14

.field static final TRANSACTION_getEapSubjectMatch:I = 0x15

.field static final TRANSACTION_getEdmg:I = 0x16

.field static final TRANSACTION_getGroupCipher:I = 0x17

.field static final TRANSACTION_getGroupMgmtCipher:I = 0x18

.field static final TRANSACTION_getId:I = 0x19

.field static final TRANSACTION_getIdStr:I = 0x1a

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceName:I = 0x1b

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getKeyMgmt:I = 0x1c

.field static final TRANSACTION_getOcsp:I = 0x1d

.field static final TRANSACTION_getPairwiseCipher:I = 0x1e

.field static final TRANSACTION_getProto:I = 0x1f

.field static final TRANSACTION_getPsk:I = 0x20

.field static final TRANSACTION_getPskPassphrase:I = 0x21

.field static final TRANSACTION_getRequirePmf:I = 0x22

.field static final TRANSACTION_getSaePassword:I = 0x23

.field static final TRANSACTION_getSaePasswordId:I = 0x24

.field static final TRANSACTION_getScanSsid:I = 0x25

.field static final TRANSACTION_getSsid:I = 0x26

.field static final TRANSACTION_getType:I = 0x27

.field static final TRANSACTION_getWapiCertSuite:I = 0x28

.field static final TRANSACTION_getWepKey:I = 0x29

.field static final TRANSACTION_getWepTxKeyIdx:I = 0x2a

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x2b

.field static final TRANSACTION_registerCallback:I = 0x2c

.field static final TRANSACTION_select:I = 0x2d

.field static final TRANSACTION_sendNetworkEapIdentityResponse:I = 0x2e

.field static final TRANSACTION_sendNetworkEapSimGsmAuthFailure:I = 0x2f

.field static final TRANSACTION_sendNetworkEapSimGsmAuthResponse:I = 0x30

.field static final TRANSACTION_sendNetworkEapSimUmtsAuthFailure:I = 0x31

.field static final TRANSACTION_sendNetworkEapSimUmtsAuthResponse:I = 0x32

.field static final TRANSACTION_sendNetworkEapSimUmtsAutsResponse:I = 0x33

.field static final TRANSACTION_setAuthAlg:I = 0x34

.field static final TRANSACTION_setBssid:I = 0x35

.field static final TRANSACTION_setDppKeys:I = 0x36

.field static final TRANSACTION_setEapAltSubjectMatch:I = 0x37

.field static final TRANSACTION_setEapAnonymousIdentity:I = 0x38

.field static final TRANSACTION_setEapCACert:I = 0x39

.field static final TRANSACTION_setEapCAPath:I = 0x3a

.field static final TRANSACTION_setEapClientCert:I = 0x3b

.field static final TRANSACTION_setEapDomainSuffixMatch:I = 0x3c

.field static final TRANSACTION_setEapEncryptedImsiIdentity:I = 0x3d

.field static final TRANSACTION_setEapEngine:I = 0x3e

.field static final TRANSACTION_setEapEngineID:I = 0x3f

.field static final TRANSACTION_setEapErp:I = 0x40

.field static final TRANSACTION_setEapIdentity:I = 0x41

.field static final TRANSACTION_setEapMethod:I = 0x42

.field static final TRANSACTION_setEapPassword:I = 0x43

.field static final TRANSACTION_setEapPhase2Method:I = 0x44

.field static final TRANSACTION_setEapPrivateKeyId:I = 0x45

.field static final TRANSACTION_setEapSubjectMatch:I = 0x46

.field static final TRANSACTION_setEdmg:I = 0x47

.field static final TRANSACTION_setGroupCipher:I = 0x48

.field static final TRANSACTION_setGroupMgmtCipher:I = 0x49

.field static final TRANSACTION_setIdStr:I = 0x4a

.field static final TRANSACTION_setKeyMgmt:I = 0x4b

.field static final TRANSACTION_setMinimumTlsVersionEapPhase1Param:I = 0x5e

.field static final TRANSACTION_setOcsp:I = 0x4c

.field static final TRANSACTION_setPairwiseCipher:I = 0x4d

.field static final TRANSACTION_setPmkCache:I = 0x4e

.field static final TRANSACTION_setProactiveKeyCaching:I = 0x4f

.field static final TRANSACTION_setProto:I = 0x50

.field static final TRANSACTION_setPsk:I = 0x51

.field static final TRANSACTION_setPskPassphrase:I = 0x52

.field static final TRANSACTION_setRequirePmf:I = 0x53

.field static final TRANSACTION_setRoamingConsortiumSelection:I = 0x5d

.field static final TRANSACTION_setSaeH2eMode:I = 0x54

.field static final TRANSACTION_setSaePassword:I = 0x55

.field static final TRANSACTION_setSaePasswordId:I = 0x56

.field static final TRANSACTION_setScanSsid:I = 0x57

.field static final TRANSACTION_setSsid:I = 0x58

.field static final TRANSACTION_setStrictConservativePeerMode:I = 0x5f

.field static final TRANSACTION_setUpdateIdentifier:I = 0x59

.field static final TRANSACTION_setVendorData:I = 0x61

.field static final TRANSACTION_setWapiCertSuite:I = 0x5a

.field static final TRANSACTION_setWepKey:I = 0x5b

.field static final TRANSACTION_setWepTxKeyIdx:I = 0x5c


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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;
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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

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
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

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
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getInterfaceVersion()I

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
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getInterfaceHash()Ljava/lang/String;

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
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, [Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    .line 67
    .line 68
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setVendorData([Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;)V

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
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->disableEht()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setStrictConservativePeerMode(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setMinimumTlsVersionEapPhase1Param(I)V

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
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setRoamingConsortiumSelection([B)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setWepTxKeyIdx(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setWepKey(I[B)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setWapiCertSuite(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setUpdateIdentifier(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setSsid([B)V

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
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setScanSsid(Z)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setSaePasswordId(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setSaePassword(Ljava/lang/String;)V

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
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setSaeH2eMode(B)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setRequirePmf(Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setPskPassphrase(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setPsk([B)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setProto(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setProactiveKeyCaching(Z)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setPmkCache([B)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setPairwiseCipher(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setOcsp(I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_0

    .line 327
    .line 328
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setKeyMgmt(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setIdStr(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setGroupMgmtCipher(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_0

    .line 363
    .line 364
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setGroupCipher(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEdmg(Z)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapSubjectMatch(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapPrivateKeyId(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_0

    .line 411
    .line 412
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapPhase2Method(I)V

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
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapPassword([B)V

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
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapMethod(I)V

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
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapIdentity([B)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 461
    .line 462
    .line 463
    move-result p1

    .line 464
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapErp(Z)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_0

    .line 471
    .line 472
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapEngineID(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_0

    .line 483
    .line 484
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 485
    .line 486
    .line 487
    move-result p1

    .line 488
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapEngine(Z)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    .line 493
    .line 494
    goto/16 :goto_0

    .line 495
    .line 496
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapEncryptedImsiIdentity([B)V

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
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapDomainSuffixMatch(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_0

    .line 519
    .line 520
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapClientCert(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    .line 529
    .line 530
    goto/16 :goto_0

    .line 531
    .line 532
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapCAPath(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_0

    .line 543
    .line 544
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapCACert(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_0

    .line 555
    .line 556
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapAnonymousIdentity([B)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_0

    .line 567
    .line 568
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapAltSubjectMatch(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_0

    .line 579
    .line 580
    :pswitch_2b
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 581
    .line 582
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;

    .line 587
    .line 588
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setDppKeys(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_0

    .line 595
    .line 596
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 597
    .line 598
    .line 599
    move-result-object p1

    .line 600
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setBssid([B)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    .line 605
    .line 606
    goto/16 :goto_0

    .line 607
    .line 608
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 609
    .line 610
    .line 611
    move-result p1

    .line 612
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setAuthAlg(I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    .line 617
    .line 618
    goto/16 :goto_0

    .line 619
    .line 620
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAutsResponse([B)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_0

    .line 631
    .line 632
    :pswitch_2f
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 633
    .line 634
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object p1

    .line 638
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;

    .line 639
    .line 640
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthResponse(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_0

    .line 647
    .line 648
    :pswitch_30
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthFailure()V

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
    :pswitch_31
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimGsmAuthParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 657
    .line 658
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    check-cast p1, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimGsmAuthParams;

    .line 663
    .line 664
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthResponse([Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimGsmAuthParams;)V

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
    :pswitch_32
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthFailure()V

    .line 673
    .line 674
    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_0

    .line 679
    .line 680
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 681
    .line 682
    .line 683
    move-result-object p1

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 685
    .line 686
    .line 687
    move-result-object p2

    .line 688
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapIdentityResponse([B[B)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    .line 693
    .line 694
    goto/16 :goto_0

    .line 695
    .line 696
    :pswitch_34
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->select()V

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
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 705
    .line 706
    .line 707
    move-result-object p1

    .line 708
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;

    .line 709
    .line 710
    .line 711
    move-result-object p1

    .line 712
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    .line 717
    .line 718
    goto/16 :goto_0

    .line 719
    .line 720
    :pswitch_36
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getWpsNfcConfigurationToken()[B

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
    :pswitch_37
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getWepTxKeyIdx()I

    .line 733
    .line 734
    .line 735
    move-result p0

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    .line 738
    .line 739
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    .line 741
    .line 742
    goto/16 :goto_0

    .line 743
    .line 744
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 745
    .line 746
    .line 747
    move-result p1

    .line 748
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getWepKey(I)[B

    .line 749
    .line 750
    .line 751
    move-result-object p0

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    .line 754
    .line 755
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 756
    .line 757
    .line 758
    goto/16 :goto_0

    .line 759
    .line 760
    :pswitch_39
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getWapiCertSuite()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object p0

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    .line 766
    .line 767
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    goto/16 :goto_0

    .line 771
    .line 772
    :pswitch_3a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getType()I

    .line 773
    .line 774
    .line 775
    move-result p0

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    .line 778
    .line 779
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    .line 781
    .line 782
    goto/16 :goto_0

    .line 783
    .line 784
    :pswitch_3b
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getSsid()[B

    .line 785
    .line 786
    .line 787
    move-result-object p0

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    .line 790
    .line 791
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_0

    .line 795
    .line 796
    :pswitch_3c
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getScanSsid()Z

    .line 797
    .line 798
    .line 799
    move-result p0

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    .line 802
    .line 803
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 804
    .line 805
    .line 806
    goto/16 :goto_0

    .line 807
    .line 808
    :pswitch_3d
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getSaePasswordId()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object p0

    .line 812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    .line 814
    .line 815
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    goto/16 :goto_0

    .line 819
    .line 820
    :pswitch_3e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getSaePassword()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object p0

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    goto/16 :goto_0

    .line 831
    .line 832
    :pswitch_3f
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getRequirePmf()Z

    .line 833
    .line 834
    .line 835
    move-result p0

    .line 836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    .line 838
    .line 839
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 840
    .line 841
    .line 842
    goto/16 :goto_0

    .line 843
    .line 844
    :pswitch_40
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getPskPassphrase()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object p0

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    .line 850
    .line 851
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    goto/16 :goto_0

    .line 855
    .line 856
    :pswitch_41
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getPsk()[B

    .line 857
    .line 858
    .line 859
    move-result-object p0

    .line 860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    .line 862
    .line 863
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 864
    .line 865
    .line 866
    goto/16 :goto_0

    .line 867
    .line 868
    :pswitch_42
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getProto()I

    .line 869
    .line 870
    .line 871
    move-result p0

    .line 872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    .line 874
    .line 875
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    .line 877
    .line 878
    goto/16 :goto_0

    .line 879
    .line 880
    :pswitch_43
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getPairwiseCipher()I

    .line 881
    .line 882
    .line 883
    move-result p0

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    .line 886
    .line 887
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    .line 889
    .line 890
    goto/16 :goto_0

    .line 891
    .line 892
    :pswitch_44
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getOcsp()I

    .line 893
    .line 894
    .line 895
    move-result p0

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    .line 898
    .line 899
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_0

    .line 903
    .line 904
    :pswitch_45
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getKeyMgmt()I

    .line 905
    .line 906
    .line 907
    move-result p0

    .line 908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    .line 910
    .line 911
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    .line 913
    .line 914
    goto/16 :goto_0

    .line 915
    .line 916
    :pswitch_46
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getInterfaceName()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object p0

    .line 920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    .line 922
    .line 923
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    goto/16 :goto_0

    .line 927
    .line 928
    :pswitch_47
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getIdStr()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object p0

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    .line 934
    .line 935
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    goto/16 :goto_0

    .line 939
    .line 940
    :pswitch_48
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getId()I

    .line 941
    .line 942
    .line 943
    move-result p0

    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    .line 946
    .line 947
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    .line 949
    .line 950
    goto/16 :goto_0

    .line 951
    .line 952
    :pswitch_49
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getGroupMgmtCipher()I

    .line 953
    .line 954
    .line 955
    move-result p0

    .line 956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    .line 958
    .line 959
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    .line 961
    .line 962
    goto/16 :goto_0

    .line 963
    .line 964
    :pswitch_4a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getGroupCipher()I

    .line 965
    .line 966
    .line 967
    move-result p0

    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    .line 970
    .line 971
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    .line 973
    .line 974
    goto/16 :goto_0

    .line 975
    .line 976
    :pswitch_4b
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEdmg()Z

    .line 977
    .line 978
    .line 979
    move-result p0

    .line 980
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    .line 982
    .line 983
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 984
    .line 985
    .line 986
    goto/16 :goto_0

    .line 987
    .line 988
    :pswitch_4c
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapSubjectMatch()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object p0

    .line 992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    .line 994
    .line 995
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    goto/16 :goto_0

    .line 999
    .line 1000
    :pswitch_4d
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapPrivateKeyId()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object p0

    .line 1004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    goto/16 :goto_0

    .line 1011
    .line 1012
    :pswitch_4e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapPhase2Method()I

    .line 1013
    .line 1014
    .line 1015
    move-result p0

    .line 1016
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    .line 1021
    .line 1022
    goto/16 :goto_0

    .line 1023
    .line 1024
    :pswitch_4f
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapPassword()[B

    .line 1025
    .line 1026
    .line 1027
    move-result-object p0

    .line 1028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1032
    .line 1033
    .line 1034
    goto/16 :goto_0

    .line 1035
    .line 1036
    :pswitch_50
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapMethod()I

    .line 1037
    .line 1038
    .line 1039
    move-result p0

    .line 1040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    .line 1045
    .line 1046
    goto/16 :goto_0

    .line 1047
    .line 1048
    :pswitch_51
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapIdentity()[B

    .line 1049
    .line 1050
    .line 1051
    move-result-object p0

    .line 1052
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1056
    .line 1057
    .line 1058
    goto/16 :goto_0

    .line 1059
    .line 1060
    :pswitch_52
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapEngineId()Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object p0

    .line 1064
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    goto/16 :goto_0

    .line 1071
    .line 1072
    :pswitch_53
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapEngine()Z

    .line 1073
    .line 1074
    .line 1075
    move-result p0

    .line 1076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1080
    .line 1081
    .line 1082
    goto/16 :goto_0

    .line 1083
    .line 1084
    :pswitch_54
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapDomainSuffixMatch()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object p0

    .line 1088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    goto/16 :goto_0

    .line 1095
    .line 1096
    :pswitch_55
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapClientCert()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object p0

    .line 1100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    goto/16 :goto_0

    .line 1107
    .line 1108
    :pswitch_56
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapCAPath()Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object p0

    .line 1112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    goto :goto_0

    .line 1119
    :pswitch_57
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapCACert()Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object p0

    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    goto :goto_0

    .line 1130
    :pswitch_58
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapAnonymousIdentity()[B

    .line 1131
    .line 1132
    .line 1133
    move-result-object p0

    .line 1134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1138
    .line 1139
    .line 1140
    goto :goto_0

    .line 1141
    :pswitch_59
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapAltSubjectMatch()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object p0

    .line 1145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    goto :goto_0

    .line 1152
    :pswitch_5a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getBssid()[B

    .line 1153
    .line 1154
    .line 1155
    move-result-object p0

    .line 1156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1160
    .line 1161
    .line 1162
    goto :goto_0

    .line 1163
    :pswitch_5b
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getAuthAlg()I

    .line 1164
    .line 1165
    .line 1166
    move-result p0

    .line 1167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    .line 1172
    .line 1173
    goto :goto_0

    .line 1174
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1175
    .line 1176
    .line 1177
    move-result p1

    .line 1178
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->enableTlsSuiteBEapPhase1Param(Z)V

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    .line 1183
    .line 1184
    goto :goto_0

    .line 1185
    :pswitch_5d
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->enableSuiteBEapOpenSslCiphers()V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    .line 1190
    .line 1191
    goto :goto_0

    .line 1192
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1193
    .line 1194
    .line 1195
    move-result p1

    .line 1196
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->enableSaePkOnlyMode(Z)V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1200
    .line 1201
    .line 1202
    goto :goto_0

    .line 1203
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1204
    .line 1205
    .line 1206
    move-result p1

    .line 1207
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->enable(Z)V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    .line 1212
    .line 1213
    goto :goto_0

    .line 1214
    :pswitch_60
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->disable()V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    .line 1219
    .line 1220
    :goto_0
    return v2

    .line 1221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
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
