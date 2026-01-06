.class public abstract Landroid/location/INSLocationManager$Stub;
.super Landroid/os/Binder;
.source "INSLocationManager.java"

# interfaces
.implements Landroid/location/INSLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/INSLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/INSLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getGPSUsingApps:I = 0x1

.field static final blacklist TRANSACTION_onGnssEngineStatusUpdated:I = 0x6

.field static final blacklist TRANSACTION_onGnssEventUpdated:I = 0x8

.field static final blacklist TRANSACTION_onMessageUpdated:I = 0x3

.field static final blacklist TRANSACTION_onPassiveLocationReported:I = 0x5

.field static final blacklist TRANSACTION_onSatelliteStatusUpdated:I = 0x7

.field static final blacklist TRANSACTION_onStateUpdated:I = 0x4

.field static final blacklist TRANSACTION_setCallback:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.location.INSLocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/INSLocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/location/INSLocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    const-string v0, "android.location.INSLocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/INSLocationManager;

    if-eqz v1, :cond_1

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/location/INSLocationManager;

    return-object v1

    .line 72
    :cond_1
    new-instance v1, Landroid/location/INSLocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/INSLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 113
    :pswitch_0
    const-string v0, "onGnssEventUpdated"

    return-object v0

    .line 109
    :pswitch_1
    const-string v0, "onSatelliteStatusUpdated"

    return-object v0

    .line 105
    :pswitch_2
    const-string v0, "onGnssEngineStatusUpdated"

    return-object v0

    .line 101
    :pswitch_3
    const-string v0, "onPassiveLocationReported"

    return-object v0

    .line 97
    :pswitch_4
    const-string v0, "onStateUpdated"

    return-object v0

    .line 93
    :pswitch_5
    const-string v0, "onMessageUpdated"

    return-object v0

    .line 89
    :pswitch_6
    const-string v0, "setCallback"

    return-object v0

    .line 85
    :pswitch_7
    const-string v0, "getGPSUsingApps"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 368
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 124
    invoke-static {p1}, Landroid/location/INSLocationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    const-string v0, "android.location.INSLocationManager"

    .line 129
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v1

    .line 136
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 204
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->onGnssEventUpdated(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    goto/16 :goto_0

    .line 195
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Landroid/location/GnssStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssStatus;

    .line 196
    .local v2, "_arg0":Landroid/location/GnssStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->onSatelliteStatusUpdated(Landroid/location/GnssStatus;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_0

    .line 186
    .end local v2    # "_arg0":Landroid/location/GnssStatus;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 187
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->onGnssEngineStatusUpdated(Z)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto :goto_0

    .line 177
    .end local v2    # "_arg0":Z
    :pswitch_3
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 178
    .local v2, "_arg0":Landroid/location/Location;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->onPassiveLocationReported(Landroid/location/Location;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_0

    .line 166
    .end local v2    # "_arg0":Landroid/location/Location;
    :pswitch_4
    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationConstants$STATE_TYPE;

    .line 168
    .local v2, "_arg0":Landroid/location/LocationConstants$STATE_TYPE;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 169
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationManager$Stub;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":Landroid/location/LocationConstants$STATE_TYPE;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_5
    sget-object v2, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 158
    .local v2, "_arg0":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->onMessageUpdated(Landroid/os/Message;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_0

    .line 148
    .end local v2    # "_arg0":Landroid/os/Message;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/INSLocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/INSLocationCallback;

    move-result-object v2

    .line 149
    .local v2, "_arg0":Landroid/location/INSLocationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->setCallback(Landroid/location/INSLocationCallback;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_0

    .line 140
    .end local v2    # "_arg0":Landroid/location/INSLocationCallback;
    :pswitch_7
    invoke-virtual {p0}, Landroid/location/INSLocationManager$Stub;->getGPSUsingApps()Ljava/util/List;

    move-result-object v2

    .line 141
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 143
    nop

    .line 215
    .end local v2    # "_result":Ljava/util/List;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
