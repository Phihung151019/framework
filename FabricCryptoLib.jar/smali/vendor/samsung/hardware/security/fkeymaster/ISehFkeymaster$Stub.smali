.class public abstract Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;
.super Landroid/os/Binder;
.source "ISehFkeymaster.java"

# interfaces
.implements Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_decryptBegin:I = 0xd

.field static final TRANSACTION_decryptFinish:I = 0x10

.field static final TRANSACTION_decryptSalt:I = 0x19

.field static final TRANSACTION_decryptUpdate:I = 0xe

.field static final TRANSACTION_decryptUpdateAad:I = 0xf

.field static final TRANSACTION_ecdh:I = 0x5

.field static final TRANSACTION_ecdhPQDec:I = 0x7

.field static final TRANSACTION_ecdhPQEnc:I = 0x6

.field static final TRANSACTION_encryptBegin:I = 0x9

.field static final TRANSACTION_encryptFinish:I = 0xc

.field static final TRANSACTION_encryptRSA:I = 0x1c

.field static final TRANSACTION_encryptUpdate:I = 0xa

.field static final TRANSACTION_encryptUpdateAad:I = 0xb

.field static final TRANSACTION_exportData:I = 0x1a

.field static final TRANSACTION_exportKey:I = 0x3

.field static final TRANSACTION_generateKey:I = 0x1

.field static final TRANSACTION_generateKeyPQ:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_importData:I = 0x1b

.field static final TRANSACTION_importKey:I = 0x4

.field static final TRANSACTION_kdf:I = 0x8

.field static final TRANSACTION_keyDerivation:I = 0x16

.field static final TRANSACTION_keyRecovery:I = 0x18

.field static final TRANSACTION_keyRegister:I = 0x17

.field static final TRANSACTION_secureImportKey:I = 0x14

.field static final TRANSACTION_secureImportKeySHA1:I = 0x15

.field static final TRANSACTION_signBegin:I = 0x11

.field static final TRANSACTION_signFinish:I = 0x13

