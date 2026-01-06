.class public abstract Landroid/hardware/security/keymint/IKeyMintDevice$Stub;
.super Landroid/os/Binder;
.source "IKeyMintDevice.java"

# interfaces
.implements Landroid/hardware/security/keymint/IKeyMintDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IKeyMintDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addRngEntropy:I = 0x2

.field static final TRANSACTION_begin:I = 0xa

.field static final TRANSACTION_convertStorageKeyToEphemeral:I = 0xd

.field static final TRANSACTION_deleteAllKeys:I = 0x8

.field static final TRANSACTION_deleteKey:I = 0x7

.field static final TRANSACTION_destroyAttestationIds:I = 0x9

.field static final TRANSACTION_deviceLocked:I = 0xb

.field static final TRANSACTION_earlyBootEnded:I = 0xc

.field static final TRANSACTION_generateKey:I = 0x3

.field static final TRANSACTION_getHardwareInfo:I = 0x1

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getKeyCharacteristics:I = 0xe

.field static final TRANSACTION_getRootOfTrust:I = 0x10

.field static final TRANSACTION_getRootOfTrustChallenge:I = 0xf

.field static final TRANSACTION_importKey:I = 0x4

.field static final TRANSACTION_importWrappedKey:I = 0x5

.field static final TRANSACTION_sendRootOfTrust:I = 0x11

