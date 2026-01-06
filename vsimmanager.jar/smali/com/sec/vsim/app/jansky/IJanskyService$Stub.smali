.class public abstract Lcom/sec/vsim/app/jansky/IJanskyService$Stub;
.super Landroid/os/Binder;
.source "IJanskyService.java"

# interfaces
.implements Lcom/sec/vsim/app/jansky/IJanskyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/app/jansky/IJanskyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activateLine:I = 0x5

.field static final TRANSACTION_activateSIMDevice:I = 0x16

.field static final TRANSACTION_activateServices:I = 0xb

.field static final TRANSACTION_addLine:I = 0x3

.field static final TRANSACTION_addServices:I = 0x9

.field static final TRANSACTION_deactivateLine:I = 0x6

.field static final TRANSACTION_deactivateServices:I = 0xc

.field static final TRANSACTION_downloadAllContacts:I = 0xf

.field static final TRANSACTION_getDeviceState:I = 0x19

.field static final TRANSACTION_getDevices:I = 0x1

.field static final TRANSACTION_getLines:I = 0x2

.field static final TRANSACTION_getLocationAndTc:I = 0xd

.field static final TRANSACTION_getTRN:I = 0x1a

.field static final TRANSACTION_isUserLogedin:I = 0x1b

.field static final TRANSACTION_logout:I = 0x15

.field static final TRANSACTION_openLoginPage:I = 0x14

.field static final TRANSACTION_registerForPushNotification:I = 0x11

.field static final TRANSACTION_removeLine:I = 0x4

.field static final TRANSACTION_removeServices:I = 0xa

.field static final TRANSACTION_requestAkaAuthentication:I = 0x12

.field static final TRANSACTION_requestWsgAkaAuthRequest:I = 0x1c

.field static final TRANSACTION_retriveAvailableMSISDNs:I = 0x17

.field static final TRANSACTION_setRequestUrl:I = 0x18

.field static final TRANSACTION_updateDeviceConfiguration:I = 0x13

.field static final TRANSACTION_updateDeviceName:I = 0x7

.field static final TRANSACTION_updateLineName:I = 0x8

.field static final TRANSACTION_uploadAllContacts:I = 0xe

.field static final TRANSACTION_uploadUpdatedContact:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 144
    const-string v0, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IJanskyService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 152
    if-nez p0, :cond_0

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    const-string v0, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 156
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/vsim/app/jansky/IJanskyService;

    if-eqz v1, :cond_1

    .line 157
    move-object v1, v0

    check-cast v1, Lcom/sec/vsim/app/jansky/IJanskyService;

    return-object v1

    .line 159
    :cond_1
    new-instance v1, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 163
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 167
    const-string v0, "com.sec.vsim.app.jansky.IJanskyService"

    .line 168
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 169
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 172
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    return v1

    .line 175
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 416
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 411
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->requestWsgAkaAuthRequest()V

    .line 412
    goto/16 :goto_0

    .line 404
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->isUserLogedin()Z

    move-result v2

    .line 405
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 407
    goto/16 :goto_0

    .line 393
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 397
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/ITRNReceivedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ITRNReceivedListener;

    move-result-object v4

    .line 398
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->getTRN(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/ITRNReceivedListener;)V

    .line 400
    goto/16 :goto_0

    .line 385
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->getDeviceState()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    goto/16 :goto_0

    .line 378
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->setRequestUrl(Ljava/lang/String;)V

    .line 381
    goto/16 :goto_0

    .line 372
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->retriveAvailableMSISDNs()V

    .line 373
    goto/16 :goto_0

    .line 367
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->activateSIMDevice()V

    .line 368
    goto/16 :goto_0

    .line 362
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->logout()V

    .line 363
    goto/16 :goto_0

    .line 357
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->openLoginPage()V

    .line 358
    goto/16 :goto_0

    .line 352
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->updateDeviceConfiguration()V

    .line 353
    goto/16 :goto_0

    .line 347
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->requestAkaAuthentication()V

    .line 348
    goto/16 :goto_0

    .line 340
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/vsim/app/jansky/IPushNotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IPushNotificationListener;

    move-result-object v2

    .line 341
    .local v2, "_arg0":Lcom/sec/vsim/app/jansky/IPushNotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->registerForPushNotification(Lcom/sec/vsim/app/jansky/IPushNotificationListener;)V

    .line 343
    goto/16 :goto_0

    .line 330
    .end local v2    # "_arg0":Lcom/sec/vsim/app/jansky/IPushNotificationListener;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;

    move-result-object v3

    .line 333
    .local v3, "_arg1":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2, v3}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->uploadUpdatedContact(Ljava/lang/String;Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V

    .line 335
    goto/16 :goto_0

    .line 322
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;

    move-result-object v2

    .line 323
    .local v2, "_arg0":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->downloadAllContacts(Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V

    .line 325
    goto/16 :goto_0

    .line 314
    .end local v2    # "_arg0":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;

    move-result-object v2

    .line 315
    .restart local v2    # "_arg0":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->uploadAllContacts(Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V

    .line 317
    goto/16 :goto_0

    .line 304
    .end local v2    # "_arg0":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->getLocationAndTc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    goto/16 :goto_0

    .line 292
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 296
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/IServiceUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;

    move-result-object v4

    .line 297
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->deactivateServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V

    .line 299
    goto/16 :goto_0

    .line 280
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 284
    .restart local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/IServiceUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;

    move-result-object v4

    .line 285
    .restart local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->activateServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V

    .line 287
    goto/16 :goto_0

    .line 268
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 272
    .restart local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/IServiceUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;

    move-result-object v4

    .line 273
    .restart local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->removeServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V

    .line 275
    goto/16 :goto_0

    .line 256
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 260
    .restart local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/IServiceUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;

    move-result-object v4

    .line 261
    .restart local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->addServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V

    .line 263
    goto/16 :goto_0

    .line 244
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/ILineUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ILineUpdatesListener;

    move-result-object v4

    .line 249
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->updateLineName(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V

    .line 251
    goto :goto_0

    .line 232
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 236
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;

    move-result-object v4

    .line 237
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->updateDeviceName(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;)V

    .line 239
    goto :goto_0

    .line 224
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->deactivateLine(Ljava/lang/String;)V

    .line 227
    goto :goto_0

    .line 216
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->activateLine(Ljava/lang/String;)V

    .line 219
    goto :goto_0

    .line 206
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/vsim/app/jansky/ILineUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ILineUpdatesListener;

    move-result-object v3

    .line 209
    .local v3, "_arg1":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->removeLine(Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V

    .line 211
    goto :goto_0

    .line 194
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/ILineUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ILineUpdatesListener;

    move-result-object v4

    .line 199
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->addLine(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V

    .line 201
    goto :goto_0

    .line 186
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    :pswitch_1a
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->getLines()Ljava/util/List;

    move-result-object v2

    .line 187
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 189
    goto :goto_0

    .line 179
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1b
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->getDevices()Ljava/util/List;

    move-result-object v2

    .line 180
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 182
    nop

    .line 419
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v1

    nop

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