.field static final TRANSACTION_signUpdate:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 152
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->markVintfStability()V

    .line 153
    sget-object v0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 161
    if-nez p0, :cond_0

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 165
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster;

    if-eqz v1, :cond_1

    .line 166
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster;

    return-object v1

    .line 168
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 177
    sparse-switch p0, :sswitch_data_0

    .line 301
    const/4 v0, 0x0

    return-object v0

    .line 293
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 297
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 289
    :sswitch_2
    const-string v0, "encryptRSA"

    return-object v0

    .line 285
    :sswitch_3
    const-string v0, "importData"

    return-object v0

    .line 281
    :sswitch_4
    const-string v0, "exportData"

    return-object v0

    .line 277
    :sswitch_5
    const-string v0, "decryptSalt"

    return-object v0

    .line 273
    :sswitch_6
    const-string v0, "keyRecovery"

    return-object v0

    .line 269
    :sswitch_7
    const-string v0, "keyRegister"

    return-object v0

    .line 265
    :sswitch_8
    const-string v0, "keyDerivation"

    return-object v0

    .line 261
    :sswitch_9
    const-string v0, "secureImportKeySHA1"

    return-object v0

    .line 257
    :sswitch_a
    const-string v0, "secureImportKey"

    return-object v0

    .line 253
    :sswitch_b
    const-string v0, "signFinish"

    return-object v0

    .line 249
    :sswitch_c
    const-string v0, "signUpdate"

    return-object v0

    .line 245
    :sswitch_d
    const-string v0, "signBegin"

    return-object v0

    .line 241
    :sswitch_e
    const-string v0, "decryptFinish"

    return-object v0

    .line 237
    :sswitch_f
    const-string v0, "decryptUpdateAad"

    return-object v0

    .line 233
    :sswitch_10
    const-string v0, "decryptUpdate"

    return-object v0

    .line 229
    :sswitch_11
    const-string v0, "decryptBegin"

    return-object v0

    .line 225
    :sswitch_12
    const-string v0, "encryptFinish"

    return-object v0

    .line 221
    :sswitch_13
    const-string v0, "encryptUpdateAad"

    return-object v0

    .line 217
    :sswitch_14
    const-string v0, "encryptUpdate"

    return-object v0

    .line 213
    :sswitch_15
    const-string v0, "encryptBegin"

    return-object v0

    .line 209
    :sswitch_16
    const-string v0, "kdf"

    return-object v0

    .line 205
    :sswitch_17
    const-string v0, "ecdhPQDec"

    return-object v0

    .line 201
    :sswitch_18
    const-string v0, "ecdhPQEnc"

    return-object v0

    .line 197
    :sswitch_19
    const-string v0, "ecdh"

    return-object v0

    .line 193
    :sswitch_1a
    const-string v0, "importKey"

    return-object v0

    .line 189
    :sswitch_1b
    const-string v0, "exportKey"

    return-object v0

    .line 185
    :sswitch_1c
    const-string v0, "generateKeyPQ"

    return-object v0

    .line 181
    :sswitch_1d
    const-string v0, "generateKey"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_1b
        0x4 -> :sswitch_1a
        0x5 -> :sswitch_19
        0x6 -> :sswitch_18
        0x7 -> :sswitch_17
        0x8 -> :sswitch_16
        0x9 -> :sswitch_15
        0xa -> :sswitch_14
        0xb -> :sswitch_13
        0xc -> :sswitch_12
        0xd -> :sswitch_11
        0xe -> :sswitch_10
        0xf -> :sswitch_f
        0x10 -> :sswitch_e
        0x11 -> :sswitch_d
        0x12 -> :sswitch_c
        0x13 -> :sswitch_b
        0x14 -> :sswitch_a
        0x15 -> :sswitch_9
        0x16 -> :sswitch_8
        0x17 -> :sswitch_7
        0x18 -> :sswitch_6
        0x19 -> :sswitch_5
        0x1a -> :sswitch_4
        0x1b -> :sswitch_3
        0x1c -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 172
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 1472
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 308
    invoke-static {p1}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 312
    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    sget-object v11, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 313
    .local v11, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    if-gt v8, v1, :cond_0

    .line 314
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    :cond_0
    const v2, 0x5f4e5446

    if-ne v8, v2, :cond_1

    .line 317
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    return v12

    .line 320
    :cond_1
    if-ne v8, v1, :cond_2

    .line 321
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    return v12

    .line 325
    :cond_2
    const v1, 0xfffffe

    if-ne v8, v1, :cond_3

    .line 326
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    return v12

    .line 330
    :cond_3
    const-string v1, "Array too large: "

    const v2, 0xf4240

    packed-switch v8, :pswitch_data_0

    .line 745
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 734
    :pswitch_0
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 736
    .local v1, "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 737
    .local v2, "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->encryptRSA([B[B)[B

    move-result-object v3

    .line 739
    .local v3, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 741
    goto/16 :goto_3

    .line 718
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":[B
    :pswitch_1
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 720
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 722
    .restart local v2    # "_arg1":[B
    sget-object v3, Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;

    .line 724
    .local v3, "_arg2":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 725
    .local v4, "_arg3":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->importData([B[B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B)[B

    move-result-object v5

    .line 727
    .local v5, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 729
    goto/16 :goto_3

    .line 702
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":[B
    :pswitch_2
    sget-object v1, Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;

    .line 704
    .local v1, "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 706
    .restart local v2    # "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 708
    .local v3, "_arg2":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 709
    .restart local v4    # "_arg3":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->exportData([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B)[B

    move-result-object v5

    .line 711
    .restart local v5    # "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 713
    goto/16 :goto_3

    .line 690
    .end local v1    # "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":[B
    :pswitch_3
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 692
    .local v1, "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 693
    .restart local v2    # "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->decryptSalt([B[B)[B

    move-result-object v3

    .line 695
    .local v3, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 697
    goto/16 :goto_3

    .line 666
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":[B
    :pswitch_4
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 668
    .local v3, "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 670
    .local v4, "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 672
    .local v5, "_arg2":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 673
    .local v6, "_arg3_length":I
    if-gt v6, v2, :cond_5

    .line 675
    if-gez v6, :cond_4

    .line 676
    const/4 v1, 0x0

    .local v1, "_arg3":[B
    goto :goto_0

    .line 678
    .end local v1    # "_arg3":[B
    :cond_4
    new-array v1, v6, [B

    .line 680
    .restart local v1    # "_arg3":[B
    :goto_0
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {p0, v3, v4, v5, v1}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->keyRecovery([B[B[B[B)[B

    move-result-object v2

    .line 682
    .local v2, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 684
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 685
    goto/16 :goto_3

    .line 674
    .end local v1    # "_arg3":[B
    .end local v2    # "_result":[B
    :cond_5
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    .end local v3    # "_arg0":[B
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3_length":I
    :pswitch_5
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 652
    .local v1, "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 654
    .local v2, "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 656
    .local v3, "_arg2":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 657
    .local v4, "_arg3":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->keyRegister([B[B[B[B)[B

    move-result-object v5

    .line 659
    .local v5, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 661
    goto/16 :goto_3

    .line 638
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":[B
    :pswitch_6
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 640
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 641
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->keyDerivation([BI)[B

    move-result-object v3

    .line 643
    .local v3, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 645
    goto/16 :goto_3

    .line 626
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_7
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 628
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 629
    .local v2, "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->secureImportKeySHA1([B[B)[B

    move-result-object v3

    .line 631
    .restart local v3    # "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 633
    goto/16 :goto_3

    .line 614
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":[B
    :pswitch_8
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 616
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 617
    .restart local v2    # "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->secureImportKey([B[B)[B

    move-result-object v3

    .line 619
    .restart local v3    # "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 621
    goto/16 :goto_3

    .line 602
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":[B
    :pswitch_9
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 604
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 605
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->signFinish([BI)[B

    move-result-object v3

    .line 607
    .restart local v3    # "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 609
    goto/16 :goto_3

    .line 591
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_a
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 593
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 594
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->signUpdate([BI)V

    .line 596
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    goto/16 :goto_3

    .line 579
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :pswitch_b
    sget-object v1, Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;

    .line 581
    .local v1, "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 582
    .local v2, "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->signBegin([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B)I

    move-result v3

    .line 584
    .local v3, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    goto/16 :goto_3

    .line 567
    .end local v1    # "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":I
    :pswitch_c
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 569
    .local v1, "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 570
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->decryptFinish([BI)[B

    move-result-object v3

    .line 572
    .local v3, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 574
    goto/16 :goto_3

    .line 556
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_d
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 558
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 559
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->decryptUpdateAad([BI)V

    .line 561
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    goto/16 :goto_3

    .line 544
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :pswitch_e
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 546
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 547
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->decryptUpdate([BI)[B

    move-result-object v3

    .line 549
    .restart local v3    # "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 551
    goto/16 :goto_3

    .line 530
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_f
    sget-object v1, Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;

    .line 532
    .local v1, "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 534
    .local v2, "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 535
    .local v3, "_arg2":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v1, v2, v3}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->decryptBegin([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B)I

    move-result v4

    .line 537
    .local v4, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    goto/16 :goto_3

    .line 518
    .end local v1    # "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_result":I
    :pswitch_10
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 520
    .local v1, "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 521
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->encryptFinish([BI)[B

    move-result-object v3

    .line 523
    .local v3, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 525
    goto/16 :goto_3

    .line 507
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_11
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 509
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 510
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->encryptUpdateAad([BI)V

    .line 512
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto/16 :goto_3

    .line 495
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :pswitch_12
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 497
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v1, v2}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->encryptUpdate([BI)[B

    move-result-object v3

    .line 500
    .restart local v3    # "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 502
    goto/16 :goto_3

    .line 473
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_13
    sget-object v3, Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;

    .line 475
    .local v3, "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 477
    .local v4, "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 478
    .local v5, "_arg2_length":I
    if-gt v5, v2, :cond_7

    .line 480
    if-gez v5, :cond_6

    .line 481
    const/4 v1, 0x0

    .local v1, "_arg2":[B
    goto :goto_1

    .line 483
    .end local v1    # "_arg2":[B
    :cond_6
    new-array v1, v5, [B

    .line 485
    .restart local v1    # "_arg2":[B
    :goto_1
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v3, v4, v1}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->encryptBegin([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B)I

    move-result v2

    .line 487
    .local v2, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 490
    goto/16 :goto_3

    .line 479
    .end local v1    # "_arg2":[B
    .end local v2    # "_result":I
    :cond_7
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    .end local v3    # "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2_length":I
    :pswitch_14
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 459
    .local v1, "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 461
    .local v2, "_arg1":[B
    sget-object v3, Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;

    .line 463
    .local v3, "_arg2":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 464
    .local v4, "_arg3":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->kdf([B[B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B)[B

    move-result-object v5

    .line 466
    .local v5, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 468
    goto/16 :goto_3

    .line 435
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":[B
    :pswitch_15
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 437
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 439
    .restart local v2    # "_arg1":[B
    sget-object v3, Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;

    .line 441
    .restart local v3    # "_arg2":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 443
    .restart local v4    # "_arg3":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 445
    .local v5, "_arg4":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 447
    .local v6, "_arg5":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 448
    .local v7, "_arg6":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->ecdhPQDec([B[B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B[B)[B

    move-result-object v13

    .line 450
    .local v13, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 452
    goto/16 :goto_3

    .line 405
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":[B
    .end local v7    # "_arg6":[B
    .end local v13    # "_result":[B
    :pswitch_16
    move-object v0, v1

    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 407
    .restart local v1    # "_arg0":[B
    sget-object v3, Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;

    .line 409
    .local v3, "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    move-object v4, v3

    .end local v3    # "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .local v4, "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 411
    .local v3, "_arg2":[B
    move-object v5, v4

    .end local v4    # "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .local v5, "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 413
    .local v4, "_arg3":[B
    move-object v6, v5

    .end local v5    # "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .local v6, "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 415
    .local v5, "_arg4":[B
    move-object v7, v6

    .end local v6    # "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .local v7, "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 417
    .local v6, "_arg5":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 418
    .local v13, "_arg6_length":I
    if-gt v13, v2, :cond_9

    .line 420
    if-gez v13, :cond_8

    .line 421
    const/4 v0, 0x0

    .local v0, "_arg6":[B
    goto :goto_2

    .line 423
    .end local v0    # "_arg6":[B
    :cond_8
    new-array v0, v13, [B

    .line 425
    .restart local v0    # "_arg6":[B
    :goto_2
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    move-object v2, v7

    move-object v7, v0

    move-object v0, p0

    .end local v0    # "_arg6":[B
    .local v2, "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .local v7, "_arg6":[B
    invoke-virtual/range {v0 .. v7}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->ecdhPQEnc([B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B[B[B)[B

    move-result-object v14

    .line 427
    .local v14, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 429
    invoke-virtual {v10, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 430
    goto/16 :goto_3

    .line 419
    .end local v2    # "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v14    # "_result":[B
    .local v7, "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    :cond_9
    move-object v2, v7

    .end local v7    # "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .restart local v2    # "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    new-instance v7, Landroid/os/BadParcelableException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 387
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":[B
    .end local v13    # "_arg6_length":I
    :pswitch_17
    sget-object v0, Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;

    .line 389
    .local v1, "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 391
    .local v2, "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 393
    .restart local v3    # "_arg2":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 395
    .restart local v4    # "_arg3":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 396
    .restart local v5    # "_arg4":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->ecdh([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B[B)[B

    move-result-object v6

    .line 398
    .local v6, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 400
    goto :goto_3

    .line 371
    .end local v1    # "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[B
    .end local v6    # "_result":[B
    :pswitch_18
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 373
    .local v1, "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 375
    .restart local v2    # "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 377
    .restart local v3    # "_arg2":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 378
    .restart local v4    # "_arg3":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->importKey([B[B[B[B)[B

    move-result-object v5

    .line 380
    .local v5, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 382
    goto :goto_3

    .line 355
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":[B
    :pswitch_19
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 357
    .restart local v1    # "_arg0":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 359
    .restart local v2    # "_arg1":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 361
    .restart local v3    # "_arg2":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 362
    .restart local v4    # "_arg3":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->exportKey([B[B[B[B)[B

    move-result-object v5

    .line 364
    .restart local v5    # "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 366
    goto :goto_3

    .line 345
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":[B
    :pswitch_1a
    sget-object v1, Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;

    .line 346
    .local v1, "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->generateKeyPQ([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;)[B

    move-result-object v2

    .line 348
    .local v2, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 350
    goto :goto_3

    .line 335
    .end local v1    # "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v2    # "_result":[B
    :pswitch_1b
    sget-object v1, Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;

    .line 336
    .restart local v1    # "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;->generateKey([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;)[B

    move-result-object v2

    .line 338
    .restart local v2    # "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 340
    nop

    .line 748
    .end local v1    # "_arg0":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local v2    # "_result":[B
    :goto_3
    return v12

    :pswitch_data_0
    .packed-switch 0x1
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
