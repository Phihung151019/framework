.class public abstract Landroid/location/INSLocationCallback$Stub;
.super Landroid/os/Binder;
.source "INSLocationCallback.java"

# interfaces
.implements Landroid/location/INSLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/INSLocationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/INSLocationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getActiveRequests:I = 0x2

.field static final blacklist TRANSACTION_getCrashCount:I = 0xf

.field static final blacklist TRANSACTION_getCrashTime:I = 0x10

.field static final blacklist TRANSACTION_getUidState:I = 0xa

.field static final blacklist TRANSACTION_isLocationEnabled:I = 0x3

.field static final blacklist TRANSACTION_isProviderEnabled:I = 0xc

.field static final blacklist TRANSACTION_noteGpsOp:I = 0x4

.field static final blacklist TRANSACTION_notifyCrash:I = 0xe

.field static final blacklist TRANSACTION_registerDeviceActivityDetector:I = 0x6

.field static final blacklist TRANSACTION_requestToUpdateDeviceActivityDetector:I = 0x8

.field static final blacklist TRANSACTION_sendLogToHqm:I = 0x5

.field static final blacklist TRANSACTION_setFeatureDeviceActivity:I = 0x9

.field static final blacklist TRANSACTION_setMotionPowerSaveMode:I = 0xb

.field static final blacklist TRANSACTION_unregisterDeviceActivityDetector:I = 0x7

.field static final blacklist TRANSACTION_updateBackgroundThrottlingAllowlist:I = 0x1

.field static final blacklist TRANSACTION_writeUtLog:I = 0xd


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 106
    const-string v0, "android.location.INSLocationCallback"

    invoke-virtual {p0, p0, v0}, Landroid/location/INSLocationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/location/INSLocationCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 114
    if-nez p0, :cond_0

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    const-string v0, "android.location.INSLocationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 118
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/INSLocationCallback;

    if-eqz v1, :cond_1

    .line 119
    move-object v1, v0

    check-cast v1, Landroid/location/INSLocationCallback;

    return-object v1

    .line 121
    :cond_1
    new-instance v1, Landroid/location/INSLocationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/INSLocationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 130
    packed-switch p0, :pswitch_data_0

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 194
    :pswitch_0
    const-string v0, "getCrashTime"

    return-object v0

    .line 190
    :pswitch_1
    const-string v0, "getCrashCount"

    return-object v0

    .line 186
    :pswitch_2
    const-string v0, "notifyCrash"

    return-object v0

    .line 182
    :pswitch_3
    const-string v0, "writeUtLog"

    return-object v0

    .line 178
    :pswitch_4
    const-string v0, "isProviderEnabled"

    return-object v0

    .line 174
    :pswitch_5
    const-string v0, "setMotionPowerSaveMode"

    return-object v0

    .line 170
    :pswitch_6
    const-string v0, "getUidState"

    return-object v0

    .line 166
    :pswitch_7
    const-string v0, "setFeatureDeviceActivity"

    return-object v0

    .line 162
    :pswitch_8
    const-string v0, "requestToUpdateDeviceActivityDetector"

    return-object v0

    .line 158
    :pswitch_9
    const-string v0, "unregisterDeviceActivityDetector"

    return-object v0

    .line 154
    :pswitch_a
    const-string v0, "registerDeviceActivityDetector"

    return-object v0

    .line 150
    :pswitch_b
    const-string v0, "sendLogToHqm"

    return-object v0

    .line 146
    :pswitch_c
    const-string v0, "noteGpsOp"

    return-object v0

    .line 142
    :pswitch_d
    const-string v0, "isLocationEnabled"

    return-object v0

    .line 138
    :pswitch_e
    const-string v0, "getActiveRequests"

    return-object v0

    .line 134
    :pswitch_f
    const-string v0, "updateBackgroundThrottlingAllowlist"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 125
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 703
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 205
    invoke-static {p1}, Landroid/location/INSLocationCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    const-string v0, "android.location.INSLocationCallback"

    .line 210
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 211
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 214
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return v1

    .line 217
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 378
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 371
    :pswitch_0
    invoke-virtual {p0}, Landroid/location/INSLocationCallback$Stub;->getCrashTime()J

    move-result-wide v2

    .line 372
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 374
    goto/16 :goto_0

    .line 364
    .end local v2    # "_result":J
    :pswitch_1
    invoke-virtual {p0}, Landroid/location/INSLocationCallback$Stub;->getCrashCount()I

    move-result v2

    .line 365
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    goto/16 :goto_0

    .line 356
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 357
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationCallback$Stub;->notifyCrash(J)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    goto/16 :goto_0

    .line 343
    .end local v2    # "_arg0":J
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2, v3, v4}, Landroid/location/INSLocationCallback$Stub;->writeUtLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_0

    .line 331
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationCallback$Stub;->isProviderEnabled(Ljava/lang/String;I)Z

    move-result v4

    .line 336
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 338
    goto/16 :goto_0

    .line 322
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 323
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->setMotionPowerSaveMode(Z)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_0

    .line 310
    .end local v2    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationCallback$Stub;->getUidState(II)Landroid/os/Bundle;

    move-result-object v4

    .line 315
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 317
    goto/16 :goto_0

    .line 300
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 301
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->setFeatureDeviceActivity(Z)Z

    move-result v3

    .line 303
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 305
    goto/16 :goto_0

    .line 293
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_8
    invoke-virtual {p0}, Landroid/location/INSLocationCallback$Stub;->requestToUpdateDeviceActivityDetector()V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto/16 :goto_0

    .line 287
    :pswitch_9
    invoke-virtual {p0}, Landroid/location/INSLocationCallback$Stub;->unregisterDeviceActivityDetector()V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    goto :goto_0

    .line 275
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 279
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 280
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3, v4}, Landroid/location/INSLocationCallback$Stub;->registerDeviceActivityDetector(IIZ)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto :goto_0

    .line 262
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2, v3, v4}, Landroid/location/INSLocationCallback$Stub;->sendLogToHqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto :goto_0

    .line 251
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationCallback$Stub;->noteGpsOp(II)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto :goto_0

    .line 241
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->isLocationEnabled(I)Z

    move-result v3

    .line 244
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 246
    goto :goto_0

    .line 231
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->getActiveRequests(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 234
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 236
    goto :goto_0

    .line 222
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 223
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->updateBackgroundThrottlingAllowlist(Ljava/util/List;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    nop

    .line 381
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
