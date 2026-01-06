.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final blacklist PERMISSIONS_injectLocation:[Ljava/lang/String;

.field static final blacklist TRANSACTION_addGnssAntennaInfoListener:I = 0x1c

.field static final greylist-max-o TRANSACTION_addGnssMeasurementsListener:I = 0x17

.field static final greylist-max-o TRANSACTION_addGnssNavigationMessageListener:I = 0x1a

.field static final blacklist TRANSACTION_addProviderRequestListener:I = 0x1e

.field static final greylist-max-o TRANSACTION_addTestProvider:I = 0x36

.field static final greylist-max-o TRANSACTION_flushGnssBatch:I = 0x22

.field static final blacklist TRANSACTION_forwardGeocode:I = 0xe

.field static final blacklist TRANSACTION_getAdasAllowlist:I = 0x3e

.field static final greylist-max-r TRANSACTION_getAllProviders:I = 0x25

.field static final greylist-max-o TRANSACTION_getBackgroundThrottlingWhitelist:I = 0x3c

.field static final greylist-max-o TRANSACTION_getBestProvider:I = 0x27

.field static final blacklist TRANSACTION_getCurrentLocation:I = 0x2

.field static final blacklist TRANSACTION_getExtraLocationControllerPackage:I = 0x2c

.field static final blacklist TRANSACTION_getGPSUsingApps:I = 0x40

.field static final blacklist TRANSACTION_getGnssAntennaInfos:I = 0x12

.field static final greylist-max-o TRANSACTION_getGnssBatchSize:I = 0x20

.field static final blacklist TRANSACTION_getGnssCapabilities:I = 0xf

.field static final greylist-max-o TRANSACTION_getGnssHardwareModelName:I = 0x11

.field static final blacklist TRANSACTION_getGnssTimeMillis:I = 0x3a

.field static final greylist-max-o TRANSACTION_getGnssYearOfHardware:I = 0x10

.field static final blacklist TRANSACTION_getIgnoreSettingsAllowlist:I = 0x3d

.field static final greylist-max-o TRANSACTION_getLastLocation:I = 0x1

.field static final blacklist TRANSACTION_getProviderPackages:I = 0x2a

.field static final greylist-max-o TRANSACTION_getProviderProperties:I = 0x28

.field static final greylist-max-o TRANSACTION_getProviders:I = 0x26

.field static final blacklist TRANSACTION_hasProvider:I = 0x24

.field static final blacklist TRANSACTION_injectGnssMeasurementCorrections:I = 0x19

.field static final greylist-max-o TRANSACTION_injectLocation:I = 0x7

.field static final blacklist TRANSACTION_isAdasGnssLocationEnabledForUser:I = 0x32

.field static final blacklist TRANSACTION_isAutomotiveGnssSuspended:I = 0x34

.field static final blacklist TRANSACTION_isExtraLocationControllerPackageEnabled:I = 0x2e

.field static final blacklist TRANSACTION_isGeocodeAvailable:I = 0xc

.field static final greylist-max-o TRANSACTION_isLocationEnabledForUser:I = 0x30

.field static final greylist-max-o TRANSACTION_isProviderEnabledForUser:I = 0x2f

.field static final blacklist TRANSACTION_isProviderPackage:I = 0x29

.field static final blacklist TRANSACTION_notifyNSFLP:I = 0x3f

.field static final blacklist TRANSACTION_onFreezeStateChanged:I = 0x41

.field static final blacklist TRANSACTION_registerGnssNmeaCallback:I = 0x15

.field static final greylist-max-o TRANSACTION_registerGnssStatusCallback:I = 0x13

.field static final blacklist TRANSACTION_registerLocationListener:I = 0x3

.field static final blacklist TRANSACTION_registerLocationPendingIntent:I = 0x5

.field static final greylist-max-o TRANSACTION_removeGeofence:I = 0xb

.field static final blacklist TRANSACTION_removeGnssAntennaInfoListener:I = 0x1d

.field static final greylist-max-o TRANSACTION_removeGnssMeasurementsListener:I = 0x18

.field static final greylist-max-o TRANSACTION_removeGnssNavigationMessageListener:I = 0x1b

.field static final blacklist TRANSACTION_removeProviderRequestListener:I = 0x1f

.field static final greylist-max-o TRANSACTION_removeTestProvider:I = 0x37

.field static final greylist-max-o TRANSACTION_requestGeofence:I = 0xa

.field static final blacklist TRANSACTION_requestListenerFlush:I = 0x8

.field static final blacklist TRANSACTION_requestPendingIntentFlush:I = 0x9

.field static final blacklist TRANSACTION_reverseGeocode:I = 0xd

.field static final greylist-max-o TRANSACTION_sendExtraCommand:I = 0x3b

.field static final blacklist TRANSACTION_setAdasGnssLocationEnabledForUser:I = 0x33

.field static final blacklist TRANSACTION_setAutomotiveGnssSuspended:I = 0x35

.field static final blacklist TRANSACTION_setExtraLocationControllerPackage:I = 0x2b

.field static final blacklist TRANSACTION_setExtraLocationControllerPackageEnabled:I = 0x2d

.field static final greylist-max-o TRANSACTION_setLocationEnabledForUser:I = 0x31

.field static final greylist-max-o TRANSACTION_setTestProviderEnabled:I = 0x39

.field static final greylist-max-o TRANSACTION_setTestProviderLocation:I = 0x38

.field static final greylist-max-o TRANSACTION_startGnssBatch:I = 0x21

.field static final greylist-max-o TRANSACTION_stopGnssBatch:I = 0x23

.field static final blacklist TRANSACTION_unregisterGnssNmeaCallback:I = 0x16

.field static final greylist-max-o TRANSACTION_unregisterGnssStatusCallback:I = 0x14

.field static final blacklist TRANSACTION_unregisterLocationListener:I = 0x4

.field static final blacklist TRANSACTION_unregisterLocationPendingIntent:I = 0x6


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 2414
    const-string v0, "android.permission.LOCATION_HARDWARE"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/location/ILocationManager$Stub;->PERMISSIONS_injectLocation:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    nop

    .line 266
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 265
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/location/ILocationManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 267
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 255
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 256
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 257
    if-eqz p1, :cond_0

    .line 260
    iput-object p1, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 261
    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 274
    if-nez p0, :cond_0

    .line 275
    const/4 v0, 0x0

    return-object v0

    .line 277
    :cond_0
    const-string v0, "android.location.ILocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 278
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_1

    .line 279
    move-object v1, v0

    check-cast v1, Landroid/location/ILocationManager;

    return-object v1

    .line 281
    :cond_1
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 290
    packed-switch p0, :pswitch_data_0

    .line 554
    const/4 v0, 0x0

    return-object v0

    .line 550
    :pswitch_0
    const-string v0, "onFreezeStateChanged"

    return-object v0

    .line 546
    :pswitch_1
    const-string v0, "getGPSUsingApps"

    return-object v0

    .line 542
    :pswitch_2
    const-string v0, "notifyNSFLP"

    return-object v0

    .line 538
    :pswitch_3
    const-string v0, "getAdasAllowlist"

    return-object v0

    .line 534
    :pswitch_4
    const-string v0, "getIgnoreSettingsAllowlist"

    return-object v0

    .line 530
    :pswitch_5
    const-string v0, "getBackgroundThrottlingWhitelist"

    return-object v0

    .line 526
    :pswitch_6
    const-string v0, "sendExtraCommand"

    return-object v0

    .line 522
    :pswitch_7
    const-string v0, "getGnssTimeMillis"

    return-object v0

    .line 518
    :pswitch_8
    const-string v0, "setTestProviderEnabled"

    return-object v0

    .line 514
    :pswitch_9
    const-string v0, "setTestProviderLocation"

    return-object v0

    .line 510
    :pswitch_a
    const-string v0, "removeTestProvider"

    return-object v0

    .line 506
    :pswitch_b
    const-string v0, "addTestProvider"

    return-object v0

    .line 502
    :pswitch_c
    const-string v0, "setAutomotiveGnssSuspended"

    return-object v0

    .line 498
    :pswitch_d
    const-string v0, "isAutomotiveGnssSuspended"

    return-object v0

    .line 494
    :pswitch_e
    const-string v0, "setAdasGnssLocationEnabledForUser"

    return-object v0

    .line 490
    :pswitch_f
    const-string v0, "isAdasGnssLocationEnabledForUser"

    return-object v0

    .line 486
    :pswitch_10
    const-string v0, "setLocationEnabledForUser"

    return-object v0

    .line 482
    :pswitch_11
    const-string v0, "isLocationEnabledForUser"

    return-object v0

    .line 478
    :pswitch_12
    const-string v0, "isProviderEnabledForUser"

    return-object v0

    .line 474
    :pswitch_13
    const-string v0, "isExtraLocationControllerPackageEnabled"

    return-object v0

    .line 470
    :pswitch_14
    const-string v0, "setExtraLocationControllerPackageEnabled"

    return-object v0

    .line 466
    :pswitch_15
    const-string v0, "getExtraLocationControllerPackage"

    return-object v0

    .line 462
    :pswitch_16
    const-string v0, "setExtraLocationControllerPackage"

    return-object v0

    .line 458
    :pswitch_17
    const-string v0, "getProviderPackages"

    return-object v0

    .line 454
    :pswitch_18
    const-string v0, "isProviderPackage"

    return-object v0

    .line 450
    :pswitch_19
    const-string v0, "getProviderProperties"

    return-object v0

    .line 446
    :pswitch_1a
    const-string v0, "getBestProvider"

    return-object v0

    .line 442
    :pswitch_1b
    const-string v0, "getProviders"

    return-object v0

    .line 438
    :pswitch_1c
    const-string v0, "getAllProviders"

    return-object v0

    .line 434
    :pswitch_1d
    const-string v0, "hasProvider"

    return-object v0

    .line 430
    :pswitch_1e
    const-string v0, "stopGnssBatch"

    return-object v0

    .line 426
    :pswitch_1f
    const-string v0, "flushGnssBatch"

    return-object v0

    .line 422
    :pswitch_20
    const-string v0, "startGnssBatch"

    return-object v0

    .line 418
    :pswitch_21
    const-string v0, "getGnssBatchSize"

    return-object v0

    .line 414
    :pswitch_22
    const-string v0, "removeProviderRequestListener"

    return-object v0

    .line 410
    :pswitch_23
    const-string v0, "addProviderRequestListener"

    return-object v0

    .line 406
    :pswitch_24
    const-string v0, "removeGnssAntennaInfoListener"

    return-object v0

    .line 402
    :pswitch_25
    const-string v0, "addGnssAntennaInfoListener"

    return-object v0

    .line 398
    :pswitch_26
    const-string v0, "removeGnssNavigationMessageListener"

    return-object v0

    .line 394
    :pswitch_27
    const-string v0, "addGnssNavigationMessageListener"

    return-object v0

    .line 390
    :pswitch_28
    const-string v0, "injectGnssMeasurementCorrections"

    return-object v0

    .line 386
    :pswitch_29
    const-string v0, "removeGnssMeasurementsListener"

    return-object v0

    .line 382
    :pswitch_2a
    const-string v0, "addGnssMeasurementsListener"

    return-object v0

    .line 378
    :pswitch_2b
    const-string v0, "unregisterGnssNmeaCallback"

    return-object v0

    .line 374
    :pswitch_2c
    const-string v0, "registerGnssNmeaCallback"

    return-object v0

    .line 370
    :pswitch_2d
    const-string v0, "unregisterGnssStatusCallback"

    return-object v0

    .line 366
    :pswitch_2e
    const-string v0, "registerGnssStatusCallback"

    return-object v0

    .line 362
    :pswitch_2f
    const-string v0, "getGnssAntennaInfos"

    return-object v0

    .line 358
    :pswitch_30
    const-string v0, "getGnssHardwareModelName"

    return-object v0

    .line 354
    :pswitch_31
    const-string v0, "getGnssYearOfHardware"

    return-object v0

    .line 350
    :pswitch_32
    const-string v0, "getGnssCapabilities"

    return-object v0

    .line 346
    :pswitch_33
    const-string v0, "forwardGeocode"

    return-object v0

    .line 342
    :pswitch_34
    const-string v0, "reverseGeocode"

    return-object v0

    .line 338
    :pswitch_35
    const-string v0, "isGeocodeAvailable"

    return-object v0

    .line 334
    :pswitch_36
    const-string v0, "removeGeofence"

    return-object v0

    .line 330
    :pswitch_37
    const-string v0, "requestGeofence"

    return-object v0

    .line 326
    :pswitch_38
    const-string v0, "requestPendingIntentFlush"

    return-object v0

    .line 322
    :pswitch_39
    const-string v0, "requestListenerFlush"

    return-object v0

    .line 318
    :pswitch_3a
    const-string v0, "injectLocation"

    return-object v0

    .line 314
    :pswitch_3b
    const-string v0, "unregisterLocationPendingIntent"

    return-object v0

    .line 310
    :pswitch_3c
    const-string v0, "registerLocationPendingIntent"

    return-object v0

    .line 306
    :pswitch_3d
    const-string v0, "unregisterLocationListener"

    return-object v0

    .line 302
    :pswitch_3e
    const-string v0, "registerLocationListener"

    return-object v0

    .line 298
    :pswitch_3f
    const-string v0, "getCurrentLocation"

    return-object v0

    .line 294
    :pswitch_40
    const-string v0, "getLastLocation"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method protected blacklist addProviderRequestListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2444
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2445
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 285
    return-object p0
.end method

.method protected blacklist flushGnssBatch_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2456
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2457
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2520
    const/16 v0, 0x40

    return v0
.end method

.method protected blacklist getProviderPackages_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2476
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2477
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 561
    invoke-static {p1}, Landroid/location/ILocationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist injectLocation_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2417
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/location/ILocationManager$Stub;->PERMISSIONS_injectLocation:[Ljava/lang/String;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 2418
    return-void
.end method

.method protected blacklist isAutomotiveGnssSuspended_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2498
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_AUTOMOTIVE_GNSS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2499
    return-void
.end method

.method protected blacklist isProviderPackage_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2471
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2472
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    move-object v7, p3

    const-string v8, "android.location.ILocationManager"

    .line 566
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 567
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    :cond_0
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_1

    .line 570
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    return v9

    .line 573
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1274
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1264
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1266
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1267
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1268
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->onFreezeStateChanged(ZI)V

    .line 1269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    goto/16 :goto_0

    .line 1256
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGPSUsingApps()Ljava/util/List;

    move-result-object v1

    .line 1257
    .local v1, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1259
    goto/16 :goto_0

    .line 1248
    .end local v1    # "_result":Ljava/util/List;
    :pswitch_2
    sget-object v1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1249
    .local v1, "_arg0":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->notifyNSFLP(Landroid/os/Message;)V

    .line 1251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    goto/16 :goto_0

    .line 1240
    .end local v1    # "_arg0":Landroid/os/Message;
    :pswitch_3
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object v1

    .line 1241
    .local v1, "_result":Landroid/os/PackageTagsList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1243
    goto/16 :goto_0

    .line 1233
    .end local v1    # "_result":Landroid/os/PackageTagsList;
    :pswitch_4
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v1

    .line 1234
    .restart local v1    # "_result":Landroid/os/PackageTagsList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1236
    goto/16 :goto_0

    .line 1226
    .end local v1    # "_result":Landroid/os/PackageTagsList;
    :pswitch_5
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v1

    .line 1227
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1229
    goto/16 :goto_0

    .line 1213
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1215
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1217
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1218
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1219
    invoke-virtual {p0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1222
    goto/16 :goto_0

    .line 1205
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_7
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v1

    .line 1206
    .local v1, "_result":Landroid/location/LocationTime;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1208
    goto/16 :goto_0

    .line 1191
    .end local v1    # "_result":Landroid/location/LocationTime;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1195
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1197
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1198
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    goto/16 :goto_0

    .line 1176
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1178
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 1180
    .local v2, "_arg1":Landroid/location/Location;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1182
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1183
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    goto/16 :goto_0

    .line 1163
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/Location;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1165
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1167
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1168
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {p0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    goto/16 :goto_0

    .line 1146
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1148
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/provider/ProviderProperties;

    .line 1150
    .local v2, "_arg1":Landroid/location/provider/ProviderProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1152
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1154
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1155
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1156
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    goto/16 :goto_0

    .line 1137
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/provider/ProviderProperties;
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1138
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->setAutomotiveGnssSuspended(Z)V

    .line 1140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    goto/16 :goto_0

    .line 1129
    .end local v1    # "_arg0":Z
    :pswitch_d
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->isAutomotiveGnssSuspended()Z

    move-result v1

    .line 1130
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1132
    goto/16 :goto_0

    .line 1119
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1121
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1122
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1123
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->setAdasGnssLocationEnabledForUser(ZI)V

    .line 1124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    goto/16 :goto_0

    .line 1109
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1110
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1111
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->isAdasGnssLocationEnabledForUser(I)Z

    move-result v2

    .line 1112
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1114
    goto/16 :goto_0

    .line 1098
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1100
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1101
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1102
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->setLocationEnabledForUser(ZI)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    goto/16 :goto_0

    .line 1088
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1089
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->isLocationEnabledForUser(I)Z

    move-result v2

    .line 1091
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1093
    goto/16 :goto_0

    .line 1076
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1078
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1079
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v3

    .line 1081
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1083
    goto/16 :goto_0

    .line 1068
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_13
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->isExtraLocationControllerPackageEnabled()Z

    move-result v1

    .line 1069
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1071
    goto/16 :goto_0

    .line 1060
    .end local v1    # "_result":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1061
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackageEnabled(Z)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    goto/16 :goto_0

    .line 1052
    .end local v1    # "_arg0":Z
    :pswitch_15
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getExtraLocationControllerPackage()Ljava/lang/String;

    move-result-object v1

    .line 1053
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1055
    goto/16 :goto_0

    .line 1044
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1046
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackage(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    goto/16 :goto_0

    .line 1034
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1035
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1036
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->getProviderPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1037
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1039
    goto/16 :goto_0

    .line 1020
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1024
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1025
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1026
    invoke-virtual {p0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1027
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1029
    goto/16 :goto_0

    .line 1010
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1011
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1012
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;

    move-result-object v2

    .line 1013
    .local v2, "_result":Landroid/location/provider/ProviderProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    invoke-virtual {p3, v2, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1015
    goto/16 :goto_0

    .line 998
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/location/provider/ProviderProperties;
    :pswitch_1a
    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    .line 1000
    .local v1, "_arg0":Landroid/location/Criteria;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1001
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1005
    goto/16 :goto_0

    .line 986
    .end local v1    # "_arg0":Landroid/location/Criteria;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1b
    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    .line 988
    .restart local v1    # "_arg0":Landroid/location/Criteria;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 989
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v3

    .line 991
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 993
    goto/16 :goto_0

    .line 978
    .end local v1    # "_arg0":Landroid/location/Criteria;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1c
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v1

    .line 979
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 981
    goto/16 :goto_0

    .line 969
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->hasProvider(Ljava/lang/String;)Z

    move-result v2

    .line 972
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 974
    goto/16 :goto_0

    .line 962
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1e
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->stopGnssBatch()V

    .line 963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    goto/16 :goto_0

    .line 956
    :pswitch_1f
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->flushGnssBatch()V

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    goto/16 :goto_0

    .line 940
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 942
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v3

    .line 944
    .local v3, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 946
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 948
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 949
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    goto/16 :goto_0

    .line 932
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Landroid/location/ILocationListener;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssBatchSize()I

    move-result v1

    .line 933
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    goto/16 :goto_0

    .line 924
    .end local v1    # "_result":I
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/provider/IProviderRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IProviderRequestListener;

    move-result-object v1

    .line 925
    .local v1, "_arg0":Landroid/location/provider/IProviderRequestListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    goto/16 :goto_0

    .line 915
    .end local v1    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/provider/IProviderRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IProviderRequestListener;

    move-result-object v1

    .line 916
    .restart local v1    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 917
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 918
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    goto/16 :goto_0

    .line 906
    .end local v1    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssAntennaInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssAntennaInfoListener;

    move-result-object v1

    .line 907
    .local v1, "_arg0":Landroid/location/IGnssAntennaInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    goto/16 :goto_0

    .line 891
    .end local v1    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssAntennaInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssAntennaInfoListener;

    move-result-object v1

    .line 893
    .restart local v1    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 898
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    goto/16 :goto_0

    .line 882
    .end local v1    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v1

    .line 883
    .local v1, "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    goto/16 :goto_0

    .line 867
    .end local v1    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v1

    .line 869
    .restart local v1    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 871
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 873
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 874
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    goto/16 :goto_0

    .line 858
    .end local v1    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_28
    sget-object v1, Landroid/location/GnssMeasurementCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssMeasurementCorrections;

    .line 859
    .local v1, "_arg0":Landroid/location/GnssMeasurementCorrections;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    goto/16 :goto_0

    .line 849
    .end local v1    # "_arg0":Landroid/location/GnssMeasurementCorrections;
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v1

    .line 850
    .local v1, "_arg0":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    .line 852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    goto/16 :goto_0

    .line 832
    .end local v1    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    :pswitch_2a
    sget-object v1, Landroid/location/GnssMeasurementRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssMeasurementRequest;

    .line 834
    .local v1, "_arg0":Landroid/location/GnssMeasurementRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v2

    .line 836
    .local v2, "_arg1":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 838
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 840
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 841
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    goto/16 :goto_0

    .line 823
    .end local v1    # "_arg0":Landroid/location/GnssMeasurementRequest;
    .end local v2    # "_arg1":Landroid/location/IGnssMeasurementsListener;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssNmeaListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNmeaListener;

    move-result-object v1

    .line 824
    .local v1, "_arg0":Landroid/location/IGnssNmeaListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    goto/16 :goto_0

    .line 808
    .end local v1    # "_arg0":Landroid/location/IGnssNmeaListener;
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssNmeaListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNmeaListener;

    move-result-object v1

    .line 810
    .restart local v1    # "_arg0":Landroid/location/IGnssNmeaListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 812
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 814
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 815
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    goto/16 :goto_0

    .line 799
    .end local v1    # "_arg0":Landroid/location/IGnssNmeaListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v1

    .line 800
    .local v1, "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    goto/16 :goto_0

    .line 784
    .end local v1    # "_arg0":Landroid/location/IGnssStatusListener;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v1

    .line 786
    .restart local v1    # "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 788
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 790
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 791
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    goto/16 :goto_0

    .line 776
    .end local v1    # "_arg0":Landroid/location/IGnssStatusListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssAntennaInfos()Ljava/util/List;

    move-result-object v1

    .line 777
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 779
    goto/16 :goto_0

    .line 769
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    :pswitch_30
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    goto/16 :goto_0

    .line 762
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_31
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssYearOfHardware()I

    move-result v1

    .line 763
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    goto/16 :goto_0

    .line 755
    .end local v1    # "_result":I
    :pswitch_32
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v1

    .line 756
    .local v1, "_result":Landroid/location/GnssCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 758
    goto/16 :goto_0

    .line 745
    .end local v1    # "_result":Landroid/location/GnssCapabilities;
    :pswitch_33
    sget-object v1, Landroid/location/provider/ForwardGeocodeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/provider/ForwardGeocodeRequest;

    .line 747
    .local v1, "_arg0":Landroid/location/provider/ForwardGeocodeRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/provider/IGeocodeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IGeocodeCallback;

    move-result-object v2

    .line 748
    .local v2, "_arg1":Landroid/location/provider/IGeocodeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    .line 750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    goto/16 :goto_0

    .line 734
    .end local v1    # "_arg0":Landroid/location/provider/ForwardGeocodeRequest;
    .end local v2    # "_arg1":Landroid/location/provider/IGeocodeCallback;
    :pswitch_34
    sget-object v1, Landroid/location/provider/ReverseGeocodeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/provider/ReverseGeocodeRequest;

    .line 736
    .local v1, "_arg0":Landroid/location/provider/ReverseGeocodeRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/provider/IGeocodeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IGeocodeCallback;

    move-result-object v2

    .line 737
    .restart local v2    # "_arg1":Landroid/location/provider/IGeocodeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    .line 739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    goto/16 :goto_0

    .line 726
    .end local v1    # "_arg0":Landroid/location/provider/ReverseGeocodeRequest;
    .end local v2    # "_arg1":Landroid/location/provider/IGeocodeCallback;
    :pswitch_35
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->isGeocodeAvailable()Z

    move-result v1

    .line 727
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 729
    goto/16 :goto_0

    .line 718
    .end local v1    # "_result":Z
    :pswitch_36
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 719
    .local v1, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/app/PendingIntent;)V

    .line 721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    goto/16 :goto_0

    .line 703
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_37
    sget-object v1, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Geofence;

    .line 705
    .local v1, "_arg0":Landroid/location/Geofence;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 707
    .local v2, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 709
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 710
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    goto/16 :goto_0

    .line 690
    .end local v1    # "_arg0":Landroid/location/Geofence;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 694
    .restart local v2    # "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 695
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_0

    .line 677
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v3    # "_arg2":I
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 679
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v2

    .line 681
    .local v2, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 682
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    goto/16 :goto_0

    .line 668
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/ILocationListener;
    .end local v3    # "_arg2":I
    :pswitch_3a
    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 669
    .local v1, "_arg0":Landroid/location/Location;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->injectLocation(Landroid/location/Location;)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    goto/16 :goto_0

    .line 659
    .end local v1    # "_arg0":Landroid/location/Location;
    :pswitch_3b
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 660
    .local v1, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    goto/16 :goto_0

    .line 642
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationRequest;

    .line 646
    .local v2, "_arg1":Landroid/location/LocationRequest;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 648
    .local v3, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 650
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 651
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    goto/16 :goto_0

    .line 633
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/LocationRequest;
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v1

    .line 634
    .local v1, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->unregisterLocationListener(Landroid/location/ILocationListener;)V

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    goto/16 :goto_0

    .line 614
    .end local v1    # "_arg0":Landroid/location/ILocationListener;
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationRequest;

    .line 618
    .restart local v2    # "_arg1":Landroid/location/LocationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v3

    .line 620
    .local v3, "_arg2":Landroid/location/ILocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 622
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 624
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 625
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    goto :goto_0

    .line 594
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/LocationRequest;
    .end local v3    # "_arg2":Landroid/location/ILocationListener;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/location/LocationRequest;

    .line 598
    .restart local v2    # "_arg1":Landroid/location/LocationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationCallback;

    move-result-object v3

    .line 600
    .local v3, "_arg2":Landroid/location/ILocationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 602
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 604
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 605
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v10

    .line 607
    .local v10, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 609
    goto :goto_0

    .line 578
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/LocationRequest;
    .end local v3    # "_arg2":Landroid/location/ILocationCallback;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v10    # "_result":Landroid/os/ICancellationSignal;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 580
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/location/LastLocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LastLocationRequest;

    .line 582
    .local v2, "_arg1":Landroid/location/LastLocationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 585
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 587
    .local v5, "_result":Landroid/location/Location;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, v5, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 589
    nop

    .line 1277
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/LastLocationRequest;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Landroid/location/Location;
    :goto_0
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected blacklist setAutomotiveGnssSuspended_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2503
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_AUTOMOTIVE_GNSS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2504
    return-void
.end method

.method protected blacklist setExtraLocationControllerPackageEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2487
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2488
    return-void
.end method

.method protected blacklist setExtraLocationControllerPackage_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2481
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2482
    return-void
.end method

.method protected blacklist startGnssBatch_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2451
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2452
    return-void
.end method

.method protected blacklist stopGnssBatch_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2461
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2462
    return-void
.end method
