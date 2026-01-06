.class public abstract Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;
.super Landroid/os/Binder;
.source "IFabricCryptoService.java"

# interfaces
.implements Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_checkImportedBlobWithPassword:I = 0x15

.field static final TRANSACTION_decryptBegin:I = 0xc

.field static final TRANSACTION_decryptFinish:I = 0xf

.field static final TRANSACTION_decryptSalt:I = 0x21

.field static final TRANSACTION_decryptUpdate:I = 0xd

.field static final TRANSACTION_decryptUpdateAad:I = 0xe

.field static final TRANSACTION_deleteKey:I = 0x3

.field static final TRANSACTION_encryptBegin:I = 0x8

.field static final TRANSACTION_encryptFinish:I = 0xb

.field static final TRANSACTION_encryptUpdate:I = 0x9

.field static final TRANSACTION_encryptUpdateAad:I = 0xa

.field static final TRANSACTION_existKey:I = 0x6

.field static final TRANSACTION_exportKey:I = 0x16

.field static final TRANSACTION_exportKeyWithPassword:I = 0x17

.field static final TRANSACTION_exportKeyWithSecureImport:I = 0x18

.field static final TRANSACTION_exportKeyWithSecureImportSHA1:I = 0x19

.field static final TRANSACTION_exportPrivkeyData:I = 0x23

.field static final TRANSACTION_exportPubkeyData:I = 0x22

.field static final TRANSACTION_generateKey:I = 0x4

.field static final TRANSACTION_generateKeyPQ:I = 0x5

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getPQEncapKey:I = 0x2

.field static final TRANSACTION_getPublicKey:I = 0x1

.field static final TRANSACTION_importData:I = 0x24

.field static final TRANSACTION_importKey:I = 0x13

.field static final TRANSACTION_importKeyWithPassword:I = 0x14

.field static final TRANSACTION_keyAgreement:I = 0x1a

.field static final TRANSACTION_keyAgreementPQdecap:I = 0x1c

.field static final TRANSACTION_keyAgreementPQencap:I = 0x1b

.field static final TRANSACTION_keyDerivation:I = 0x1e

.field static final TRANSACTION_keyDerivationAlias:I = 0x1d

.field static final TRANSACTION_keyRecovery:I = 0x20

.field static final TRANSACTION_keyRegister:I = 0x1f

.field static final TRANSACTION_list:I = 0x7

.field static final TRANSACTION_signBegin:I = 0x10

.field static final TRANSACTION_signFinish:I = 0x12

