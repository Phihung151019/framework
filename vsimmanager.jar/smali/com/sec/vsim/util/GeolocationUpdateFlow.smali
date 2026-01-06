.class public Lcom/sec/vsim/util/GeolocationUpdateFlow;
.super Landroid/os/Handler;
.source "GeolocationUpdateFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;,
        Lcom/sec/vsim/util/GeolocationUpdateFlow$NLPLocationListener;,
        Lcom/sec/vsim/util/GeolocationUpdateFlow$LocationUpdateListener;
    }
.end annotation


# static fields
.field private static final EVENT_LOCATION_UPDATED:I = 0x3

.field private static final EVENT_LOCATION_UPDATE_TIMEOUT:I = 0x1

.field private static final EVENT_STOP_LOCATION_UPDATE:I = 0x2

.field private static final GPS_LOCATION_REQUEST_TIMEOUT:I = 0xafc8

.field public static final GPS_ONLY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final NLP_AND_GPS:I = 0x3

.field public static final NLP_ONLY:I


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mGPSLocationListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$LocationUpdateListener;

.field private mNLPLocationListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$NLPLocationListener;

.field private mStatus:I

.field private mUserLocationMode:I

.field private mUserLocationProvider:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$menforceLocationSettings(Lcom/sec/vsim/util/GeolocationUpdateFlow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->enforceLocationSettings(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLastKnownGPSLocation(Lcom/sec/vsim/util/GeolocationUpdateFlow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->getLastKnownGPSLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLastKnownNLPLocation(Lcom/sec/vsim/util/GeolocationUpdateFlow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->getLastKnownNLPLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetUserLocationSettings(Lcom/sec/vsim/util/GeolocationUpdateFlow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->getUserLocationSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestLocationUpdates(Lcom/sec/vsim/util/GeolocationUpdateFlow;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->requestLocationUpdates(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    .line 71
    new-instance v0, Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;-><init>(Lcom/sec/vsim/util/GeolocationUpdateFlow;Lcom/sec/vsim/util/GeolocationUpdateFlow-IA;)V

    iput-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;

    .line 72
    new-instance v0, Lcom/sec/vsim/util/GeolocationUpdateFlow$NLPLocationListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/vsim/util/GeolocationUpdateFlow$NLPLocationListener;-><init>(Lcom/sec/vsim/util/GeolocationUpdateFlow;Lcom/sec/vsim/util/GeolocationUpdateFlow-IA;)V

    iput-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$NLPLocationListener;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mStatus:I

    .line 74
    return-void
.end method

.method private enforceLocationSettings(I)V
    .locals 3
    .param p1, "provider"    # I

    .line 114
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceLocationSettings(): provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    const-string v0, "network,gps"

    const-string v1, "location_providers_allowed"

    packed-switch p1, :pswitch_data_0

    .line 135
    :pswitch_0
    iget-object v2, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v2, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "network"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    nop

    .line 140
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getLastKnownGPSLocation()V
    .locals 3

    .line 239
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getLastKnownGPSLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 243
    .local v0, "loc":Landroid/location/Location;
    if-nez v0, :cond_0

    .line 244
    sget-object v1, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getLastKnownGPSLocation(): No Last Known Location Available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 248
    invoke-direct {p0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->restoreUserLocationSettings()V

    .line 249
    return-void
.end method

.method private getLastKnownNLPLocation()V
    .locals 3

    .line 252
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getLastKnownNLPLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 256
    .local v0, "loc":Landroid/location/Location;
    if-nez v0, :cond_0

    .line 257
    sget-object v1, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getLastKnownNLPLocation(): No Last Known Location Available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 261
    invoke-direct {p0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->restoreUserLocationSettings()V

    .line 262
    return-void
.end method

.method private getUserLocationSettings()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mUserLocationMode:I

    .line 146
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserLocationSettings(): mUserLocationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mUserLocationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserLocationProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method private requestLocationUpdates(III)V
    .locals 11
    .param p1, "updateTime"    # I
    .param p2, "accuracy"    # I
    .param p3, "provider"    # I

    .line 185
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLocationUpdates(): updateTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accuracy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v0, "requestLocationUpdates(): GPS enabled"

    const-string v1, "requestLocationUpdates(): NLP enabled"

    const-string v2, "ex ="

    const/4 v3, 0x3

    const-string v4, "gps"

    const-string v5, "network"

    packed-switch p3, :pswitch_data_0

    .line 212
    :try_start_0
    iget-object v6, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    goto :goto_0

    .line 201
    :pswitch_0
    iget-object v1, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    sget-object v1, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v3, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    int-to-long v5, p1

    int-to-float v7, p2

    iget-object v8, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto/16 :goto_3

    .line 205
    :cond_0
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestLocationUpdates(): GPS disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, v3}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 207
    return-void

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    int-to-long v5, p1

    int-to-float v7, p2

    iget-object v8, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$NLPLocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto/16 :goto_3

    .line 195
    :cond_1
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestLocationUpdates(): NLP disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0, v3}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 197
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_1

    .line 228
    :catch_1
    move-exception v0

    goto :goto_2

    .line 212
    :goto_0
    invoke-virtual {v6, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    .line 213
    invoke-virtual {v6, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 214
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestLocationUpdates(): providers are all disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0, v3}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void

    .line 218
    :cond_2
    iget-object v3, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    sget-object v3, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v5, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v6, "network"

    int-to-long v7, p1

    int-to-float v9, p2

    iget-object v10, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$NLPLocationListener;

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    sget-object v1, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v3, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    int-to-long v5, p1

    int-to-float v7, p2

    iget-object v8, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 231
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_1
    sget-object v1, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 229
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    sget-object v1, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :goto_3
    nop

    .line 234
    :goto_4
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestLocation(): location req timeout = 45000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xafc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private restoreUserLocationSettings()V
    .locals 3

    .line 152
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreUserLocationSettings(): mUserLocationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mUserLocationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserLocationProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_mode"

    iget v2, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mUserLocationMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_providers_allowed"

    iget-object v2, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    return-void
.end method

.method private startGeolocationUpdate(III)V
    .locals 2
    .param p1, "updateTime"    # I
    .param p2, "accuracy"    # I
    .param p3, "provider"    # I

    .line 162
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sec/vsim/util/GeolocationUpdateFlow$1;-><init>(Lcom/sec/vsim/util/GeolocationUpdateFlow;III)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 172
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void
.end method

.method private stopGeolocationUpdate()V
    .locals 4

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$GPSLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 178
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$NLPLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocationChanged ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;
    .locals 11
    .param p1, "location"    # Landroid/location/Location;

    .line 265
    const-string v1, ", Longitude = "

    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Geocoder is not present."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-object v2

    .line 269
    :cond_0
    if-nez p1, :cond_1

    .line 270
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Location is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-object v2

    .line 274
    :cond_1
    new-instance v0, Landroid/location/Geocoder;

    iget-object v3, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    move-object v5, v0

    .line 275
    .local v5, "geocoder":Landroid/location/Geocoder;
    const/4 v3, 0x0

    .line 278
    .local v3, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    nop

    .line 279
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 280
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 278
    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 294
    :goto_0
    goto :goto_1

    .line 288
    :catch_0
    move-exception v0

    .line 290
    .local v0, "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid: Latitude = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 291
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 283
    .end local v0    # "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 285
    .local v0, "ioException":Ljava/io/IOException;
    sget-object v4, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Latitude = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ioException":Ljava/io/IOException;
    goto :goto_0

    .line 297
    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 301
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    return-object v0

    .line 298
    :cond_3
    :goto_2
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No address is found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 78
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: Undefined message."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$LocationUpdateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Address;

    invoke-interface {v0, v1}, Lcom/sec/vsim/util/GeolocationUpdateFlow$LocationUpdateListener;->onAddressObtained(Landroid/location/Address;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$LocationUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/vsim/util/GeolocationUpdateFlow$LocationUpdateListener;->onAddressObtained(Landroid/location/Address;)V

    .line 86
    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->stopGeolocationUpdate()V

    .line 90
    goto :goto_0

    .line 93
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->stopGeolocationUpdate()V

    .line 94
    invoke-direct {p0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->restoreUserLocationSettings()V

    .line 95
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 96
    nop

    .line 101
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestGeolocationUpdate(IIILcom/sec/vsim/util/GeolocationUpdateFlow$LocationUpdateListener;)V
    .locals 3
    .param p1, "updateTime"    # I
    .param p2, "accuracy"    # I
    .param p3, "provider"    # I
    .param p4, "listener"    # Lcom/sec/vsim/util/GeolocationUpdateFlow$LocationUpdateListener;

    .line 105
    sget-object v0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestGeolocationUpdate(): mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v0, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mStatus:I

    if-nez v0, :cond_0

    .line 109
    iput-object p4, p0, Lcom/sec/vsim/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/vsim/util/GeolocationUpdateFlow$LocationUpdateListener;

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsim/util/GeolocationUpdateFlow;->startGeolocationUpdate(III)V

    .line 111
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow has already been started."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