.field static final TRANSACTION_upgradeKey:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 105
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->markVintfStability()V

    .line 106
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IKeyMintDevice;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 114
    if-nez p0, :cond_0

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 118
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/security/keymint/IKeyMintDevice;

    if-eqz v1, :cond_1

    .line 119
    move-object v1, v0

    check-cast v1, Landroid/hardware/security/keymint/IKeyMintDevice;

    return-object v1

    .line 121
    :cond_1
    new-instance v1, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 130
    sparse-switch p0, :sswitch_data_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 202
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 206
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 198
    :sswitch_2
    const-string v0, "sendRootOfTrust"

    return-object v0

    .line 194
    :sswitch_3
    const-string v0, "getRootOfTrust"

    return-object v0

    .line 190
    :sswitch_4
    const-string v0, "getRootOfTrustChallenge"

    return-object v0

    .line 186
    :sswitch_5
    const-string v0, "getKeyCharacteristics"

    return-object v0

    .line 182
    :sswitch_6
    const-string v0, "convertStorageKeyToEphemeral"

    return-object v0

    .line 178
    :sswitch_7
    const-string v0, "earlyBootEnded"

    return-object v0

    .line 174
    :sswitch_8
    const-string v0, "deviceLocked"

    return-object v0

    .line 170
    :sswitch_9
    const-string v0, "begin"

    return-object v0

    .line 166
    :sswitch_a
    const-string v0, "destroyAttestationIds"

    return-object v0

    .line 162
    :sswitch_b
    const-string v0, "deleteAllKeys"

    return-object v0

    .line 158
    :sswitch_c
    const-string v0, "deleteKey"

    return-object v0

    .line 154
    :sswitch_d
    const-string v0, "upgradeKey"

    return-object v0

    .line 150
    :sswitch_e
    const-string v0, "importWrappedKey"

    return-object v0

    .line 146
    :sswitch_f
    const-string v0, "importKey"

    return-object v0

    .line 142
    :sswitch_10
    const-string v0, "generateKey"

    return-object v0

    .line 138
    :sswitch_11
    const-string v0, "addRngEntropy"

    return-object v0

    .line 134
    :sswitch_12
    const-string v0, "getHardwareInfo"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_11
        0x3 -> :sswitch_10
        0x4 -> :sswitch_f
        0x5 -> :sswitch_e
        0x6 -> :sswitch_d
        0x7 -> :sswitch_c
        0x8 -> :sswitch_b
        0x9 -> :sswitch_a
        0xa -> :sswitch_9
        0xb -> :sswitch_8
        0xc -> :sswitch_7
        0xd -> :sswitch_6
        0xe -> :sswitch_5
        0xf -> :sswitch_4
        0x10 -> :sswitch_3
        0x11 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 125
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 866
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 217
    invoke-static {p1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 221
    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget-object v12, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 222
    .local v12, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    if-gt v9, v1, :cond_0

    .line 223
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    :cond_0
    const v2, 0x5f4e5446

    if-ne v9, v2, :cond_1

    .line 226
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    return v13

    .line 229
    :cond_1
    if-ne v9, v1, :cond_2

    .line 230
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    return v13

    .line 234
    :cond_2
    const v1, 0xfffffe

    if-ne v9, v1, :cond_3

    .line 235
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    return v13

    .line 239
    :cond_3
    const/16 v1, 0x10

    packed-switch v9, :pswitch_data_0

    .line 423
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 415
    :pswitch_0
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 416
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->sendRootOfTrust([B)V

    .line 418
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    goto/16 :goto_0

    .line 405
    .end local v1    # "_arg0":[B
    :pswitch_1
    const-class v2, [B

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 406
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getRootOfTrust([B)[B

    move-result-object v2

    .line 408
    .local v2, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 410
    goto/16 :goto_0

    .line 397
    .end local v1    # "_arg0":[B
    .end local v2    # "_result":[B
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getRootOfTrustChallenge()[B

    move-result-object v2

    .line 398
    .restart local v2    # "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v11, v2, v13, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 400
    goto/16 :goto_0

    .line 384
    .end local v2    # "_result":[B
    :pswitch_3
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 386
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 388
    .local v2, "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 389
    .local v3, "_arg2":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getKeyCharacteristics([B[B[B)[Landroid/hardware/security/keymint/KeyCharacteristics;

    move-result-object v4

    .line 391
    .local v4, "_result":[Landroid/hardware/security/keymint/KeyCharacteristics;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 393
    goto/16 :goto_0

    .line 374
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_result":[Landroid/hardware/security/keymint/KeyCharacteristics;
    :pswitch_4
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 375
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->convertStorageKeyToEphemeral([B)[B

    move-result-object v2

    .line 377
    .local v2, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 379
    goto/16 :goto_0

    .line 367
    .end local v1    # "_arg0":[B
    .end local v2    # "_result":[B
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->earlyBootEnded()V

    .line 368
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_0

    .line 357
    :pswitch_6
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 359
    .local v1, "_arg0":Z
    sget-object v2, Landroid/hardware/security/secureclock/TimeStampToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/secureclock/TimeStampToken;

    .line 360
    .local v2, "_arg1":Landroid/hardware/security/secureclock/TimeStampToken;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v1, v2}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deviceLocked(ZLandroid/hardware/security/secureclock/TimeStampToken;)V

    .line 362
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_0

    .line 341
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/hardware/security/secureclock/TimeStampToken;
    :pswitch_7
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 345
    .local v2, "_arg1":[B
    sget-object v3, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 347
    .local v3, "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    sget-object v4, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 348
    .local v4, "_arg3":Landroid/hardware/security/keymint/HardwareAuthToken;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->begin(I[B[Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/HardwareAuthToken;)Landroid/hardware/security/keymint/BeginResult;

    move-result-object v5

    .line 350
    .local v5, "_result":Landroid/hardware/security/keymint/BeginResult;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 352
    goto/16 :goto_0

    .line 334
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v4    # "_arg3":Landroid/hardware/security/keymint/HardwareAuthToken;
    .end local v5    # "_result":Landroid/hardware/security/keymint/BeginResult;
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->destroyAttestationIds()V

    .line 335
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto/16 :goto_0

    .line 328
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deleteAllKeys()V

    .line 329
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_0

    .line 320
    :pswitch_a
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 321
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deleteKey([B)V

    .line 323
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto/16 :goto_0

    .line 308
    .end local v1    # "_arg0":[B
    :pswitch_b
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 310
    .restart local v1    # "_arg0":[B
    sget-object v2, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/security/keymint/KeyParameter;

    .line 311
    .local v2, "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v1, v2}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->upgradeKey([B[Landroid/hardware/security/keymint/KeyParameter;)[B

    move-result-object v3

    .line 313
    .local v3, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 315
    goto/16 :goto_0

    .line 288
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v3    # "_result":[B
    :pswitch_c
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 290
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 292
    .local v2, "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 294
    .local v3, "_arg2":[B
    sget-object v4, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/security/keymint/KeyParameter;

    .line 296
    .local v4, "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 298
    .local v5, "_arg4":J
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 299
    .local v7, "_arg5":J
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->importWrappedKey([B[B[B[Landroid/hardware/security/keymint/KeyParameter;JJ)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v14

    .line 301
    .local v14, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {v11, v14, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 303
    goto :goto_0

    .line 272
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v5    # "_arg4":J
    .end local v7    # "_arg5":J
    .end local v14    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    :pswitch_d
    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 274
    .local v1, "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 278
    .restart local v3    # "_arg2":[B
    sget-object v4, Landroid/hardware/security/keymint/AttestationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/security/keymint/AttestationKey;

    .line 279
    .local v4, "_arg3":Landroid/hardware/security/keymint/AttestationKey;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->importKey([Landroid/hardware/security/keymint/KeyParameter;I[BLandroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v5

    .line 281
    .local v5, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 283
    goto :goto_0

    .line 260
    .end local v1    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Landroid/hardware/security/keymint/AttestationKey;
    .end local v5    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    :pswitch_e
    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 262
    .restart local v1    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    sget-object v2, Landroid/hardware/security/keymint/AttestationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/keymint/AttestationKey;

    .line 263
    .local v2, "_arg1":Landroid/hardware/security/keymint/AttestationKey;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v1, v2}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->generateKey([Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v3

    .line 265
    .local v3, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 267
    goto :goto_0

    .line 251
    .end local v1    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v2    # "_arg1":Landroid/hardware/security/keymint/AttestationKey;
    .end local v3    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    :pswitch_f
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 252
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->addRngEntropy([B)V

    .line 254
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto :goto_0

    .line 243
    .end local v1    # "_arg0":[B
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getHardwareInfo()Landroid/hardware/security/keymint/KeyMintHardwareInfo;

    move-result-object v1

    .line 244
    .local v1, "_result":Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 246
    nop

    .line 426
    .end local v1    # "_result":Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x1
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