.field static final TRANSACTION_signUpdate:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 187
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 188
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->markVintfStability()V

    .line 189
    sget-object v0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 197
    if-nez p0, :cond_0

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_0
    sget-object v0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 201
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;

    if-eqz v1, :cond_1

    .line 202
    move-object v1, v0

    check-cast v1, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;

    return-object v1

    .line 204
    :cond_1
    new-instance v1, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 213
    sparse-switch p0, :sswitch_data_0

    .line 369
    const/4 v0, 0x0

    return-object v0

    .line 361
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 365
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 357
    :sswitch_2
    const-string v0, "importData"

    return-object v0

    .line 353
    :sswitch_3
    const-string v0, "exportPrivkeyData"

    return-object v0

    .line 349
    :sswitch_4
    const-string v0, "exportPubkeyData"

    return-object v0

    .line 345
    :sswitch_5
    const-string v0, "decryptSalt"

    return-object v0

    .line 341
    :sswitch_6
    const-string v0, "keyRecovery"

    return-object v0

    .line 337
    :sswitch_7
    const-string v0, "keyRegister"

    return-object v0

    .line 333
    :sswitch_8
    const-string v0, "keyDerivation"

    return-object v0

    .line 329
    :sswitch_9
    const-string v0, "keyDerivationAlias"

    return-object v0

    .line 325
    :sswitch_a
    const-string v0, "keyAgreementPQdecap"

    return-object v0

    .line 321
    :sswitch_b
    const-string v0, "keyAgreementPQencap"

    return-object v0

    .line 317
    :sswitch_c
    const-string v0, "keyAgreement"

    return-object v0

    .line 313
    :sswitch_d
    const-string v0, "exportKeyWithSecureImportSHA1"

    return-object v0

    .line 309
    :sswitch_e
    const-string v0, "exportKeyWithSecureImport"

    return-object v0

    .line 305
    :sswitch_f
    const-string v0, "exportKeyWithPassword"

    return-object v0

    .line 301
    :sswitch_10
    const-string v0, "exportKey"

    return-object v0

    .line 297
    :sswitch_11
    const-string v0, "checkImportedBlobWithPassword"

    return-object v0

    .line 293
    :sswitch_12
    const-string v0, "importKeyWithPassword"

    return-object v0

    .line 289
    :sswitch_13
    const-string v0, "importKey"

    return-object v0

    .line 285
    :sswitch_14
    const-string v0, "signFinish"

    return-object v0

    .line 281
    :sswitch_15
    const-string v0, "signUpdate"

    return-object v0

    .line 277
    :sswitch_16
    const-string v0, "signBegin"

    return-object v0

    .line 273
    :sswitch_17
    const-string v0, "decryptFinish"

    return-object v0

    .line 269
    :sswitch_18
    const-string v0, "decryptUpdateAad"

    return-object v0

    .line 265
    :sswitch_19
    const-string v0, "decryptUpdate"

    return-object v0

    .line 261
    :sswitch_1a
    const-string v0, "decryptBegin"

    return-object v0

    .line 257
    :sswitch_1b
    const-string v0, "encryptFinish"

    return-object v0

    .line 253
    :sswitch_1c
    const-string v0, "encryptUpdateAad"

    return-object v0

    .line 249
    :sswitch_1d
    const-string v0, "encryptUpdate"

    return-object v0

    .line 245
    :sswitch_1e
    const-string v0, "encryptBegin"

    return-object v0

    .line 241
    :sswitch_1f
    const-string v0, "list"

    return-object v0

    .line 237
    :sswitch_20
    const-string v0, "existKey"

    return-object v0

    .line 233
    :sswitch_21
    const-string v0, "generateKeyPQ"

    return-object v0

    .line 229
    :sswitch_22
    const-string v0, "generateKey"

    return-object v0

    .line 225
    :sswitch_23
    const-string v0, "deleteKey"

    return-object v0

    .line 221
    :sswitch_24
    const-string v0, "getPQEncapKey"

    return-object v0

    .line 217
    :sswitch_25
    const-string v0, "getPublicKey"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_24
        0x3 -> :sswitch_23
        0x4 -> :sswitch_22
        0x5 -> :sswitch_21
        0x6 -> :sswitch_20
        0x7 -> :sswitch_1f
        0x8 -> :sswitch_1e
        0x9 -> :sswitch_1d
        0xa -> :sswitch_1c
        0xb -> :sswitch_1b
        0xc -> :sswitch_1a
        0xd -> :sswitch_19
        0xe -> :sswitch_18
        0xf -> :sswitch_17
        0x10 -> :sswitch_16
        0x11 -> :sswitch_15
        0x12 -> :sswitch_14
        0x13 -> :sswitch_13
        0x14 -> :sswitch_12
        0x15 -> :sswitch_11
        0x16 -> :sswitch_10
        0x17 -> :sswitch_f
        0x18 -> :sswitch_e
        0x19 -> :sswitch_d
        0x1a -> :sswitch_c
        0x1b -> :sswitch_b
        0x1c -> :sswitch_a
        0x1d -> :sswitch_9
        0x1e -> :sswitch_8
        0x1f -> :sswitch_7
        0x20 -> :sswitch_6
        0x21 -> :sswitch_5
        0x22 -> :sswitch_4
        0x23 -> :sswitch_3
        0x24 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 208
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 1810
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 376
    invoke-static {p1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget-object v12, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 381
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0xffffff

    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    if-gt v9, v0, :cond_0

    .line 382
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    :cond_0
    const v1, 0x5f4e5446

    if-ne v9, v1, :cond_1

    .line 385
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    return v13

    .line 388
    :cond_1
    if-ne v9, v0, :cond_2

    .line 389
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    return v13

    .line 393
    :cond_2
    const v0, 0xfffffe

    if-ne v9, v0, :cond_3

    .line 394
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    return v13

    .line 398
    :cond_3
    packed-switch v9, :pswitch_data_0

    .line 891
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 874
    :pswitch_0
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 878
    .local v2, "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 880
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v0, Lcom/samsung/security/fabric/cryptod/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 882
    .local v4, "_arg3":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 883
    .local v5, "_arg4":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->importData(Ljava/lang/String;[BLjava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;[B)I

    move-result v6

    .line 885
    .local v6, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    goto/16 :goto_0

    .line 862
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local v5    # "_arg4":[B
    .end local v6    # "_result":I
    :pswitch_1
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 864
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->exportPrivkeyData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 867
    .local v3, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 869
    goto/16 :goto_0

    .line 848
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_2
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 850
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 852
    .local v2, "_arg1":[B
    sget-object v3, Lcom/samsung/security/fabric/cryptod/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 853
    .local v3, "_arg2":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->exportPubkeyData(Ljava/lang/String;[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)[B

    move-result-object v4

    .line 855
    .local v4, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 857
    goto/16 :goto_0

    .line 836
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local v4    # "_result":[B
    :pswitch_3
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 838
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 839
    .restart local v2    # "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->decryptSalt(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 841
    .local v3, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 843
    goto/16 :goto_0

    .line 818
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":[B
    :pswitch_4
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 820
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 826
    .local v4, "_arg3":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 827
    .restart local v5    # "_arg4":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->keyRecovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)I

    move-result v6

    .line 829
    .restart local v6    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    goto/16 :goto_0

    .line 802
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[B
    .end local v6    # "_result":I
    :pswitch_5
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 804
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 806
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 808
    .local v3, "_arg2":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 809
    .restart local v4    # "_arg3":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->keyRegister(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v5

    .line 811
    .local v5, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 813
    goto/16 :goto_0

    .line 790
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":[B
    :pswitch_6
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 792
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 793
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->keyDerivation([BI)[B

    move-result-object v3

    .line 795
    .local v3, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 797
    goto/16 :goto_0

    .line 772
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_7
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 774
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 776
    .local v2, "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 778
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 780
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Lcom/samsung/security/fabric/cryptod/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 781
    .local v5, "_arg4":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->keyDerivationAlias([B[BLjava/lang/String;Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v6

    .line 783
    .restart local v6    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    goto/16 :goto_0

    .line 748
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local v6    # "_result":I
    :pswitch_8
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 752
    .restart local v2    # "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 754
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 756
    .local v4, "_arg3":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 758
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 760
    .local v6, "_arg5":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 762
    .local v7, "_arg6":[B
    sget-object v0, Lcom/samsung/security/fabric/cryptod/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 763
    .local v8, "_arg7":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->keyAgreementPQdecap(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v14

    .line 765
    .local v14, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    goto/16 :goto_0

    .line 726
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":[B
    .end local v7    # "_arg6":[B
    .end local v8    # "_arg7":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local v14    # "_result":I
    :pswitch_9
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 728
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 732
    .local v3, "_arg2":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 734
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 736
    .local v5, "_arg4":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 738
    .restart local v6    # "_arg5":[B
    sget-object v0, Lcom/samsung/security/fabric/cryptod/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 739
    .local v7, "_arg6":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->keyAgreementPQencap([BLjava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)[B

    move-result-object v8

    .line 741
    .local v8, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 743
    goto/16 :goto_0

    .line 706
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":[B
    .end local v7    # "_arg6":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local v8    # "_result":[B
    :pswitch_a
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 710
    .local v2, "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 714
    .local v4, "_arg3":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 716
    .restart local v5    # "_arg4":[B
    sget-object v0, Lcom/samsung/security/fabric/cryptod/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 717
    .local v6, "_arg5":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->keyAgreement(Ljava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v7

    .line 719
    .local v7, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    goto/16 :goto_0

    .line 694
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local v7    # "_result":I
    :pswitch_b
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 696
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 697
    .restart local v2    # "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->exportKeyWithSecureImportSHA1(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 699
    .local v3, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 701
    goto/16 :goto_0

    .line 682
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":[B
    :pswitch_c
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 684
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 685
    .restart local v2    # "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->exportKeyWithSecureImport(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 687
    .restart local v3    # "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 689
    goto/16 :goto_0

    .line 668
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":[B
    :pswitch_d
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 670
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 672
    .restart local v2    # "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 673
    .local v3, "_arg2":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->exportKeyWithPassword(Ljava/lang/String;[B[B)[B

    move-result-object v4

    .line 675
    .local v4, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 677
    goto/16 :goto_0

    .line 654
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_result":[B
    :pswitch_e
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 656
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 659
    .restart local v3    # "_arg2":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->exportKey(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    .line 661
    .restart local v4    # "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 663
    goto/16 :goto_0

    .line 640
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v4    # "_result":[B
    :pswitch_f
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 642
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 644
    .local v2, "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 645
    .restart local v3    # "_arg2":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->checkImportedBlobWithPassword([B[B[B)I

    move-result v4

    .line 647
    .local v4, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    goto/16 :goto_0

    .line 624
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_result":I
    :pswitch_10
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 628
    .restart local v2    # "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 630
    .restart local v3    # "_arg2":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 631
    .local v4, "_arg3":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->importKeyWithPassword(Ljava/lang/String;[B[B[B)I

    move-result v5

    .line 633
    .local v5, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    goto/16 :goto_0

    .line 608
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":I
    :pswitch_11
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 610
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 612
    .restart local v2    # "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 615
    .restart local v4    # "_arg3":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->importKey(Ljava/lang/String;[BLjava/lang/String;[B)I

    move-result v5

    .line 617
    .restart local v5    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    goto/16 :goto_0

    .line 596
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":I
    :pswitch_12
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 598
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 599
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->signFinish([BI)[B

    move-result-object v3

    .line 601
    .local v3, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 603
    goto/16 :goto_0

    .line 584
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_13
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 586
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 587
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->signUpdate([BI)I

    move-result v3

    .line 589
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    goto/16 :goto_0

    .line 572
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_14
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/samsung/security/fabric/cryptod/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 575
    .local v2, "_arg1":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->signBegin(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v3

    .line 577
    .restart local v3    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    goto/16 :goto_0

    .line 560
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local v3    # "_result":I
    :pswitch_15
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 562
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 563
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->decryptFinish([BI)[B

    move-result-object v3

    .line 565
    .local v3, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 567
    goto/16 :goto_0

    .line 548
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_16
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 550
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 551
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->decryptUpdateAad([BI)I

    move-result v3

    .line 553
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    goto/16 :goto_0

    .line 536
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_17
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 538
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->decryptUpdate([BI)[B

    move-result-object v3

    .line 541
    .local v3, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 543
    goto/16 :goto_0

    .line 522
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_18
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 526
    .local v2, "_arg1":[B
    sget-object v3, Lcom/samsung/security/fabric/cryptod/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 527
    .local v3, "_arg2":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->decryptBegin(Ljava/lang/String;[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v4

    .line 529
    .local v4, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    goto/16 :goto_0

    .line 510
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local v4    # "_result":I
    :pswitch_19
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 512
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 513
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->encryptFinish([BI)[B

    move-result-object v3

    .line 515
    .local v3, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 517
    goto/16 :goto_0

    .line 498
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_1a
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 500
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 501
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->encryptUpdateAad([BI)I

    move-result v3

    .line 503
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    goto/16 :goto_0

    .line 486
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_1b
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 488
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 489
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->encryptUpdate([BI)[B

    move-result-object v3

    .line 491
    .local v3, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 493
    goto/16 :goto_0

    .line 474
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_1c
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/samsung/security/fabric/cryptod/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 477
    .local v2, "_arg1":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->encryptBegin(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)Lcom/samsung/security/fabric/cryptod/OperationResult;

    move-result-object v3

    .line 479
    .local v3, "_result":Lcom/samsung/security/fabric/cryptod/OperationResult;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 481
    goto/16 :goto_0

    .line 466
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local v3    # "_result":Lcom/samsung/security/fabric/cryptod/OperationResult;
    :pswitch_1d
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->list()[Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 469
    goto/16 :goto_0

    .line 457
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_1e
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {p0, v1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->existKey(Ljava/lang/String;)I

    move-result v2

    .line 460
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    goto :goto_0

    .line 445
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_1f
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 447
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/samsung/security/fabric/cryptod/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 448
    .local v2, "_arg1":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->generateKeyPQ(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v3

    .line 450
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    goto :goto_0

    .line 433
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local v3    # "_result":I
    :pswitch_20
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/samsung/security/fabric/cryptod/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/security/fabric/cryptod/KeyParameter;

    .line 436
    .restart local v2    # "_arg1":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v1, v2}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->generateKey(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I

    move-result v3

    .line 438
    .restart local v3    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    goto :goto_0

    .line 423
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local v3    # "_result":I
    :pswitch_21
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->deleteKey(Ljava/lang/String;)I

    move-result v2

    .line 426
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    goto :goto_0

    .line 413
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_22
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->getPQEncapKey(Ljava/lang/String;)[B

    move-result-object v2

    .line 416
    .local v2, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 418
    goto :goto_0

    .line 403
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[B
    :pswitch_23
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, v1}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;->getPublicKey(Ljava/lang/String;)[B

    move-result-object v2

    .line 406
    .restart local v2    # "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 408
    nop

    .line 894
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[B
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
