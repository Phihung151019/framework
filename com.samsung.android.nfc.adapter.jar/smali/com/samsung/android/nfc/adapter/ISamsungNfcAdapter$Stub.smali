.class public abstract Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;
.super Landroid/os/Binder;
.source "ISamsungNfcAdapter.java"

# interfaces
.implements Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearNdefArea:I = 0x18

.field static final TRANSACTION_copyUtilityFiles:I = 0xb

.field static final TRANSACTION_enableDisableSeTestMode:I = 0x8

.field static final TRANSACTION_getDefaultRoutingDestination:I = 0xd

.field static final TRANSACTION_getDiscoveryTech:I = 0x12

.field static final TRANSACTION_getLocation:I = 0x14

.field static final TRANSACTION_getSavedDefaultRoutingDestination:I = 0x15

.field static final TRANSACTION_getSecureElementSupportedTechnology:I = 0xa

.field static final TRANSACTION_isAutoChangeEnabled:I = 0xf

.field static final TRANSACTION_isOperationOngoing:I = 0x19

.field static final TRANSACTION_isT4tEmulationSupported:I = 0x1a

.field static final TRANSACTION_readDataFromT4tArea:I = 0x17

.field static final TRANSACTION_registerLocalTechAndRoutingTable:I = 0x10

.field static final TRANSACTION_setAutoChangeStatus:I = 0xe

.field static final TRANSACTION_setDefaultRoutingDestination:I = 0xc

.field static final TRANSACTION_setFeliCaLockState:I = 0x9

.field static final TRANSACTION_setLocation:I = 0x13

.field static final TRANSACTION_setWirelessChargeEnabled:I = 0x7

.field static final TRANSACTION_startCoverAuth:I = 0x1

.field static final TRANSACTION_startLedCover:I = 0x5

.field static final TRANSACTION_stopCoverAuth:I = 0x3

.field static final TRANSACTION_stopLedCover:I = 0x6

.field static final TRANSACTION_transceiveAuthData:I = 0x2

.field static final TRANSACTION_transceiveLedCover:I = 0x4

.field static final TRANSACTION_unregisterLocalTechAndRoutingTable:I = 0x11

.field static final TRANSACTION_writeDataToT4tArea:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 132
    const-string v0, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 140
    if-nez p0, :cond_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_0
    const-string v0, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 144
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    if-eqz v1, :cond_1

    .line 145
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    return-object v1

    .line 147
    :cond_1
    new-instance v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 151
    return-object p0
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

    .line 155
    const-string v0, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    .line 156
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 160
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v1

    .line 163
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 403
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 396
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->isT4tEmulationSupported()Z

    move-result v2

    .line 397
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 399
    goto/16 :goto_0

    .line 389
    .end local v2    # "_result":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->isOperationOngoing()Z

    move-result v2

    .line 390
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 392
    goto/16 :goto_0

    .line 382
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->clearNdefArea()I

    move-result v2

    .line 383
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    goto/16 :goto_0

    .line 373
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->readDataFromT4tArea(I)[B

    move-result-object v3

    .line 376
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 378
    goto/16 :goto_0

    .line 361
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 363
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 364
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->writeDataToT4tArea(I[B)I

    move-result v4

    .line 366
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    goto/16 :goto_0

    .line 353
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->getSavedDefaultRoutingDestination()Ljava/util/List;

    move-result-object v2

    .line 354
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 356
    goto/16 :goto_0

    .line 346
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    goto/16 :goto_0

    .line 338
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->setLocation(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    goto/16 :goto_0

    .line 330
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->getDiscoveryTech()[I

    move-result-object v2

    .line 331
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 333
    goto/16 :goto_0

    .line 321
    .end local v2    # "_result":[I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->unregisterLocalTechAndRoutingTable(Ljava/lang/String;)Z

    move-result v3

    .line 324
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 326
    goto/16 :goto_0

    .line 309
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    .line 312
    .local v3, "_arg1":Lcom/samsung/android/nfc/adapter/LocalConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->registerLocalTechAndRoutingTable(Ljava/lang/String;Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Z

    move-result v4

    .line 314
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 316
    goto/16 :goto_0

    .line 301
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/samsung/android/nfc/adapter/LocalConfiguration;
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->isAutoChangeEnabled()Z

    move-result v2

    .line 302
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 304
    goto/16 :goto_0

    .line 292
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 293
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->setAutoChangeStatus(Z)Z

    move-result v3

    .line 295
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 297
    goto/16 :goto_0

    .line 284
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->getDefaultRoutingDestination()Ljava/util/List;

    move-result-object v2

    .line 285
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 287
    goto/16 :goto_0

    .line 271
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->setDefaultRoutingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 278
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    goto/16 :goto_0

    .line 264
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_f
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->copyUtilityFiles()V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    goto/16 :goto_0

    .line 257
    :pswitch_10
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->getSecureElementSupportedTechnology()I

    move-result v2

    .line 258
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    goto/16 :goto_0

    .line 244
    .end local v2    # "_result":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->setFeliCaLockState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 251
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 253
    goto/16 :goto_0

    .line 232
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 235
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->enableDisableSeTestMode(Ljava/lang/String;Z)Z

    move-result v4

    .line 237
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 239
    goto :goto_0

    .line 222
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 223
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->setWirelessChargeEnabled(Z)Z

    move-result v3

    .line 225
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 227
    goto :goto_0

    .line 214
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_14
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->stopLedCover()Z

    move-result v2

    .line 215
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    goto :goto_0

    .line 205
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 206
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->startLedCover(Landroid/os/IBinder;)[B

    move-result-object v3

    .line 208
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 210
    goto :goto_0

    .line 195
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":[B
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 196
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->transceiveLedCover([B)[B

    move-result-object v3

    .line 198
    .restart local v3    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 200
    goto :goto_0

    .line 187
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":[B
    :pswitch_17
    invoke-virtual {p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->stopCoverAuth()Z

    move-result v2

    .line 188
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    goto :goto_0

    .line 178
    .end local v2    # "_result":Z
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 179
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->transceiveAuthData([B)[B

    move-result-object v3

    .line 181
    .restart local v3    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 183
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":[B
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 169
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->startCoverAuth(Landroid/os/IBinder;)[B

    move-result-object v3

    .line 171
    .restart local v3    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 173
    nop

    .line 406
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":[B
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
