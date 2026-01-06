.class public abstract Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;
.super Landroid/os/Binder;
.source "ISehPQCkeymaster.java"

# interfaces
.implements Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_begin:I = 0xb

.field static final TRANSACTION_checkDomainKeyStatus:I = 0xa

.field static final TRANSACTION_checkPreloadedKeyValidation:I = 0x9

.field static final TRANSACTION_deleteAllKey:I = 0x5

.field static final TRANSACTION_deleteKey:I = 0x4

.field static final TRANSACTION_exportKey:I = 0x6

.field static final TRANSACTION_generateKeyPair:I = 0x1

.field static final TRANSACTION_generateKeyPairEx:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_importKey:I = 0x7

.field static final TRANSACTION_isGenerateKeyAvailable:I = 0x3

.field static final TRANSACTION_manageProvisionedKey:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->markVintfStability()V

    .line 86
    sget-object v0, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster;

    if-eqz v1, :cond_1

    .line 99
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster;

    return-object v1

    .line 101
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 110
    sparse-switch p0, :sswitch_data_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 158
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 162
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 154
    :sswitch_2
    const-string v0, "begin"

    return-object v0

    .line 150
    :sswitch_3
    const-string v0, "checkDomainKeyStatus"

    return-object v0

    .line 146
    :sswitch_4
    const-string v0, "checkPreloadedKeyValidation"

    return-object v0

    .line 142
    :sswitch_5
    const-string v0, "manageProvisionedKey"

    return-object v0

    .line 138
    :sswitch_6
    const-string v0, "importKey"

    return-object v0

    .line 134
    :sswitch_7
    const-string v0, "exportKey"

    return-object v0

    .line 130
    :sswitch_8
    const-string v0, "deleteAllKey"

    return-object v0

    .line 126
    :sswitch_9
    const-string v0, "deleteKey"

    return-object v0

    .line 122
    :sswitch_a
    const-string v0, "isGenerateKeyAvailable"

    return-object v0

    .line 118
    :sswitch_b
    const-string v0, "generateKeyPairEx"

    return-object v0

    .line 114
    :sswitch_c
    const-string v0, "generateKeyPair"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 105
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 598
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 173
    invoke-static {p1}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    sget-object v0, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 178
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 182
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return v2

    .line 185
    :cond_1
    if-ne p1, v1, :cond_2

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return v2

    .line 190
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    return v2

    .line 195
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 288
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 292
    .local v3, "_arg1":[B
    sget-object v4, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    .line 293
    .local v4, "_arg2":[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v1, v3, v4}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->begin(I[B[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Lvendor/samsung/hardware/security/spqckeymaster/BeginResult;

    move-result-object v5

    .line 295
    .local v5, "_result":Lvendor/samsung/hardware/security/spqckeymaster/BeginResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 297
    goto/16 :goto_0

    .line 280
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .end local v5    # "_result":Lvendor/samsung/hardware/security/spqckeymaster/BeginResult;
    :pswitch_1
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->checkDomainKeyStatus()[B

    move-result-object v1

    .line 281
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 283
    goto/16 :goto_0

    .line 273
    .end local v1    # "_result":[B
    :pswitch_2
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->checkPreloadedKeyValidation()I

    move-result v1

    .line 274
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    goto/16 :goto_0

    .line 262
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 264
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->manageProvisionedKey(II)I

    move-result v4

    .line 267
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    goto :goto_0

    .line 252
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 253
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->importKey([B)I

    move-result v3

    .line 255
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    goto :goto_0

    .line 242
    .end local v1    # "_arg0":[B
    .end local v3    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 243
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->exportKey(I)[B

    move-result-object v3

    .line 245
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 247
    goto :goto_0

    .line 235
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_6
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->deleteAllKey()V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_0

    .line 227
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 228
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->deleteKey(I)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto :goto_0

    .line 219
    .end local v1    # "_arg0":I
    :pswitch_8
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->isGenerateKeyAvailable()I

    move-result v1

    .line 220
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    goto :goto_0

    .line 210
    .end local v1    # "_result":I
    :pswitch_9
    sget-object v1, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    .line 211
    .local v1, "_arg0":[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->generateKeyPairEx([Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Lvendor/samsung/hardware/security/spqckeymaster/PQCKeyCreationResult;

    move-result-object v3

    .line 213
    .local v3, "_result":Lvendor/samsung/hardware/security/spqckeymaster/PQCKeyCreationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 215
    goto :goto_0

    .line 200
    .end local v1    # "_arg0":[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .end local v3    # "_result":Lvendor/samsung/hardware/security/spqckeymaster/PQCKeyCreationResult;
    :pswitch_a
    sget-object v1, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    .line 201
    .restart local v1    # "_arg0":[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/security/spqckeymaster/ISehPQCkeymaster$Stub;->generateKeyPair([Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)Lvendor/samsung/hardware/security/spqckeymaster/PQCKeyCreationResult;

    move-result-object v3

    .line 203
    .restart local v3    # "_result":Lvendor/samsung/hardware/security/spqckeymaster/PQCKeyCreationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 205
    nop

    .line 304
    .end local v1    # "_arg0":[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .end local v3    # "_result":Lvendor/samsung/hardware/security/spqckeymaster/PQCKeyCreationResult;
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
