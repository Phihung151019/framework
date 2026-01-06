.class public abstract Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;
.super Landroid/os/Binder;
.source "ISoftphoneService.java"

# interfaces
.implements Lcom/sec/vsim/attsoftphone/ISoftphoneService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/attsoftphone/ISoftphoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deleteAddress:I = 0x12

.field static final TRANSACTION_deregisterProgressListener:I = 0x3

.field static final TRANSACTION_deregisterSupplementaryServiceListener:I = 0xb

.field static final TRANSACTION_exchangeForAccessToken:I = 0x4

.field static final TRANSACTION_getCallForwardingInfo:I = 0xd

.field static final TRANSACTION_getCallWaitingInfo:I = 0xc

.field static final TRANSACTION_getClientId:I = 0x1

.field static final TRANSACTION_getDeviceList:I = 0x11

.field static final TRANSACTION_getTermsConditions:I = 0x10

.field static final TRANSACTION_logOut:I = 0x9

.field static final TRANSACTION_provisionAccount:I = 0x5

.field static final TRANSACTION_registerProgressListener:I = 0x2

.field static final TRANSACTION_registerSupplementaryServiceListener:I = 0xa

.field static final TRANSACTION_setCallForwardingInfo:I = 0xf

.field static final TRANSACTION_setCallWaitingInfo:I = 0xe

.field static final TRANSACTION_tryDeregister:I = 0x8

.field static final TRANSACTION_tryRegister:I = 0x7

.field static final TRANSACTION_validateE911Address:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const-string v0, "com.sec.vsim.attsoftphone.ISoftphoneService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/ISoftphoneService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 116
    if-nez p0, :cond_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    const-string v0, "com.sec.vsim.attsoftphone.ISoftphoneService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 120
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    if-eqz v1, :cond_1

    .line 121
    move-object v1, v0

    check-cast v1, Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    return-object v1

    .line 123
    :cond_1
    new-instance v1, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 127
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    const-string v0, "com.sec.vsim.attsoftphone.ISoftphoneService"

    .line 132
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v1

    .line 139
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 319
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 310
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 313
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->deleteAddress(IJ)V

    .line 315
    move-object v3, p0

    goto/16 :goto_0

    .line 300
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getDeviceList(I)Ljava/util/List;

    move-result-object v3

    .line 303
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/vsim/attsoftphone/data/DeviceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 305
    move-object v3, p0

    goto/16 :goto_0

    .line 292
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/vsim/attsoftphone/data/DeviceInfo;>;"
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getTermsConditions(I)V

    .line 295
    move-object v3, p0

    goto/16 :goto_0

    .line 282
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 285
    .local v3, "_arg1":Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V

    .line 287
    move-object v3, p0

    goto/16 :goto_0

    .line 272
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    .line 275
    .local v3, "_arg1":Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2, v3}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    .line 277
    move-object v3, p0

    goto/16 :goto_0

    .line 264
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getCallForwardingInfo(I)V

    .line 267
    move-object v3, p0

    goto/16 :goto_0

    .line 256
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getCallWaitingInfo(I)V

    .line 259
    move-object v3, p0

    goto/16 :goto_0

    .line 246
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    move-result-object v3

    .line 249
    .local v3, "_arg1":Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->deregisterSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V

    .line 251
    move-object v3, p0

    goto/16 :goto_0

    .line 236
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    move-result-object v3

    .line 239
    .restart local v3    # "_arg1":Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2, v3}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V

    .line 241
    move-object v3, p0

    goto/16 :goto_0

    .line 228
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->logOut(I)V

    .line 231
    move-object v3, p0

    goto/16 :goto_0

    .line 220
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->tryDeregister(I)V

    .line 223
    move-object v3, p0

    goto/16 :goto_0

    .line 212
    .end local v2    # "_arg0":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->tryRegister(I)V

    .line 215
    move-object v3, p0

    goto/16 :goto_0

    .line 198
    .end local v2    # "_arg0":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 204
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    move-result-object v5

    .line 205
    .local v5, "_arg3":Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->validateE911Address(IIZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V

    .line 207
    move-object v3, p0

    goto :goto_0

    .line 190
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->provisionAccount(I)V

    .line 193
    move-object v3, p0

    goto :goto_0

    .line 174
    .end local v2    # "_arg0":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 176
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 183
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->exchangeForAccessToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    goto :goto_0

    .line 164
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":I
    :pswitch_f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/attsoftphone/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/IProgressListener;

    move-result-object v4

    .line 167
    .local v4, "_arg1":Lcom/sec/vsim/attsoftphone/IProgressListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v4}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->deregisterProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V

    .line 169
    goto :goto_0

    .line 154
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Lcom/sec/vsim/attsoftphone/IProgressListener;
    :pswitch_10
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/attsoftphone/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/IProgressListener;

    move-result-object v4

    .line 157
    .restart local v4    # "_arg1":Lcom/sec/vsim/attsoftphone/IProgressListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2, v4}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V

    .line 159
    goto :goto_0

    .line 144
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Lcom/sec/vsim/attsoftphone/IProgressListener;
    :pswitch_11
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getClientId(Ljava/lang/String;)I

    move-result v4

    .line 147
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    nop

    .line 322
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
